// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
