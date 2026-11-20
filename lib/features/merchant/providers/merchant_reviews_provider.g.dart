// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_reviews_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MerchantReviewsNotifier)
final merchantReviewsProvider = MerchantReviewsNotifierProvider._();

final class MerchantReviewsNotifierProvider
    extends $NotifierProvider<MerchantReviewsNotifier, MerchantReviewsState> {
  MerchantReviewsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'merchantReviewsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$merchantReviewsNotifierHash();

  @$internal
  @override
  MerchantReviewsNotifier create() => MerchantReviewsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MerchantReviewsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MerchantReviewsState>(value),
    );
  }
}

String _$merchantReviewsNotifierHash() =>
    r'e1a05f817cf482f459b5e7222e23cbcdfc30b3f9';

abstract class _$MerchantReviewsNotifier
    extends $Notifier<MerchantReviewsState> {
  MerchantReviewsState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<MerchantReviewsState, MerchantReviewsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MerchantReviewsState, MerchantReviewsState>,
              MerchantReviewsState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
