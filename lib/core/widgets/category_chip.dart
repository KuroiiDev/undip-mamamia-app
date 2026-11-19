import 'package:material_ui/material_ui.dart';

import '../theme/app_colors.dart';
import 'app_network_image.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.label,
    this.iconUrl,
    this.icon,
    this.isSelected = false,
    this.onTap,
    this.backgroundColor,
  });

  final String label;
  final String? iconUrl;
  final IconData? icon;
  final bool isSelected;
  final VoidCallback? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final bg = isSelected
        ? AppColors.lilac500
        : (backgroundColor ?? AppColors.lilac100);
    final fg = isSelected ? Colors.white : AppColors.ink;

    return Material(
      color: bg,
      borderRadius: BorderRadius.circular(999),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(999),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (iconUrl != null && iconUrl!.isNotEmpty) ...[
                AppNetworkImage(
                  imageUrl: iconUrl,
                  width: 18,
                  height: 18,
                  borderRadius: BorderRadius.circular(9),
                ),
                const SizedBox(width: 6),
              ] else if (icon != null) ...[
                Icon(icon, size: 18, color: fg),
                const SizedBox(width: 6),
              ],
              Text(
                label,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                  color: fg,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
