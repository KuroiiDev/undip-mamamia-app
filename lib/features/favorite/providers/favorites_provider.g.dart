// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FavoritesNotifier)
final favoritesProvider = FavoritesNotifierProvider._();

final class FavoritesNotifierProvider
    extends
        $AsyncNotifierProvider<FavoritesNotifier, List<RestaurantCardModel>> {
  FavoritesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesNotifierHash();

  @$internal
  @override
  FavoritesNotifier create() => FavoritesNotifier();
}

String _$favoritesNotifierHash() => r'45be06f4dd64788d95e75bcd71ba304d5b2365d6';

abstract class _$FavoritesNotifier
    extends $AsyncNotifier<List<RestaurantCardModel>> {
  FutureOr<List<RestaurantCardModel>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<RestaurantCardModel>>,
              List<RestaurantCardModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<RestaurantCardModel>>,
                List<RestaurantCardModel>
              >,
              AsyncValue<List<RestaurantCardModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
