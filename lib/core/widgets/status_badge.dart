import 'package:material_ui/material_ui.dart';

import '../theme/app_colors.dart';

enum StatusBadgeType {
  success,
  warning,
  error,
  info,
}

class StatusBadge extends StatelessWidget {
  const StatusBadge({
    super.key,
    required this.label,
    this.type = StatusBadgeType.info,
    this.customColor,
  });

  const StatusBadge.active({
    super.key,
    this.label = 'Aktif',
  })  : type = StatusBadgeType.success,
        customColor = null;

  const StatusBadge.pending({
    super.key,
    this.label = 'Menunggu',
  })  : type = StatusBadgeType.warning,
        customColor = null;

  const StatusBadge.banned({
    super.key,
    this.label = 'Diblokir',
  })  : type = StatusBadgeType.error,
        customColor = null;

  const StatusBadge.open({
    super.key,
    this.label = 'Buka',
  })  : type = StatusBadgeType.success,
        customColor = null;

  const StatusBadge.closed({
    super.key,
    this.label = 'Tutup',
  })  : type = StatusBadgeType.error,
        customColor = null;

  final String label;
  final StatusBadgeType type;
  final Color? customColor;

  Color _getColor() {
    if (customColor != null) return customColor!;
    return switch (type) {
      StatusBadgeType.success => AppColors.success,
      StatusBadgeType.warning => AppColors.warning,
      StatusBadgeType.error => AppColors.error,
      StatusBadgeType.info => AppColors.lilac500,
    };
  }

  @override
  Widget build(BuildContext context) {
    final color = _getColor();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: color.withValues(alpha: 0.35),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
