import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/empty_view.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/restaurant_card.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../providers/favorites_provider.dart';

class FavoriteScreen extends ConsumerWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesAsync = ref.watch(favoritesProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: const Text(
          'Restoran Favorit',
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.ink),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(favoritesProvider);
          await ref.read(favoritesProvider.future);
        },
        color: AppColors.lilac500,
        child: favoritesAsync.when(
          loading: () => _buildSkeleton(),
          error: (err, _) => ErrorView(
            message: err.toString(),
            onRetry: () => ref.invalidate(favoritesProvider),
          ),
          data: (items) {
            if (items.isEmpty) {
              return const EmptyView(
                title: 'Belum ada favorit',
                description:
                    'Tandai restoran yang kamu sukai dengan ikon hati agar mudah ditemukan kembali.',
                icon: Icons.favorite_border_rounded,
              );
            }

            return ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final restaurant = items[index];
                return RestaurantCard(
                  restaurant: restaurant,
                  variant: RestaurantCardVariant.list,
                  onTap: () => context.push('/restaurant/${restaurant.id}'),
                  onFavoriteTap: () {
                    ref
                        .read(favoritesProvider.notifier)
                        .toggleFavorite(restaurant);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildSkeleton() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 4,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (_, _) => SkeletonBox(
        width: double.infinity,
        height: 110,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
