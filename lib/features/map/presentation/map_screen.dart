import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/providers/user_location_provider.dart';
import '../../../core/theme/app_colors.dart';
import '../data/models/map_point_model.dart';
import '../providers/map_provider.dart';

class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  final MapController _mapController = MapController();
  LatLng _currentCenter = MapNotifier.defaultCenter;

  @override
  Widget build(BuildContext context) {
    final mapState = ref.watch(mapProvider);
    final userLocation = ref.watch(userLocationProvider).value;

    final initialCenter = userLocation != null
        ? LatLng(userLocation.lat, userLocation.lng)
        : MapNotifier.defaultCenter;

    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: initialCenter,
              initialZoom: 14.5,
              onPositionChanged: (camera, hasGesture) {
                _currentCenter = camera.center;
                if (hasGesture) {
                  ref.read(mapProvider.notifier).onMapMoved();
                }
              },
              onTap: (_, _) {
                ref.read(mapProvider.notifier).selectPoint(null);
              },
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.mamamia.app',
              ),
              MarkerLayer(
                markers: [
                  // User location marker
                  if (userLocation != null)
                    Marker(
                      point: LatLng(userLocation.lat, userLocation.lng),
                      width: 28,
                      height: 28,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.lilac500,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.lilac500.withValues(alpha: 0.3),
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  // Restaurant markers
                  ...mapState.points.map((point) {
                    final isSelected = mapState.selectedPoint?.id == point.id;
                    return Marker(
                      point: LatLng(point.lat, point.lng),
                      width: 72,
                      height: 48,
                      child: GestureDetector(
                        onTap: () {
                          ref.read(mapProvider.notifier).selectPoint(point);
                          _mapController.move(LatLng(point.lat, point.lng), 15);
                        },
                        child: _buildMarkerWidget(point, isSelected),
                      ),
                    );
                  }),
                ],
              ),
            ],
          ),

          // Loading indicator
          if (mapState.isLoading)
            Positioned(
              top: 48,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      SizedBox(
                        width: 14,
                        height: 14,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                      SizedBox(width: 8),
                      Text('Memuat restoran...', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ),
            ),

          // Search this area button
          if (mapState.showSearchThisArea && !mapState.isLoading)
            Positioned(
              top: 48,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    ref.read(mapProvider.notifier).fetchPoints(_currentCenter);
                  },
                  icon: const Icon(Icons.refresh_rounded, size: 16),
                  label: const Text('Cari di area ini'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.lilac700,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),

          // Recenter FAB
          Positioned(
            right: 16,
            bottom: mapState.selectedPoint != null ? 140 : 24,
            child: FloatingActionButton.small(
              heroTag: 'recenter_map',
              backgroundColor: Colors.white,
              foregroundColor: AppColors.lilac700,
              onPressed: () {
                if (userLocation != null) {
                  final target = LatLng(userLocation.lat, userLocation.lng);
                  _mapController.move(target, 15);
                  ref.read(mapProvider.notifier).fetchPoints(target);
                }
              },
              child: const Icon(Icons.my_location_rounded),
            ),
          ),

          // Selected restaurant preview card
          if (mapState.selectedPoint != null)
            Positioned(
              left: 16,
              right: 16,
              bottom: 24,
              child: _buildPreviewCard(context, mapState.selectedPoint!),
            ),
        ],
      ),
    );
  }

  Widget _buildMarkerWidget(MapPointModel point, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.lilac700 : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected ? Colors.white : AppColors.lilac500,
              width: 1.5,
            ),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 4)],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.star_rounded,
                size: 12,
                color: isSelected ? Colors.amber[200] : AppColors.star,
              ),
              const SizedBox(width: 2),
              Text(
                point.ratingLabel,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : AppColors.ink,
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.location_on,
          size: 22,
          color: isSelected ? AppColors.lilac700 : AppColors.lilac500,
        ),
      ],
    );
  }

  Widget _buildPreviewCard(BuildContext context, MapPointModel point) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => context.push('/restaurant/${point.id}'),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: AppColors.lilac100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.restaurant_rounded, color: AppColors.lilac700),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      point.name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.ink,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.star_rounded, size: 14, color: AppColors.star),
                        const SizedBox(width: 4),
                        Text(
                          point.ratingLabel,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.ink,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              FilledButton.tonal(
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () => context.push('/restaurant/${point.id}'),
                child: const Text('Detail', style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
