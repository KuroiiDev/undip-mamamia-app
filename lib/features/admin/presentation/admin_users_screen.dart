import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/confirm_dialog.dart';
import '../../../core/widgets/empty_view.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../../../core/widgets/status_badge.dart';
import '../data/models/admin_user_model.dart';
import '../providers/admin_users_provider.dart';

class AdminUsersScreen extends ConsumerStatefulWidget {
  const AdminUsersScreen({super.key});

  @override
  ConsumerState<AdminUsersScreen> createState() => _AdminUsersScreenState();
}

class _AdminUsersScreenState extends ConsumerState<AdminUsersScreen> {
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
      ref.read(adminUsersProvider.notifier).loadMore();
    }
  }

  void _onSearchChanged(String query) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      ref.read(adminUsersProvider.notifier).setQuery(query.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adminUsersProvider);

    return Scaffold(
      backgroundColor: AppColors.lilac50,
      appBar: AppBar(
        title: const Text('Kelola Pengguna'),
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
                    hintText: 'Cari nama atau email pengguna...',
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
                Row(
                  children: [
                    // Role filters
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _FilterChip(
                              label: 'Semua Role',
                              isSelected: state.roleFilter == null,
                              onTap: () => ref.read(adminUsersProvider.notifier).setRoleFilter(null),
                            ),
                            const SizedBox(width: 8),
                            _FilterChip(
                              label: 'User',
                              isSelected: state.roleFilter == 'user',
                              onTap: () => ref.read(adminUsersProvider.notifier).setRoleFilter('user'),
                            ),
                            const SizedBox(width: 8),
                            _FilterChip(
                              label: 'Merchant',
                              isSelected: state.roleFilter == 'merchant',
                              onTap: () => ref.read(adminUsersProvider.notifier).setRoleFilter('merchant'),
                            ),
                            const SizedBox(width: 12),
                            Container(width: 1, height: 20, color: AppColors.lilac200),
                            const SizedBox(width: 12),
                            // Status filters
                            _FilterChip(
                              label: 'Aktif',
                              isSelected: state.statusFilter == 'active',
                              onTap: () {
                                final next = state.statusFilter == 'active' ? null : 'active';
                                ref.read(adminUsersProvider.notifier).setStatusFilter(next);
                              },
                            ),
                            const SizedBox(width: 8),
                            _FilterChip(
                              label: 'Diblokir',
                              isSelected: state.statusFilter == 'banned',
                              onTap: () {
                                final next = state.statusFilter == 'banned' ? null : 'banned';
                                ref.read(adminUsersProvider.notifier).setStatusFilter(next);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Users list
          Expanded(
            child: Builder(
              builder: (context) {
                if (state.isLoading && state.items.isEmpty) {
                  return _buildSkeleton();
                }

                if (state.error != null && state.items.isEmpty) {
                  return ErrorView(
                    message: state.error!,
                    onRetry: () => ref.read(adminUsersProvider.notifier).refresh(),
                  );
                }

                if (state.items.isEmpty) {
                  return const EmptyView(
                    icon: Icons.people_rounded,
                    title: 'Tidak Ada Pengguna',
                    description: 'Tidak ada data pengguna yang cocok dengan kriteria filter saat ini.',
                  );
                }

                return RefreshIndicator(
                  onRefresh: () => ref.read(adminUsersProvider.notifier).refresh(),
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

                      final user = state.items[index];
                      return _UserCard(
                        user: user,
                        onBan: () async {
                          final reason = await ConfirmDialog.show(
                            context,
                            title: 'Blokir Pengguna',
                            message: 'Pengguna "${user.name}" tidak akan bisa masuk ke aplikasi.',
                            confirmLabel: 'Blokir',
                            isDestructive: true,
                            requireReason: true,
                            reasonHint: 'Alasan pemblokiran (wajib)',
                          );
                          if (reason != null && reason.isNotEmpty) {
                            ref.read(adminUsersProvider.notifier).banUser(user.id, reason);
                          }
                        },
                        onUnban: () async {
                          final confirmed = await ConfirmDialog.show(
                            context,
                            title: 'Aktifkan Pengguna',
                            message: 'Aktifkan kembali akun "${user.name}"?',
                            confirmLabel: 'Aktifkan',
                          );
                          if (confirmed != null) {
                            ref.read(adminUsersProvider.notifier).unbanUser(user.id);
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
        child: Row(
          children: [
            SkeletonBox(width: 44, height: 44, borderRadius: BorderRadius.circular(22)),
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

class _UserCard extends StatelessWidget {
  const _UserCard({
    required this.user,
    required this.onBan,
    required this.onUnban,
  });

  final AdminUserModel user;
  final VoidCallback onBan;
  final VoidCallback onUnban;

  @override
  Widget build(BuildContext context) {
    final isBanned = user.status == 'banned';
    final isAdmin = user.role == 'admin';

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
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: user.avatarUrl != null
                    ? AppNetworkImage(
                        imageUrl: user.avatarUrl,
                        width: 44,
                        height: 44,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        width: 44,
                        height: 44,
                        color: AppColors.lilac100,
                        child: const Icon(Icons.person_rounded, color: AppColors.lilac700),
                      ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            user.name,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: AppColors.ink,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: user.role == 'merchant' ? AppColors.lilac100 : AppColors.mint,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            user.role.toUpperCase(),
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: user.role == 'merchant' ? AppColors.lilac700 : AppColors.ink,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      user.email,
                      style: const TextStyle(fontSize: 12, color: AppColors.inkSoft),
                    ),
                  ],
                ),
              ),
              if (isBanned)
                const StatusBadge.banned(label: 'Diblokir')
              else
                const StatusBadge.active(label: 'Aktif'),
            ],
          ),
          if (isBanned && user.bannedReason != null && user.bannedReason!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.lilac100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Alasan: ${user.bannedReason}',
                style: const TextStyle(fontSize: 11, color: AppColors.error),
              ),
            ),
          ],
          if (!isAdmin) ...[
            const SizedBox(height: 8),
            const Divider(height: 1, color: AppColors.lilac100),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (isBanned)
                  TextButton.icon(
                    onPressed: onUnban,
                    icon: const Icon(Icons.check_circle_outline_rounded, size: 16, color: AppColors.success),
                    label: const Text('Aktifkan Kembali', style: TextStyle(fontSize: 12, color: AppColors.success)),
                  )
                else
                  TextButton.icon(
                    onPressed: onBan,
                    icon: const Icon(Icons.block_rounded, size: 16, color: AppColors.error),
                    label: const Text('Blokir User', style: TextStyle(fontSize: 12, color: AppColors.error)),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
