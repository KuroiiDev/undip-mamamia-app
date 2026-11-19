import 'package:cached_network_image/cached_network_image.dart';
import 'package:material_ui/material_ui.dart';

import '../theme/app_colors.dart';
import 'skeleton_box.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.semanticLabel,
  });

  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadiusGeometry? borderRadius;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final radius = borderRadius ?? BorderRadius.zero;

    Widget imageWidget;
    final url = imageUrl?.trim();

    if (url == null || url.isEmpty) {
      imageWidget = Container(
        width: width,
        height: height,
        color: AppColors.lilac100,
        alignment: Alignment.center,
        child: const Icon(
          Icons.restaurant_outlined,
          color: AppColors.inkMuted,
          size: 28,
        ),
      );
    } else {
      imageWidget = CachedNetworkImage(
        imageUrl: url,
        width: width,
        height: height,
        fit: fit,
        placeholder: (context, url) => SkeletonBox(
          width: width,
          height: height,
          borderRadius: radius,
        ),
        errorWidget: (context, url, error) => Container(
          width: width,
          height: height,
          color: AppColors.lilac100,
          alignment: Alignment.center,
          child: const Icon(
            Icons.broken_image_outlined,
            color: AppColors.inkMuted,
            size: 28,
          ),
        ),
      );
    }

    return Semantics(
      label: semanticLabel,
      image: true,
      child: ClipRRect(
        borderRadius: radius,
        child: imageWidget,
      ),
    );
  }
}
