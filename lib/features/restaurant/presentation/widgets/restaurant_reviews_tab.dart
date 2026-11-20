import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_network_image.dart';
import '../../../../core/widgets/empty_view.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/rating_stars.dart';
import '../../../../core/widgets/skeleton_box.dart';
import '../../providers/restaurant_detail_provider.dart';

class RestaurantReviewsTab extends ConsumerStatefulWidget {
  const RestaurantReviewsTab({super.key, required this.restaurantId});

  final String restaurantId;

  @override
  ConsumerState<RestaurantReviewsTab> createState() =>
      _RestaurantReviewsTabState();
}

class _RestaurantReviewsTabState extends ConsumerState<RestaurantReviewsTab> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref
          .read(restaurantReviewsProvider(widget.restaurantId).notifier)
          .loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final reviewsState =
        ref.watch(restaurantReviewsProvider(widget.restaurantId));

    if (reviewsState.isLoading) {
      return _buildSkeleton();
    }

    if (reviewsState.error != null) {
      return ErrorView(
        message: reviewsState.error!,
        onRetry: () => ref
            .read(restaurantReviewsProvider(widget.restaurantId).notifier)
            .refresh(),
      );
    }

    if (reviewsState.items.isEmpty) {
      return const EmptyView(
        title: 'Belum ada ulasan',
        description: 'Jadilah orang pertama yang mengulas restoran ini!',
        icon: Icons.rate_review_outlined,
      );
    }

    return ListView.separated(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      itemCount: reviewsState.items.length + (reviewsState.isLoadingMore ? 1 : 0),
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        if (index == reviewsState.items.length) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: CircularProgressIndicator(),
            ),
          );
        }

        final review = reviewsState.items[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: AppColors.lilac100,
                      child: review.user?.avatarUrl != null
                          ? ClipOval(
                              child: AppNetworkImage(
                                imageUrl: review.user!.avatarUrl,
                                width: 36,
                                height: 36,
                              ),
                            )
                          : const Icon(
                              Icons.person_rounded,
                              size: 20,
                              color: AppColors.lilac700,
                            ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                review.user?.name ?? 'Pengguna',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.ink,
                                ),
                              ),
                              if (review.isMine) ...[
                                const SizedBox(width: 6),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.lilac100,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Text(
                                    'Ulasan Saya',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.lilac700,
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                          if (review.createdLabel != null)
                            Text(
                              review.createdLabel!,
                              style: const TextStyle(
                                fontSize: 11,
                                color: AppColors.inkMuted,
                              ),
                            ),
                        ],
                      ),
                    ),
                    RatingStars(
                      rating: review.rating.toDouble(),
                      size: 14,
                    ),
                  ],
                ),
                if (review.comment != null && review.comment!.isNotEmpty) ...[
                  const SizedBox(height: 10),
                  Text(
                    review.comment!,
                    style: const TextStyle(
                      fontSize: 13,
                      color: AppColors.inkSoft,
                      height: 1.4,
                    ),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSkeleton() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 4,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (_, _) => SkeletonBox(
        width: double.infinity,
        height: 90,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
