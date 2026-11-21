import 'package:cached_network_image/cached_network_image.dart';
import 'package:material_ui/material_ui.dart';

import '../theme/app_colors.dart';
import 'skeleton_box.dart';

/// Base URL for resolving relative image paths from the API.
/// Strips /api/v1 from the API base URL to get the server root.
const String _apiBaseUrl = String.fromEnvironment(
  'API_BASE_URL',
  defaultValue: 'http://192.168.26.4:8000/api/v1',
);

String get _serverBaseUrl {
  // Remove /api/v1 or /api suffix to get e.g. http://192.168.26.4:8000
  final uri = Uri.parse(_apiBaseUrl);
  return '${uri.scheme}://${uri.host}:${uri.port}';
}

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

  /// Resolves a possibly-relative URL to a full URL.
  /// e.g. "/storage/covers/abc.jpg" → "http://192.168.26.4:8000/storage/covers/abc.jpg"
  static String? _resolveUrl(String? url) {
    if (url == null || url.trim().isEmpty) return null;
    final trimmed = url.trim();
    // Already a full URL
    if (trimmed.startsWith('http://') || trimmed.startsWith('https://')) {
      return trimmed;
    }
    // Relative path — prepend server base
    return '$_serverBaseUrl$trimmed';
  }

  @override
  Widget build(BuildContext context) {
    final radius = borderRadius ?? BorderRadius.zero;

    Widget imageWidget;
    final url = _resolveUrl(imageUrl);

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
