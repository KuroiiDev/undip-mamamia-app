import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/rating_stars.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../../../core/widgets/status_badge.dart';
import '../data/models/restaurant_detail_model.dart';
import '../providers/restaurant_detail_provider.dart';
import 'widgets/restaurant_info_tab.dart';
import 'widgets/restaurant_menus_tab.dart';
import 'widgets/restaurant_reviews_tab.dart';
import 'widgets/review_form_sheet.dart';

class RestaurantDetailScreen extends ConsumerStatefulWidget {
  const RestaurantDetailScreen({super.key, required this.id});

  final String id;

  @override
  ConsumerState<RestaurantDetailScreen> createState() =>
      _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState
    extends ConsumerState<RestaurantDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _openMaps(double lat, double lng, String name) async {
    final uri = Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lng');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _callPhone(String? phone) async {
    if (phone == null || phone.isEmpty) return;
    final uri = Uri.parse('tel:$phone');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  void _showReviewSheet(RestaurantDetailModel detail) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => ReviewFormSheet(
        restaurantId: detail.id,
        existingReview: detail.myReview,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final detailAsync =
        ref.watch(restaurantDetailProvider(widget.id));

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: detailAsync.when(
        loading: () => _buildSkeleton(context),
        error: (err, _) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_rounded, color: AppColors.ink),
              onPressed: () => context.pop(),
            ),
          ),
          body: ErrorView(
            message: err.toString(),
            onRetry: () => ref.invalidate(
              restaurantDetailProvider(widget.id),
            ),
          ),
        ),
        data: (detail) => _buildDetail(context, detail),
      ),
    );
  }

  Widget _buildDetail(BuildContext context, RestaurantDetailModel detail) {
    return Column(
      children: [
        Expanded(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 240,
                  pinned: true,
                  backgroundColor: Colors.white,
                  leading: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withValues(alpha: 0.9),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_rounded, color: AppColors.ink, size: 20),
                        onPressed: () => context.pop(),
                      ),
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: CircleAvatar(
                        backgroundColor: Colors.white.withValues(alpha: 0.9),
                        child: IconButton(
                          icon: Icon(
                            detail.isFavorited
                                ? Icons.favorite_rounded
                                : Icons.favorite_border_rounded,
                            color: detail.isFavorited
                                ? AppColors.error
                                : AppColors.inkSoft,
                            size: 20,
                          ),
                          onPressed: () {
                            ref
                                .read(restaurantDetailProvider(widget.id).notifier)
                                .toggleFavorite();
                          },
                        ),
                      ),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: detail.coverUrl != null
                        ? AppNetworkImage(
                            imageUrl: detail.coverUrl,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            color: AppColors.lilac100,
                            child: const Center(
                              child: Icon(
                                Icons.restaurant_rounded,
                                size: 64,
                                color: AppColors.lilac300,
                              ),
                            ),
                          ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                detail.name,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.ink,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            detail.isOpenNow
                                ? const StatusBadge.open()
                                : const StatusBadge.closed(),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            RatingStars(rating: double.tryParse(detail.ratingLabel) ?? 0, size: 16),
                            const SizedBox(width: 6),
                            Text(
                              detail.ratingLabel,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: AppColors.ink,
                              ),
                            ),
                            Text(
                              ' (${detail.ratingCount} ulasan)',
                              style: const TextStyle(fontSize: 13, color: AppColors.inkSoft),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '•  ${detail.priceLabel}',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: AppColors.inkSoft,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () =>
                                    _openMaps(detail.lat, detail.lng, detail.name),
                                icon: const Icon(Icons.directions_rounded, size: 18),
                                label: const Text('Petunjuk Arah'),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: AppColors.lilac700,
                                  side: const BorderSide(color: AppColors.lilac300),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                            if (detail.phone != null && detail.phone!.isNotEmpty) ...[
                              const SizedBox(width: 12),
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () => _callPhone(detail.phone),
                                  icon: const Icon(Icons.phone_rounded, size: 18),
                                  label: const Text('Telepon'),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: AppColors.lilac700,
                                    side: const BorderSide(color: AppColors.lilac300),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      controller: _tabController,
                      labelColor: AppColors.lilac700,
                      unselectedLabelColor: AppColors.inkMuted,
                      indicatorColor: AppColors.lilac700,
                      indicatorWeight: 3,
                      tabs: const [
                        Tab(text: 'Info'),
                        Tab(text: 'Menu'),
                        Tab(text: 'Ulasan'),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                RestaurantInfoTab(detail: detail),
                RestaurantMenusTab(restaurantId: detail.id),
                RestaurantReviewsTab(restaurantId: detail.id),
              ],
            ),
          ),
        ),

        // Bottom action bar
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: SafeArea(
            top: false,
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: FilledButton.icon(
                onPressed: () => _showReviewSheet(detail),
                icon: Icon(
                  detail.myReview != null
                      ? Icons.edit_note_rounded
                      : Icons.rate_review_rounded,
                  size: 20,
                ),
                label: Text(
                  detail.myReview != null ? 'Ubah Ulasan Saya' : 'Tulis Ulasan',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSkeleton(BuildContext context) {
    return Column(
      children: [
        SkeletonBox(width: double.infinity, height: 240, borderRadius: BorderRadius.circular(0)),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeletonBox(width: 200, height: 24, borderRadius: BorderRadius.circular(4)),
              const SizedBox(height: 12),
              SkeletonBox(width: 150, height: 16, borderRadius: BorderRadius.circular(4)),
              const SizedBox(height: 16),
              SkeletonBox(width: double.infinity, height: 44, borderRadius: BorderRadius.circular(12)),
            ],
          ),
        ),
      ],
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
