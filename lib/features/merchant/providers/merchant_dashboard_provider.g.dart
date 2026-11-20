// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_dashboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MerchantDashboardNotifier)
final merchantDashboardProvider = MerchantDashboardNotifierProvider._();

final class MerchantDashboardNotifierProvider
    extends
        $AsyncNotifierProvider<
          MerchantDashboardNotifier,
          MerchantDashboardResponse
        > {
  MerchantDashboardNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'merchantDashboardProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$merchantDashboardNotifierHash();

  @$internal
  @override
  MerchantDashboardNotifier create() => MerchantDashboardNotifier();
}

String _$merchantDashboardNotifierHash() =>
    r'4d1b4fcaa1569ed8cbba7604172c98d2392a32ae';

abstract class _$MerchantDashboardNotifier
    extends $AsyncNotifier<MerchantDashboardResponse> {
  FutureOr<MerchantDashboardResponse> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<MerchantDashboardResponse>,
              MerchantDashboardResponse
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<MerchantDashboardResponse>,
                MerchantDashboardResponse
              >,
              AsyncValue<MerchantDashboardResponse>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
