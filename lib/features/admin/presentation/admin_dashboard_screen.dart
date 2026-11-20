import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/confirm_dialog.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/section_header.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../../auth/providers/session_provider.dart';
import '../data/models/admin_dashboard_model.dart';
import '../providers/admin_dashboard_provider.dart';

class AdminDashboardScreen extends ConsumerWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardAsync = ref.watch(adminDashboardProvider);

    return Scaffold(
      backgroundColor: AppColors.lilac50,
      appBar: AppBar(
        title: const Text('Dashboard Admin'),
        backgroundColor: Colors.white,
        foregroundColor: AppColors.ink,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded, color: AppColors.error),
            tooltip: 'Logout',
            onPressed: () async {
              final confirmed = await ConfirmDialog.show(
                context,
                title: 'Konfirmasi Logout',
                message: 'Apakah kamu yakin ingin keluar dari akun admin?',
                confirmLabel: 'Keluar',
                isDestructive: true,
              );
              if (confirmed != null) {
                ref.read(sessionProvider.notifier).logout();
              }
            },
          ),
        ],
      ),
      body: dashboardAsync.when(
        loading: () => _buildSkeleton(),
        error: (err, _) => ErrorView(
          message: err.toString(),
          onRetry: () => ref.read(adminDashboardProvider.notifier).refresh(),
        ),
        data: (data) => RefreshIndicator(
          onRefresh: () => ref.read(adminDashboardProvider.notifier).refresh(),
          color: AppColors.lilac500,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Metric cards grid
              Row(
                children: [
                  Expanded(
                    child: _MetricCard(
                      title: 'Total Toko',
                      value: data.storeCount.toString(),
                      icon: Icons.storefront_rounded,
                      color: AppColors.lilac500,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _MetricCard(
                      title: 'Total User',
                      value: data.userCount.toString(),
                      icon: Icons.people_rounded,
                      color: AppColors.sky,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _MetricCard(
                      title: 'Menunggu Persetujuan',
                      value: data.pendingCount.toString(),
                      icon: Icons.pending_actions_rounded,
                      color: AppColors.warning,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _MetricCard(
                      title: 'Laporan Terbuka',
                      value: data.openReportCount.toString(),
                      icon: Icons.report_problem_rounded,
                      color: AppColors.peach,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Pending stores section
              const SectionHeader(title: 'Antrean Toko Menunggu'),
              const SizedBox(height: 8),

              if (data.pendingStores.isEmpty)
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.lilac100),
                  ),
                  child: const Center(
                    child: Text(
                      'Tidak ada toko yang menunggu persetujuan.',
                      style: TextStyle(color: AppColors.inkSoft),
                    ),
                  ),
                )
              else
                ...data.pendingStores.map(
                  (store) => _PendingStoreCard(
                    store: store,
                    onApprove: () async {
                      final confirmed = await ConfirmDialog.show(
                        context,
                        title: 'Setujui Toko',
                        message:
                            'Apakah kamu yakin ingin menyetujui "${store.name}" agar aktif dan tampil di aplikasi?',
                        confirmLabel: 'Setujui',
                      );
                      if (confirmed != null) {
                        ref
                            .read(adminDashboardProvider.notifier)
                            .approveStore(store.id);
                      }
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkeleton() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            Expanded(child: SkeletonBox(height: 90, borderRadius: BorderRadius.circular(16))),
            const SizedBox(width: 12),
            Expanded(child: SkeletonBox(height: 90, borderRadius: BorderRadius.circular(16))),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: SkeletonBox(height: 90, borderRadius: BorderRadius.circular(16))),
            const SizedBox(width: 12),
            Expanded(child: SkeletonBox(height: 90, borderRadius: BorderRadius.circular(16))),
          ],
        ),
        const SizedBox(height: 24),
        SkeletonBox(width: 180, height: 20, borderRadius: BorderRadius.circular(4)),
        const SizedBox(height: 12),
        SkeletonBox(width: double.infinity, height: 100, borderRadius: BorderRadius.circular(16)),
        const SizedBox(height: 12),
        SkeletonBox(width: double.infinity, height: 100, borderRadius: BorderRadius.circular(16)),
      ],
    );
  }
}

class _MetricCard extends StatelessWidget {
  const _MetricCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  final String title;
  final String value;
  final IconData icon;
  final Color color;

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: color, size: 22),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.ink,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.inkSoft,
            ),
          ),
        ],
      ),
    );
  }
}

class _PendingStoreCard extends StatelessWidget {
  const _PendingStoreCard({
    required this.store,
    required this.onApprove,
  });

  final AdminPendingStoreModel store;
  final VoidCallback onApprove;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.lilac100),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: store.coverUrl != null
                ? AppNetworkImage(
                    imageUrl: store.coverUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  )
                : Container(
                    width: 60,
                    height: 60,
                    color: AppColors.lilac100,
                    child: const Icon(Icons.storefront_rounded, color: AppColors.lilac700),
                  ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  store.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.ink,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Pemilik: ${store.ownerName}',
                  style: const TextStyle(fontSize: 12, color: AppColors.inkSoft),
                ),
                const SizedBox(height: 2),
                Text(
                  store.address,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 11, color: AppColors.inkMuted),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: onApprove,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.success,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 0,
            ),
            child: const Text('Setujui', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
