import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/router/routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/category_chip.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/restaurant_card.dart';
import '../../../core/widgets/section_header.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../../auth/providers/session_provider.dart';
import '../data/models/home_response.dart';
import '../providers/home_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeAsync = ref.watch(homeProvider);
    final user = ref.watch(sessionProvider).user;

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => ref.read(homeProvider.notifier).refresh(),
          color: AppColors.lilac500,
          child: homeAsync.when(
            loading: () => _buildSkeleton(context, user?.name),
            error: (err, _) => ErrorView(
              message: err.toString(),
              onRetry: () => ref.read(homeProvider.notifier).refresh(),
            ),
            data: (data) => _buildContent(context, ref, data, user?.name),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    HomeResponse data,
    String? userName,
  ) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      children: [
        _buildHeader(context, userName),
        const SizedBox(height: 16),
        _buildSearchBar(context),
        const SizedBox(height: 20),
        if (data.categories.isNotEmpty) ...[
          _buildCategories(context, data),
          const SizedBox(height: 24),
        ],
        if (data.nearby.isNotEmpty) ...[
          SectionHeader(
            title: 'Terdekat untukmu',
            actionLabel: 'Lihat Semua',
            onAction: () => context.push(Routes.search),
          ),
          const SizedBox(height: 8),
          _buildNearbyList(context, ref, data),
          const SizedBox(height: 24),
        ],
        SectionHeader(
          title: 'Rating tertinggi',
          actionLabel: 'Lihat Semua',
          onAction: () => context.push(Routes.search),
        ),
        const SizedBox(height: 8),
        _buildTopRatedList(context, ref, data),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, String? name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Halo, ${name ?? 'Pengguna'} 👋',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.ink,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Mau makan apa hari ini?',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.inkSoft,
              ),
            ),
          ],
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.lilac100,
          child: const Icon(
            Icons.restaurant_rounded,
            color: AppColors.lilac700,
            size: 20,
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(Routes.search),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.lilac200),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: const [
            Icon(Icons.search_rounded, color: AppColors.inkMuted, size: 22),
            SizedBox(width: 12),
            Text(
              'Cari kuliner, cafe, warung...',
              style: TextStyle(
                color: AppColors.inkMuted,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategories(BuildContext context, HomeResponse data) {
    return SizedBox(
      height: 38,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: data.categories.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final cat = data.categories[index];
          return CategoryChip(
            label: cat.name,
            iconUrl: cat.iconUrl,
            onTap: () => context.push('${Routes.search}?category=${cat.id}'),
          );
        },
      ),
    );
  }

  Widget _buildNearbyList(
    BuildContext context,
    WidgetRef ref,
    HomeResponse data,
  ) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: data.nearby.length,
        separatorBuilder: (_, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final restaurant = data.nearby[index];
          return RestaurantCard(
            restaurant: restaurant,
            variant: RestaurantCardVariant.compact,
            onTap: () => context.push('/restaurant/${restaurant.id}'),
            onFavoriteTap: () {
              ref.read(homeProvider.notifier).toggleFavorite(restaurant);
            },
          );
        },
      ),
    );
  }

  Widget _buildTopRatedList(
    BuildContext context,
    WidgetRef ref,
    HomeResponse data,
  ) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.topRated.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final restaurant = data.topRated[index];
        return RestaurantCard(
          restaurant: restaurant,
          variant: RestaurantCardVariant.list,
          onTap: () => context.push('/restaurant/${restaurant.id}'),
          onFavoriteTap: () {
            ref.read(homeProvider.notifier).toggleFavorite(restaurant);
          },
        );
      },
    );
  }

  Widget _buildSkeleton(BuildContext context, String? name) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      children: [
        _buildHeader(context, name),
        const SizedBox(height: 16),
        SkeletonBox(
          width: double.infinity,
          height: 48,
          borderRadius: BorderRadius.circular(16),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 38,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (_, _) => SkeletonBox(
              width: 80,
              height: 38,
              borderRadius: BorderRadius.circular(999),
            ),
          ),
        ),
        const SizedBox(height: 24),
        SkeletonBox(
          width: 150,
          height: 20,
          borderRadius: BorderRadius.circular(4),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (_, _) => SkeletonBox(
              width: 220,
              height: 240,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(height: 24),
        SkeletonBox(
          width: 150,
          height: 20,
          borderRadius: BorderRadius.circular(4),
        ),
        const SizedBox(height: 12),
        ...List.generate(
          3,
          (_) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: SkeletonBox(
              width: double.infinity,
              height: 110,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
