// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_store_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MerchantStoreNotifier)
final merchantStoreProvider = MerchantStoreNotifierProvider._();

final class MerchantStoreNotifierProvider
    extends $AsyncNotifierProvider<MerchantStoreNotifier, MerchantStoreModel?> {
  MerchantStoreNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'merchantStoreProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$merchantStoreNotifierHash();

  @$internal
  @override
  MerchantStoreNotifier create() => MerchantStoreNotifier();
}

String _$merchantStoreNotifierHash() =>
    r'eeb539ea5b4bf238d37df80b0c05a1a030558472';

abstract class _$MerchantStoreNotifier
    extends $AsyncNotifier<MerchantStoreModel?> {
  FutureOr<MerchantStoreModel?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<MerchantStoreModel?>, MerchantStoreModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MerchantStoreModel?>, MerchantStoreModel?>,
              AsyncValue<MerchantStoreModel?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
