// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_dashboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdminDashboardNotifier)
final adminDashboardProvider = AdminDashboardNotifierProvider._();

final class AdminDashboardNotifierProvider
    extends
        $AsyncNotifierProvider<AdminDashboardNotifier, AdminDashboardResponse> {
  AdminDashboardNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adminDashboardProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adminDashboardNotifierHash();

  @$internal
  @override
  AdminDashboardNotifier create() => AdminDashboardNotifier();
}

String _$adminDashboardNotifierHash() =>
    r'7d222b964c7511d7d0a63722e9e9d761524c0fc4';

abstract class _$AdminDashboardNotifier
    extends $AsyncNotifier<AdminDashboardResponse> {
  FutureOr<AdminDashboardResponse> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<AdminDashboardResponse>, AdminDashboardResponse>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<AdminDashboardResponse>,
                AdminDashboardResponse
              >,
              AsyncValue<AdminDashboardResponse>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
