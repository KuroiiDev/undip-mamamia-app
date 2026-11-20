import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/empty_view.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/rating_stars.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../../restaurant/data/models/review_model.dart';
import '../providers/merchant_reviews_provider.dart';

class MerchantReviewsScreen extends ConsumerStatefulWidget {
  const MerchantReviewsScreen({super.key});

  @override
  ConsumerState<MerchantReviewsScreen> createState() =>
      _MerchantReviewsScreenState();
}

class _MerchantReviewsScreenState extends ConsumerState<MerchantReviewsScreen> {
  final _scrollController = ScrollController();

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
      ref.read(merchantReviewsProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(merchantReviewsProvider);

    return Scaffold(
      backgroundColor: AppColors.lilac50,
      appBar: AppBar(
        title: const Text('Ulasan Toko'),
        backgroundColor: Colors.white,
        foregroundColor: AppColors.ink,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      body: Builder(
        builder: (context) {
          if (state.isLoading && state.items.isEmpty) {
            return _buildSkeleton();
          }

          if (state.error != null && state.items.isEmpty) {
            return ErrorView(
              message: state.error!,
              onRetry: () =>
                  ref.read(merchantReviewsProvider.notifier).refresh(),
            );
          }

          if (state.items.isEmpty) {
            return const EmptyView(
              icon: Icons.rate_review_rounded,
              title: 'Belum Ada Ulasan',
              description:
                  'Toko Anda belum menerima ulasan dari pelanggan. Ulasan pelanggan akan muncul di sini.',
            );
          }

          return RefreshIndicator(
            onRefresh: () =>
                ref.read(merchantReviewsProvider.notifier).refresh(),
            color: AppColors.lilac500,
            child: ListView.separated(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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

                final review = state.items[index];
                return _ReviewItemCard(review: review);
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildSkeleton() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 4,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (_, _) => Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SkeletonBox(
                  width: 40,
                  height: 40,
                  borderRadius: BorderRadius.circular(20),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SkeletonBox(
                        width: 120,
                        height: 14,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      const SizedBox(height: 6),
                      SkeletonBox(
                        width: 80,
                        height: 12,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SkeletonBox(
              width: double.infinity,
              height: 14,
              borderRadius: BorderRadius.circular(4),
            ),
            const SizedBox(height: 6),
            SkeletonBox(
              width: 200,
              height: 14,
              borderRadius: BorderRadius.circular(4),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReviewItemCard extends StatelessWidget {
  const _ReviewItemCard({required this.review});

  final ReviewModel review;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.lilac100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: review.user?.avatarUrl != null
                    ? AppNetworkImage(
                        imageUrl: review.user!.avatarUrl,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        width: 40,
                        height: 40,
                        color: AppColors.lilac100,
                        child: const Icon(
                          Icons.person_rounded,
                          color: AppColors.lilac700,
                          size: 22,
                        ),
                      ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review.user?.name ?? 'Pengguna',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.ink,
                      ),
                    ),
                    if (review.createdLabel != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        review.createdLabel!,
                        style: const TextStyle(
                          fontSize: 11,
                          color: AppColors.inkSoft,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              RatingStars(
                rating: review.rating.toDouble(),
                size: 16,
              ),
            ],
          ),
          if (review.comment != null && review.comment!.isNotEmpty) ...[
            const SizedBox(height: 12),
            Text(
              review.comment!,
              style: const TextStyle(
                fontSize: 13,
                height: 1.4,
                color: AppColors.ink,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
