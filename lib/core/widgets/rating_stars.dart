import 'package:material_ui/material_ui.dart';

import '../theme/app_colors.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
    required this.rating,
    this.maxRating = 5,
    this.size = 18,
    this.color = AppColors.star,
    this.unselectedColor = AppColors.border,
    this.onChanged,
  });

  final double rating;
  final int maxRating;
  final double size;
  final Color color;
  final Color unselectedColor;
  final ValueChanged<int>? onChanged;

  bool get isInteractive => onChanged != null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(maxRating, (index) {
        final starValue = index + 1;
        final icon = starValue <= rating
            ? Icons.star_rounded
            : (starValue - 0.5 <= rating
                ? Icons.star_half_rounded
                : Icons.star_outline_rounded);

        final starIcon = Icon(
          icon,
          size: size,
          color: starValue <= rating || starValue - 0.5 <= rating
              ? color
              : unselectedColor,
        );

        if (isInteractive) {
          return InkWell(
            onTap: () => onChanged?.call(starValue),
            borderRadius: BorderRadius.circular(size),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: starIcon,
            ),
          );
        }

        return starIcon;
      }),
    );
  }
}
