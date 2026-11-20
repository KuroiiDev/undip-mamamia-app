import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/router/routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/confirm_dialog.dart';
import '../../../core/widgets/empty_view.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/rating_stars.dart';
import '../../../core/widgets/section_header.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../../../core/widgets/status_badge.dart';
import '../../auth/providers/session_provider.dart';
import '../data/models/merchant_dashboard_model.dart';
import '../providers/merchant_dashboard_provider.dart';

class MerchantDashboardScreen extends ConsumerWidget {
  const MerchantDashboardScreen({super.key});

  Future<void> _logout(BuildContext context, WidgetRef ref) async {
    final confirmed = await ConfirmDialog.show(
      context,
      title: 'Keluar Akun',
      message: 'Apakah kamu yakin ingin keluar dari akun Merchant?',
      confirmLabel: 'Keluar',
      isDestructive: true,
    );

    if (confirmed != null) {
      await ref.read(sessionProvider.notifier).logout();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardAsync = ref.watch(merchantDashboardProvider);
    final user = ref.watch(sessionProvider).user;

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: Text(
          'Dashboard Mitra',
          style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.ink),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded, color: AppColors.error),
            onPressed: () => _logout(context, ref),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(merchantDashboardProvider.notifier).refresh(),
        color: AppColors.lilac500,
        child: dashboardAsync.when(
          loading: () => _buildSkeleton(),
          error: (err, _) => ErrorView(
            message: err.toString(),
            onRetry: () => ref.read(merchantDashboardProvider.notifier).refresh(),
          ),
          data: (data) => _buildContent(context, data, user?.name),
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    MerchantDashboardResponse data,
    String? userName,
  ) {
    final store = data.store;

    if (store == null) {
      return ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(height: 40),
          Center(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: AppColors.lilac100,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.storefront_rounded,
                size: 64,
                color: AppColors.lilac700,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Selamat Datang di Mamamia Mitra!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.ink,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          const Text(
            'Kamu belum memiliki toko terdaftar. Buat tokomu sekarang agar pelanggan dapat menemukan hidangan lezatmu!',
            style: TextStyle(fontSize: 14, color: AppColors.inkSoft, height: 1.5),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          FilledButton.icon(
            onPressed: () => context.go(Routes.merchantStore),
            icon: const Icon(Icons.add_business_rounded),
            label: const Text('Buat Toko Sekarang'),
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
          ),
        ],
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Store Status Header
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        store.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.ink,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    _buildStatusBadge(store.status),
                  ],
                ),
                if (store.status == 'pending') ...[
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.warning.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.info_outline_rounded, size: 16, color: AppColors.warning),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Toko sedang menunggu persetujuan admin sebelum dapat tampil di pencarian publik.',
                            style: TextStyle(fontSize: 12, color: AppColors.ink),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                if (store.status == 'banned' && store.statusReason != null) ...[
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.error.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Alasan penonaktifan: ${store.statusReason}',
                      style: const TextStyle(fontSize: 12, color: AppColors.error),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Quick Stats Row
        Row(
          children: [
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.star_rounded, size: 20, color: AppColors.star),
                          SizedBox(width: 4),
                          Text('Rating', style: TextStyle(color: AppColors.inkSoft, fontSize: 13)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        store.ratingLabel,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppColors.ink,
                        ),
                      ),
                      Text(
                        '${store.reviewCount} ulasan',
                        style: const TextStyle(fontSize: 11, color: AppColors.inkMuted),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.restaurant_menu_rounded, size: 20, color: AppColors.lilac700),
                          SizedBox(width: 4),
                          Text('Menu', style: TextStyle(color: AppColors.inkSoft, fontSize: 13)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${store.menuCount}',
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppColors.ink,
                        ),
                      ),
                      const Text(
                        'item terdaftar',
                        style: TextStyle(fontSize: 11, color: AppColors.inkMuted),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),

        // Latest Reviews
        SectionHeader(
          title: 'Ulasan Terbaru',
          actionLabel: data.latestReviews.isNotEmpty ? 'Lihat Semua' : null,
          onAction: () => context.go(Routes.merchantReviews),
        ),
        const SizedBox(height: 8),
        if (data.latestReviews.isEmpty)
          const EmptyView(
            title: 'Belum ada ulasan',
            description: 'Ulasan dari pembeli akan muncul di sini setelah toko aktif.',
            icon: Icons.rate_review_outlined,
          )
        else
          ...data.latestReviews.map((r) {
            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r.user?.name ?? 'Pengguna',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.ink,
                          ),
                        ),
                        RatingStars(rating: r.rating.toDouble(), size: 14),
                      ],
                    ),
                    if (r.comment != null && r.comment!.isNotEmpty) ...[
                      const SizedBox(height: 6),
                      Text(
                        r.comment!,
                        style: const TextStyle(color: AppColors.inkSoft, fontSize: 13),
                      ),
                    ],
                    if (r.createdLabel != null) ...[
                      const SizedBox(height: 6),
                      Text(
                        r.createdLabel!,
                        style: const TextStyle(fontSize: 11, color: AppColors.inkMuted),
                      ),
                    ],
                  ],
                ),
              ),
            );
          }),
      ],
    );
  }

  Widget _buildStatusBadge(String status) {
    return switch (status) {
      'active' => const StatusBadge.active(label: 'Aktif'),
      'banned' => const StatusBadge.banned(label: 'Diblokir'),
      _ => const StatusBadge.pending(label: 'Menunggu Persetujuan'),
    };
  }

  Widget _buildSkeleton() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SkeletonBox(width: double.infinity, height: 100, borderRadius: BorderRadius.circular(16)),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: SkeletonBox(height: 90, borderRadius: BorderRadius.circular(16))),
            const SizedBox(width: 12),
            Expanded(child: SkeletonBox(height: 90, borderRadius: BorderRadius.circular(16))),
          ],
        ),
        const SizedBox(height: 24),
        SkeletonBox(width: 150, height: 20, borderRadius: BorderRadius.circular(4)),
        const SizedBox(height: 12),
        SkeletonBox(width: double.infinity, height: 80, borderRadius: BorderRadius.circular(16)),
      ],
    );
  }
}
