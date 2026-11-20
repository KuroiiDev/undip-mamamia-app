// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(merchantRepository)
final merchantRepositoryProvider = MerchantRepositoryProvider._();

final class MerchantRepositoryProvider
    extends
        $FunctionalProvider<
          MerchantRepository,
          MerchantRepository,
          MerchantRepository
        >
    with $Provider<MerchantRepository> {
  MerchantRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'merchantRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$merchantRepositoryHash();

  @$internal
  @override
  $ProviderElement<MerchantRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MerchantRepository create(Ref ref) {
    return merchantRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MerchantRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MerchantRepository>(value),
    );
  }
}

String _$merchantRepositoryHash() =>
    r'598ffb12676649d546a67b6cf391582a74a8ff55';
