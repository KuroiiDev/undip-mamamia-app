import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/empty_view.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/section_header.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../data/models/merchant_menu_item_model.dart';
import '../providers/merchant_menus_provider.dart';
import 'widgets/menu_form_sheet.dart';

class MerchantMenusScreen extends ConsumerWidget {
  const MerchantMenusScreen({super.key});

  void _openForm(BuildContext context, [MerchantMenuItemModel? item]) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => MenuFormSheet(existingItem: item),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menusAsync = ref.watch(merchantMenusProvider);

    return Scaffold(
      backgroundColor: AppColors.lilac50,
      appBar: AppBar(
        title: const Text('Daftar Menu'),
        backgroundColor: Colors.white,
        foregroundColor: AppColors.ink,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openForm(context),
        backgroundColor: AppColors.lilac500,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.add_rounded),
        label: const Text('Tambah Menu'),
      ),
      body: menusAsync.when(
        loading: () => _buildSkeleton(),
        error: (err, _) => ErrorView(
          message: err.toString(),
          onRetry: () => ref.refresh(merchantMenusProvider),
        ),
        data: (items) {
          if (items.isEmpty) {
            return EmptyView(
              icon: Icons.restaurant_menu_rounded,
              title: 'Belum Ada Menu',
              description:
                  'Tambahkan menu pertama Anda agar pelanggan dapat melihat daftar makanan dan minuman toko Anda.',
              actionLabel: 'Tambah Menu',
              onAction: () => _openForm(context),
            );
          }

          // Group by groupName
          final groups = <String, List<MerchantMenuItemModel>>{};
          for (final item in items) {
            groups.putIfAbsent(item.groupName, () => []).add(item);
          }

          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(merchantMenusProvider);
              await ref.read(merchantMenusProvider.future);
            },
            color: AppColors.lilac500,
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 96, top: 12),
              itemCount: groups.length,
              itemBuilder: (context, index) {
                final groupName = groups.keys.elementAt(index);
                final groupItems = groups[groupName]!;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SectionHeader(title: groupName),
                    ),
                    const SizedBox(height: 8),
                    ...groupItems.map(
                      (item) => _MenuItemCard(
                        item: item,
                        onTap: () => _openForm(context, item),
                        onToggleAvailable: (val) {
                          ref
                              .read(merchantMenusProvider.notifier)
                              .toggleAvailable(item.id, val);
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildSkeleton() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 4,
      itemBuilder: (_, _) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              SkeletonBox(
                width: 64,
                height: 64,
                borderRadius: BorderRadius.circular(12),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonBox(
                      width: 140,
                      height: 16,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    const SizedBox(height: 8),
                    SkeletonBox(
                      width: 80,
                      height: 14,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ],
                ),
              ),
              SkeletonBox(
                width: 48,
                height: 28,
                borderRadius: BorderRadius.circular(14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuItemCard extends StatelessWidget {
  const _MenuItemCard({
    required this.item,
    required this.onTap,
    required this.onToggleAvailable,
  });

  final MerchantMenuItemModel item;
  final VoidCallback onTap;
  final ValueChanged<bool> onToggleAvailable;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.lilac100),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: item.photoUrl != null
                      ? AppNetworkImage(
                          imageUrl: item.photoUrl,
                          width: 64,
                          height: 64,
                          fit: BoxFit.cover,
                        )
                      : Container(
                          width: 64,
                          height: 64,
                          color: AppColors.lilac100,
                          child: const Icon(
                            Icons.restaurant_rounded,
                            color: AppColors.lilac700,
                          ),
                        ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.ink,
                        ),
                      ),
                      if (item.description != null &&
                          item.description!.isNotEmpty) ...[
                        const SizedBox(height: 2),
                        Text(
                          item.description!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.inkSoft,
                          ),
                        ),
                      ],
                      const SizedBox(height: 4),
                      Text(
                        item.priceLabel,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppColors.lilac700,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Switch(
                      value: item.isAvailable,
                      onChanged: onToggleAvailable,
                      activeThumbColor: AppColors.lilac500,
                    ),
                    Text(
                      item.isAvailable ? 'Tersedia' : 'Habis',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: item.isAvailable
                            ? AppColors.lilac700
                            : AppColors.inkSoft,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
