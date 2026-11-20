// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RestaurantDetailNotifier)
final restaurantDetailProvider = RestaurantDetailNotifierFamily._();

final class RestaurantDetailNotifierProvider
    extends
        $AsyncNotifierProvider<
          RestaurantDetailNotifier,
          RestaurantDetailModel
        > {
  RestaurantDetailNotifierProvider._({
    required RestaurantDetailNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'restaurantDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$restaurantDetailNotifierHash();

  @override
  String toString() {
    return r'restaurantDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RestaurantDetailNotifier create() => RestaurantDetailNotifier();

  @override
  bool operator ==(Object other) {
    return other is RestaurantDetailNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$restaurantDetailNotifierHash() =>
    r'018e0524791af87508b0545e4f753ecf673bfd71';

final class RestaurantDetailNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RestaurantDetailNotifier,
          AsyncValue<RestaurantDetailModel>,
          RestaurantDetailModel,
          FutureOr<RestaurantDetailModel>,
          String
        > {
  RestaurantDetailNotifierFamily._()
    : super(
        retry: null,
        name: r'restaurantDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RestaurantDetailNotifierProvider call(String id) =>
      RestaurantDetailNotifierProvider._(argument: id, from: this);

  @override
  String toString() => r'restaurantDetailProvider';
}

abstract class _$RestaurantDetailNotifier
    extends $AsyncNotifier<RestaurantDetailModel> {
  late final _$args = ref.$arg as String;
  String get id => _$args;

  FutureOr<RestaurantDetailModel> build(String id);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<RestaurantDetailModel>, RestaurantDetailModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<RestaurantDetailModel>,
                RestaurantDetailModel
              >,
              AsyncValue<RestaurantDetailModel>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(restaurantMenus)
final restaurantMenusProvider = RestaurantMenusFamily._();

final class RestaurantMenusProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<MenuGroupModel>>,
          List<MenuGroupModel>,
          FutureOr<List<MenuGroupModel>>
        >
    with
        $FutureModifier<List<MenuGroupModel>>,
        $FutureProvider<List<MenuGroupModel>> {
  RestaurantMenusProvider._({
    required RestaurantMenusFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'restaurantMenusProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$restaurantMenusHash();

  @override
  String toString() {
    return r'restaurantMenusProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<MenuGroupModel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<MenuGroupModel>> create(Ref ref) {
    final argument = this.argument as String;
    return restaurantMenus(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RestaurantMenusProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$restaurantMenusHash() => r'eda88139be92d7e9fe7d87c7961d647f25125d73';

final class RestaurantMenusFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<MenuGroupModel>>, String> {
  RestaurantMenusFamily._()
    : super(
        retry: null,
        name: r'restaurantMenusProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RestaurantMenusProvider call(String id) =>
      RestaurantMenusProvider._(argument: id, from: this);

  @override
  String toString() => r'restaurantMenusProvider';
}

@ProviderFor(RestaurantReviewsNotifier)
final restaurantReviewsProvider = RestaurantReviewsNotifierFamily._();

final class RestaurantReviewsNotifierProvider
    extends
        $NotifierProvider<RestaurantReviewsNotifier, RestaurantReviewsState> {
  RestaurantReviewsNotifierProvider._({
    required RestaurantReviewsNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'restaurantReviewsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$restaurantReviewsNotifierHash();

  @override
  String toString() {
    return r'restaurantReviewsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RestaurantReviewsNotifier create() => RestaurantReviewsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RestaurantReviewsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RestaurantReviewsState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RestaurantReviewsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$restaurantReviewsNotifierHash() =>
    r'7c14d721ceed7833ec1a1cbe22c60d94bc15f6af';

final class RestaurantReviewsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RestaurantReviewsNotifier,
          RestaurantReviewsState,
          RestaurantReviewsState,
          RestaurantReviewsState,
          String
        > {
  RestaurantReviewsNotifierFamily._()
    : super(
        retry: null,
        name: r'restaurantReviewsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RestaurantReviewsNotifierProvider call(String id) =>
      RestaurantReviewsNotifierProvider._(argument: id, from: this);

  @override
  String toString() => r'restaurantReviewsProvider';
}

abstract class _$RestaurantReviewsNotifier
    extends $Notifier<RestaurantReviewsState> {
  late final _$args = ref.$arg as String;
  String get id => _$args;

  RestaurantReviewsState build(String id);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<RestaurantReviewsState, RestaurantReviewsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RestaurantReviewsState, RestaurantReviewsState>,
              RestaurantReviewsState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
