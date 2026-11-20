// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_stores_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdminStoresNotifier)
final adminStoresProvider = AdminStoresNotifierProvider._();

final class AdminStoresNotifierProvider
    extends $NotifierProvider<AdminStoresNotifier, AdminStoresState> {
  AdminStoresNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adminStoresProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adminStoresNotifierHash();

  @$internal
  @override
  AdminStoresNotifier create() => AdminStoresNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdminStoresState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdminStoresState>(value),
    );
  }
}

String _$adminStoresNotifierHash() =>
    r'39dd6be4469a80fbd51e9a4d831865828c8fd0f1';

abstract class _$AdminStoresNotifier extends $Notifier<AdminStoresState> {
  AdminStoresState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AdminStoresState, AdminStoresState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdminStoresState, AdminStoresState>,
              AdminStoresState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
