import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_exception.dart';
import '../../../core/storage/token_storage.dart';
import '../data/auth_repository.dart';
import '../data/models/session_user.dart';

part 'session_provider.freezed.dart';
part 'session_provider.g.dart';

enum SessionStatus {
  unknown,
  loggedOut,
  loggedIn,
  banned,
}

@freezed
abstract class SessionState with _$SessionState {
  const factory SessionState({
    @Default(SessionStatus.unknown) SessionStatus status,
    SessionUser? user,
    String? bannedReason,
  }) = _SessionState;
}

@Riverpod(keepAlive: true)
class Session extends _$Session {
  @override
  SessionState build() {
    _initSession();
    return const SessionState(status: SessionStatus.unknown);
  }

  Future<void> _initSession() async {
    final tokenStorage = ref.read(tokenStorageProvider);
    final token = await tokenStorage.readToken();
    if (token == null || token.isEmpty) {
      state = const SessionState(status: SessionStatus.loggedOut);
      return;
    }

    try {
      final repo = ref.read(authRepositoryProvider);
      final user = await repo.getMe();
      if (user.status == 'banned') {
        state = const SessionState(
          status: SessionStatus.banned,
          bannedReason: 'Akun Anda dinonaktifkan.',
        );
      } else {
        state = SessionState(status: SessionStatus.loggedIn, user: user);
      }
    } on ApiException catch (e) {
      if (e.code == 'account_banned') {
        state = SessionState(
          status: SessionStatus.banned,
          bannedReason: e.reason ?? 'Akun Anda dinonaktifkan.',
        );
      } else {
        await tokenStorage.deleteToken();
        state = const SessionState(status: SessionStatus.loggedOut);
      }
    } catch (_) {
      await tokenStorage.deleteToken();
      state = const SessionState(status: SessionStatus.loggedOut);
    }
  }

  Future<void> login(String email, String password) async {
    final repo = ref.read(authRepositoryProvider);
    final authRes = await repo.login(email: email, password: password);
    await ref.read(tokenStorageProvider).saveToken(authRes.token);
    state = SessionState(
      status: SessionStatus.loggedIn,
      user: authRes.user,
    );
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required String role,
  }) async {
    final repo = ref.read(authRepositoryProvider);
    final authRes = await repo.register(
      name: name,
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,
      role: role,
    );
    await ref.read(tokenStorageProvider).saveToken(authRes.token);
    state = SessionState(
      status: SessionStatus.loggedIn,
      user: authRes.user,
    );
  }

  Future<void> logout() async {
    try {
      await ref.read(authRepositoryProvider).logout();
    } catch (_) {}
    await ref.read(tokenStorageProvider).deleteToken();
    state = const SessionState(status: SessionStatus.loggedOut);
  }

  void setBanned(String? reason) {
    state = SessionState(
      status: SessionStatus.banned,
      bannedReason: reason ?? 'Akun Anda dinonaktifkan.',
    );
  }

  void setLoggedOut() {
    state = const SessionState(status: SessionStatus.loggedOut);
  }

  void updateUser(SessionUser user) {
    if (state.status == SessionStatus.loggedIn) {
      state = state.copyWith(user: user);
    }
  }
}
