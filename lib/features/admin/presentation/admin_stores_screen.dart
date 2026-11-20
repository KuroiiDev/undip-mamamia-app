import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/confirm_dialog.dart';
import '../../../core/widgets/empty_view.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/rating_stars.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../../../core/widgets/status_badge.dart';
import '../data/models/admin_store_model.dart';
import '../providers/admin_stores_provider.dart';

class AdminStoresScreen extends ConsumerStatefulWidget {
  const AdminStoresScreen({super.key});

  @override
  ConsumerState<AdminStoresScreen> createState() => _AdminStoresScreenState();
}

class _AdminStoresScreenState extends ConsumerState<AdminStoresScreen> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(adminStoresProvider.notifier).loadMore();
    }
  }

  void _onSearchChanged(String query) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      ref.read(adminStoresProvider.notifier).setQuery(query.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adminStoresProvider);

    return Scaffold(
      backgroundColor: AppColors.lilac50,
      appBar: AppBar(
        title: const Text('Kelola Toko'),
        backgroundColor: Colors.white,
        foregroundColor: AppColors.ink,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      body: Column(
        children: [
          // Search & Filter header
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  onChanged: _onSearchChanged,
                  decoration: InputDecoration(
                    hintText: 'Cari nama toko, alamat, atau pemilik...',
                    prefixIcon: const Icon(Icons.search_rounded, color: AppColors.inkMuted),
                    filled: true,
                    fillColor: AppColors.lilac100,
                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _FilterChip(
                        label: 'Semua',
                        isSelected: state.statusFilter == null,
                        onTap: () => ref.read(adminStoresProvider.notifier).setStatusFilter(null),
                      ),
                      const SizedBox(width: 8),
                      _FilterChip(
                        label: 'Menunggu',
                        isSelected: state.statusFilter == 'pending',
                        onTap: () => ref.read(adminStoresProvider.notifier).setStatusFilter('pending'),
                      ),
                      const SizedBox(width: 8),
                      _FilterChip(
                        label: 'Aktif',
                        isSelected: state.statusFilter == 'active',
                        onTap: () => ref.read(adminStoresProvider.notifier).setStatusFilter('active'),
                      ),
                      const SizedBox(width: 8),
                      _FilterChip(
                        label: 'Diblokir',
                        isSelected: state.statusFilter == 'banned',
                        onTap: () => ref.read(adminStoresProvider.notifier).setStatusFilter('banned'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Store list
          Expanded(
            child: Builder(
              builder: (context) {
                if (state.isLoading && state.items.isEmpty) {
                  return _buildSkeleton();
                }

                if (state.error != null && state.items.isEmpty) {
                  return ErrorView(
                    message: state.error!,
                    onRetry: () => ref.read(adminStoresProvider.notifier).refresh(),
                  );
                }

                if (state.items.isEmpty) {
                  return const EmptyView(
                    icon: Icons.storefront_rounded,
                    title: 'Tidak Ada Toko',
                    description: 'Tidak ada data toko yang cocok dengan kriteria filter saat ini.',
                  );
                }

                return RefreshIndicator(
                  onRefresh: () => ref.read(adminStoresProvider.notifier).refresh(),
                  color: AppColors.lilac500,
                  child: ListView.separated(
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

                      final store = state.items[index];
                      return _StoreCard(
                        store: store,
                        onApprove: () async {
                          final confirmed = await ConfirmDialog.show(
                            context,
                            title: 'Setujui Toko',
                            message: 'Setujui toko "${store.name}" agar aktif di aplikasi?',
                            confirmLabel: 'Setujui',
                          );
                          if (confirmed != null) {
                            ref.read(adminStoresProvider.notifier).approveStore(store.id);
                          }
                        },
                        onBan: () async {
                          final reason = await ConfirmDialog.show(
                            context,
                            title: 'Blokir Toko',
                            message: 'Toko "${store.name}" akan dinonaktifkan dari aplikasi.',
                            confirmLabel: 'Blokir',
                            isDestructive: true,
                            requireReason: true,
                            reasonHint: 'Alasan pemblokiran (wajib)',
                          );
                          if (reason != null && reason.isNotEmpty) {
                            ref.read(adminStoresProvider.notifier).banStore(store.id, reason);
                          }
                        },
                        onDelete: () async {
                          final reason = await ConfirmDialog.show(
                            context,
                            title: 'Hapus Toko',
                            message: 'Toko "${store.name}" akan dihapus permanen dari sistem.',
                            confirmLabel: 'Hapus',
                            isDestructive: true,
                            requireReason: true,
                            reasonHint: 'Alasan penghapusan (wajib)',
                          );
                          if (reason != null && reason.isNotEmpty) {
                            ref.read(adminStoresProvider.notifier).deleteStore(store.id, reason);
                          }
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
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
                SkeletonBox(width: 56, height: 56, borderRadius: BorderRadius.circular(12)),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SkeletonBox(width: 140, height: 16, borderRadius: BorderRadius.circular(4)),
                      const SizedBox(height: 6),
                      SkeletonBox(width: 100, height: 12, borderRadius: BorderRadius.circular(4)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SkeletonBox(width: double.infinity, height: 14, borderRadius: BorderRadius.circular(4)),
          ],
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.lilac500 : AppColors.lilac100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : AppColors.inkSoft,
          ),
        ),
      ),
    );
  }
}

class _StoreCard extends StatelessWidget {
  const _StoreCard({
    required this.store,
    required this.onApprove,
    required this.onBan,
    required this.onDelete,
  });

  final AdminStoreItemModel store;
  final VoidCallback onApprove;
  final VoidCallback onBan;
  final VoidCallback onDelete;

  Widget _buildStatusBadge(String status) {
    return switch (status) {
      'active' => const StatusBadge.active(label: 'Aktif'),
      'banned' => const StatusBadge.banned(label: 'Diblokir'),
      _ => const StatusBadge.pending(label: 'Menunggu'),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.lilac100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: store.coverUrl != null
                    ? AppNetworkImage(
                        imageUrl: store.coverUrl,
                        width: 56,
                        height: 56,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        width: 56,
                        height: 56,
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
                    if (store.owner != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        'Pemilik: ${store.owner!.name} (${store.owner!.email})',
                        style: const TextStyle(fontSize: 11, color: AppColors.inkSoft),
                      ),
                    ],
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
              _buildStatusBadge(store.status),
            ],
          ),
          if (store.ratingCount > 0) ...[
            const SizedBox(height: 8),
            Row(
              children: [
                RatingStars(rating: store.ratingAvg, size: 14),
                const SizedBox(width: 6),
                Text(
                  '${store.ratingAvg.toStringAsFixed(1)} (${store.ratingCount} ulasan)',
                  style: const TextStyle(fontSize: 11, color: AppColors.inkSoft),
                ),
              ],
            ),
          ],
          if (store.statusReason != null && store.statusReason!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.lilac100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Alasan: ${store.statusReason}',
                style: const TextStyle(fontSize: 11, color: AppColors.error),
              ),
            ),
          ],
          const SizedBox(height: 12),
          const Divider(height: 1, color: AppColors.lilac100),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (store.status == 'pending')
                TextButton.icon(
                  onPressed: onApprove,
                  icon: const Icon(Icons.check_circle_outline_rounded, size: 16, color: AppColors.success),
                  label: const Text('Setujui', style: TextStyle(fontSize: 12, color: AppColors.success)),
                ),
              if (store.status != 'banned')
                TextButton.icon(
                  onPressed: onBan,
                  icon: const Icon(Icons.block_rounded, size: 16, color: AppColors.warning),
                  label: const Text('Blokir', style: TextStyle(fontSize: 12, color: AppColors.warning)),
                ),
              TextButton.icon(
                onPressed: onDelete,
                icon: const Icon(Icons.delete_outline_rounded, size: 16, color: AppColors.error),
                label: const Text('Hapus', style: TextStyle(fontSize: 12, color: AppColors.error)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
