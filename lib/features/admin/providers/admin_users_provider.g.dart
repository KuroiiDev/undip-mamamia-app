// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdminUsersNotifier)
final adminUsersProvider = AdminUsersNotifierProvider._();

final class AdminUsersNotifierProvider
    extends $NotifierProvider<AdminUsersNotifier, AdminUsersState> {
  AdminUsersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adminUsersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adminUsersNotifierHash();

  @$internal
  @override
  AdminUsersNotifier create() => AdminUsersNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdminUsersState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdminUsersState>(value),
    );
  }
}

String _$adminUsersNotifierHash() =>
    r'902a9ca1155f89d4d18da82ed833d82aaf4e6c31';

abstract class _$AdminUsersNotifier extends $Notifier<AdminUsersState> {
  AdminUsersState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AdminUsersState, AdminUsersState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdminUsersState, AdminUsersState>,
              AdminUsersState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
