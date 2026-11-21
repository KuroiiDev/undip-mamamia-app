import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_location_provider.g.dart';

class UserLocation {
  const UserLocation({required this.lat, required this.lng});

  final double lat;
  final double lng;

  @override
  String toString() => 'UserLocation(lat: $lat, lng: $lng)';
}

/// Status izin lokasi untuk UI feedback.
enum LocationPermissionStatus {
  granted,
  denied,
  deniedForever,
  serviceDisabled,
  loading,
}

@Riverpod(keepAlive: true)
Future<LocationPermissionStatus> locationPermissionStatus(Ref ref) async {
  final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) return LocationPermissionStatus.serviceDisabled;

  final permission = await Geolocator.checkPermission();
  return switch (permission) {
    LocationPermission.denied => LocationPermissionStatus.denied,
    LocationPermission.deniedForever => LocationPermissionStatus.deniedForever,
    _ => LocationPermissionStatus.granted,
  };
}

@Riverpod(keepAlive: true)
Future<UserLocation?> userLocation(Ref ref) async {
  final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return null;
  }

  var permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return null;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return null;
  }

  try {
    final position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.medium,
        timeLimit: Duration(seconds: 5),
      ),
    );
    return UserLocation(lat: position.latitude, lng: position.longitude);
  } catch (_) {
    return null;
  }
}
