// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_menus_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MerchantMenusNotifier)
final merchantMenusProvider = MerchantMenusNotifierProvider._();

final class MerchantMenusNotifierProvider
    extends
        $AsyncNotifierProvider<
          MerchantMenusNotifier,
          List<MerchantMenuItemModel>
        > {
  MerchantMenusNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'merchantMenusProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$merchantMenusNotifierHash();

  @$internal
  @override
  MerchantMenusNotifier create() => MerchantMenusNotifier();
}

String _$merchantMenusNotifierHash() =>
    r'843f532b13388c34b2459b7c7c0a0d42d6ea0407';

abstract class _$MerchantMenusNotifier
    extends $AsyncNotifier<List<MerchantMenuItemModel>> {
  FutureOr<List<MerchantMenuItemModel>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<MerchantMenuItemModel>>,
              List<MerchantMenuItemModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<MerchantMenuItemModel>>,
                List<MerchantMenuItemModel>
              >,
              AsyncValue<List<MerchantMenuItemModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
