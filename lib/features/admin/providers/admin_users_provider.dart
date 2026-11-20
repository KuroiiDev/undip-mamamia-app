import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/admin_repository.dart';
import '../data/models/admin_user_model.dart';
import 'admin_dashboard_provider.dart';

part 'admin_users_provider.freezed.dart';
part 'admin_users_provider.g.dart';

@freezed
abstract class AdminUsersState with _$AdminUsersState {
  const factory AdminUsersState({
    @Default([]) List<AdminUserModel> items,
    String? nextCursor,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? error,
    String? roleFilter,
    String? statusFilter,
    @Default('') String query,
  }) = _AdminUsersState;
}

@riverpod
class AdminUsersNotifier extends _$AdminUsersNotifier {
  @override
  AdminUsersState build() {
    _loadInitial();
    return const AdminUsersState(isLoading: true);
  }

  Future<void> _loadInitial() async {
    try {
      final repo = ref.read(adminRepositoryProvider);
      final res = await repo.getUsers(
        role: state.roleFilter,
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

  Future<void> setRoleFilter(String? role) async {
    if (state.roleFilter == role) return;
    state = state.copyWith(roleFilter: role, isLoading: true, error: null);
    await _loadInitial();
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
      final res = await repo.getUsers(
        role: state.roleFilter,
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

  Future<void> banUser(String id, String reason) async {
    final repo = ref.read(adminRepositoryProvider);
    await repo.banUser(id, reason);
    state = state.copyWith(
      items: state.items.map((u) {
        return u.id == id ? u.copyWith(status: 'banned', bannedReason: reason) : u;
      }).toList(),
    );
    ref.read(adminDashboardProvider.notifier).refresh();
  }

  Future<void> unbanUser(String id) async {
    final repo = ref.read(adminRepositoryProvider);
    await repo.unbanUser(id);
    state = state.copyWith(
      items: state.items.map((u) {
        return u.id == id ? u.copyWith(status: 'active', bannedReason: null) : u;
      }).toList(),
    );
    ref.read(adminDashboardProvider.notifier).refresh();
  }
}
