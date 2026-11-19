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
