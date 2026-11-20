import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/empty_view.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/restaurant_card.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../data/models/search_filter.dart';
import '../providers/search_provider.dart';
import 'widgets/search_filter_sheet.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key, this.initialCategoryId});

  final String? initialCategoryId;

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final initialFilter = widget.initialCategoryId != null
          ? SearchFilter(categoryIds: [widget.initialCategoryId!])
          : const SearchFilter();
      ref.read(searchProvider.notifier).search(filter: initialFilter);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(searchProvider.notifier).loadMore();
    }
  }

  void _onQueryChanged(String query) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 400), () {
      final currentFilter = ref.read(searchProvider).filter;
      ref
          .read(searchProvider.notifier)
          .search(filter: currentFilter.copyWith(query: query));
    });
  }

  void _showFilterSheet() {
    final currentFilter = ref.read(searchProvider).filter;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => SearchFilterSheet(
        initialFilter: currentFilter,
        onApply: (newFilter) {
          ref.read(searchProvider.notifier).search(filter: newFilter);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(searchProvider);
    final hasActiveFilter = searchState.filter.categoryIds.isNotEmpty ||
        searchState.filter.priceLevel != null ||
        searchState.filter.minRating != null ||
        searchState.filter.openNow;

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: AppColors.ink),
          onPressed: () => context.pop(),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: TextField(
            controller: _searchController,
            autofocus: widget.initialCategoryId == null,
            onChanged: _onQueryChanged,
            decoration: InputDecoration(
              hintText: 'Cari kuliner, cafe, warung...',
              hintStyle: const TextStyle(color: AppColors.inkMuted, fontSize: 14),
              prefixIcon: const Icon(Icons.search_rounded, color: AppColors.inkMuted),
              suffixIcon: _searchController.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.close_rounded, size: 20),
                      onPressed: () {
                        _searchController.clear();
                        _onQueryChanged('');
                      },
                    )
                  : null,
              filled: true,
              fillColor: AppColors.surface,
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.tune_rounded, color: AppColors.ink),
                onPressed: _showFilterSheet,
              ),
              if (hasActiveFilter)
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: AppColors.lilac500,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: _buildBody(searchState),
    );
  }

  Widget _buildBody(SearchState state) {
    if (state.isLoading) {
      return _buildSkeleton();
    }

    if (state.error != null) {
      return ErrorView(
        message: state.error!,
        onRetry: () => ref.read(searchProvider.notifier).search(),
      );
    }

    if (state.items.isEmpty) {
      return const EmptyView(
        title: 'Tidak ada hasil',
        description: 'Coba ubah kata kunci atau sesuaikan filter pencarianmu.',
        icon: Icons.search_off_rounded,
      );
    }

    return ListView.separated(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      itemCount: state.items.length + (state.isLoadingMore ? 1 : 0),
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        if (index == state.items.length) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: CircularProgressIndicator(),
            ),
          );
        }

        final restaurant = state.items[index];
        return RestaurantCard(
          restaurant: restaurant,
          variant: RestaurantCardVariant.list,
          onTap: () => context.push('/restaurant/${restaurant.id}'),
          onFavoriteTap: () {
            ref.read(searchProvider.notifier).toggleFavorite(restaurant);
          },
        );
      },
    );
  }

  Widget _buildSkeleton() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 6,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (_, _) => SkeletonBox(
        width: double.infinity,
        height: 110,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
