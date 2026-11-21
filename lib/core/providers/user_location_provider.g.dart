// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(locationPermissionStatus)
final locationPermissionStatusProvider = LocationPermissionStatusProvider._();

final class LocationPermissionStatusProvider
    extends
        $FunctionalProvider<
          AsyncValue<LocationPermissionStatus>,
          LocationPermissionStatus,
          FutureOr<LocationPermissionStatus>
        >
    with
        $FutureModifier<LocationPermissionStatus>,
        $FutureProvider<LocationPermissionStatus> {
  LocationPermissionStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationPermissionStatusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationPermissionStatusHash();

  @$internal
  @override
  $FutureProviderElement<LocationPermissionStatus> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LocationPermissionStatus> create(Ref ref) {
    return locationPermissionStatus(ref);
  }
}

String _$locationPermissionStatusHash() =>
    r'1fe4e83cbab67c6e3334f78e39f4f30336e67fa9';

@ProviderFor(userLocation)
final userLocationProvider = UserLocationProvider._();

final class UserLocationProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserLocation?>,
          UserLocation?,
          FutureOr<UserLocation?>
        >
    with $FutureModifier<UserLocation?>, $FutureProvider<UserLocation?> {
  UserLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userLocationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userLocationHash();

  @$internal
  @override
  $FutureProviderElement<UserLocation?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserLocation?> create(Ref ref) {
    return userLocation(ref);
  }
}

String _$userLocationHash() => r'453feed1f28a305aa48207e3e3d0a870508e8f10';
