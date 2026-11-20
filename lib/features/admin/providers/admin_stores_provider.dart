import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/admin_repository.dart';
import '../data/models/admin_store_model.dart';
import 'admin_dashboard_provider.dart';

part 'admin_stores_provider.freezed.dart';
part 'admin_stores_provider.g.dart';

@freezed
abstract class AdminStoresState with _$AdminStoresState {
  const factory AdminStoresState({
    @Default([]) List<AdminStoreItemModel> items,
    String? nextCursor,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? error,
    String? statusFilter,
    @Default('') String query,
  }) = _AdminStoresState;
}

@riverpod
class AdminStoresNotifier extends _$AdminStoresNotifier {
  @override
  AdminStoresState build() {
    _loadInitial();
    return const AdminStoresState(isLoading: true);
  }

  Future<void> _loadInitial() async {
    try {
      final repo = ref.read(adminRepositoryProvider);
      final res = await repo.getStores(
        status: state.statusFilter,
        q: state.query.isNotEmpty ? state.query : null,
      );
      state = state.copyWith(
        items: res.items,
        nextCursor: res.nextCursor,
        isLoading: false,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> setStatusFilter(String? status) async {
    if (state.statusFilter == status) return;
    state = state.copyWith(statusFilter: status, isLoading: true, error: null);
    await _loadInitial();
  }

  Future<void> setQuery(String q) async {
    state = state.copyWith(query: q, isLoading: true, error: null);
    await _loadInitial();
  }

  Future<void> loadMore() async {
    if (state.isLoadingMore || state.nextCursor == null) return;
    state = state.copyWith(isLoadingMore: true);

    try {
      final repo = ref.read(adminRepositoryProvider);
      final res = await repo.getStores(
        status: state.statusFilter,
        q: state.query.isNotEmpty ? state.query : null,
        cursor: state.nextCursor,
      );
      state = state.copyWith(
        items: [...state.items, ...res.items],
        nextCursor: res.nextCursor,
        isLoadingMore: false,
      );
    } catch (_) {
      state = state.copyWith(isLoadingMore: false);
    }
  }

  Future<void> refresh() async {
    state = state.copyWith(isLoading: true, error: null);
    await _loadInitial();
  }

  Future<void> approveStore(String id) async {
    final repo = ref.read(adminRepositoryProvider);
    await repo.approveStore(id);
    state = state.copyWith(
      items: state.items.map((s) {
        return s.id == id ? s.copyWith(status: 'active', statusReason: null) : s;
      }).toList(),
    );
    ref.read(adminDashboardProvider.notifier).refresh();
  }

  Future<void> banStore(String id, String reason) async {
    final repo = ref.read(adminRepositoryProvider);
    await repo.banStore(id, reason);
    state = state.copyWith(
      items: state.items.map((s) {
        return s.id == id ? s.copyWith(status: 'banned', statusReason: reason) : s;
      }).toList(),
    );
    ref.read(adminDashboardProvider.notifier).refresh();
  }

  Future<void> deleteStore(String id, String reason) async {
    final repo = ref.read(adminRepositoryProvider);
    await repo.deleteStore(id, reason);
    state = state.copyWith(
      items: state.items.where((s) => s.id != id).toList(),
    );
    ref.read(adminDashboardProvider.notifier).refresh();
  }
}
