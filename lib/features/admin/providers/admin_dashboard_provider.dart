import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/admin_repository.dart';
import '../data/models/admin_dashboard_model.dart';

part 'admin_dashboard_provider.g.dart';

@riverpod
class AdminDashboardNotifier extends _$AdminDashboardNotifier {
  @override
  FutureOr<AdminDashboardResponse> build() {
    return ref.watch(adminRepositoryProvider).getDashboard();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(adminRepositoryProvider).getDashboard(),
    );
  }

  Future<void> approveStore(String id) async {
    final repo = ref.read(adminRepositoryProvider);
    await repo.approveStore(id);
    refresh();
  }
}
