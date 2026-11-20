import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/user_location_provider.dart';
import '../data/map_repository.dart';
import '../data/models/map_point_model.dart';

part 'map_provider.freezed.dart';
part 'map_provider.g.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState({
    @Default([]) List<MapPointModel> points,
    MapPointModel? selectedPoint,
    @Default(false) bool isLoading,
    @Default(false) bool showSearchThisArea,
    String? error,
  }) = _MapState;
}

@riverpod
class MapNotifier extends _$MapNotifier {
  static const defaultCenter = LatLng(-6.9932, 110.4203); // Semarang

  @override
  MapState build() {
    _initPoints();
    return const MapState(isLoading: true);
  }

  Future<void> _initPoints() async {
    final location = await ref.read(userLocationProvider.future);
    final center = location != null
        ? LatLng(location.lat, location.lng)
        : defaultCenter;

    await fetchPoints(center);
  }

  Future<void> fetchPoints(LatLng center, {double radius = 3000}) async {
    state = state.copyWith(isLoading: true, error: null, showSearchThisArea: false);

    try {
      final repo = ref.read(mapRepositoryProvider);
      final points = await repo.getMapPoints(
        lat: center.latitude,
        lng: center.longitude,
        radius: radius,
      );

      state = state.copyWith(
        points: points,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  void selectPoint(MapPointModel? point) {
    state = state.copyWith(selectedPoint: point);
  }

  void onMapMoved() {
    if (!state.showSearchThisArea) {
      state = state.copyWith(showSearchThisArea: true);
    }
  }
}
