import 'package:material_ui/material_ui.dart';

import '../models/restaurant_card_model.dart';
import '../theme/app_colors.dart';
import 'app_network_image.dart';
import 'status_badge.dart';

enum RestaurantCardVariant {
  compact,
  list,
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
    required this.restaurant,
    this.variant = RestaurantCardVariant.list,
    this.onTap,
    this.onFavoriteTap,
  });

  final RestaurantCardModel restaurant;
  final RestaurantCardVariant variant;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    if (variant == RestaurantCardVariant.compact) {
      return _buildCompactCard(context);
    }
    return _buildListCard(context);
  }

  Widget _buildCompactCard(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          width: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: AppNetworkImage(
                      imageUrl: restaurant.coverUrl,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      semanticLabel: restaurant.name,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: _buildFavoriteButton(),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: restaurant.isOpenNow
                        ? const StatusBadge.open()
                        : const StatusBadge.closed(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.ink,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          size: 16,
                          color: AppColors.star,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          restaurant.ratingLabel,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.ink,
                          ),
                        ),
                        Text(
                          ' (${restaurant.ratingCount})',
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.inkSoft,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          restaurant.priceLabel,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.inkSoft,
                          ),
                        ),
                      ],
                    ),
                    if (restaurant.distanceLabel != null) ...[
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 14,
                            color: AppColors.inkMuted,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            restaurant.distanceLabel!,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppColors.inkSoft,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListCard(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 96,
                height: 96,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: AppNetworkImage(
                        imageUrl: restaurant.coverUrl,
                        borderRadius: BorderRadius.circular(16),
                        semanticLabel: restaurant.name,
                      ),
                    ),
                    Positioned(
                      bottom: 4,
                      left: 4,
                      child: restaurant.isOpenNow
                          ? const StatusBadge.open()
                          : const StatusBadge.closed(),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            restaurant.name,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.ink,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _buildFavoriteButton(isCompact: true),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          size: 16,
                          color: AppColors.star,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          restaurant.ratingLabel,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.ink,
                          ),
                        ),
                        Text(
                          ' (${restaurant.ratingCount})',
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.inkSoft,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '•  ${restaurant.priceLabel}',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.inkSoft,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    if (restaurant.distanceLabel != null)
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 14,
                            color: AppColors.inkMuted,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            restaurant.distanceLabel!,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppColors.inkSoft,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFavoriteButton({bool isCompact = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isCompact ? Colors.transparent : Colors.white.withValues(alpha: 0.9),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          restaurant.isFavorited ? Icons.favorite : Icons.favorite_border,
          color: restaurant.isFavorited ? AppColors.error : AppColors.inkSoft,
          size: isCompact ? 22 : 20,
        ),
        padding: isCompact ? EdgeInsets.zero : const EdgeInsets.all(4),
        constraints: const BoxConstraints(),
        visualDensity: VisualDensity.compact,
        onPressed: onFavoriteTap,
      ),
    );
  }
}
