import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_exception.dart';
import 'models/auth_response.dart';
import 'models/session_user.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(ref.watch(dioProvider));
}

class AuthRepository {
  AuthRepository(this._dio);

  final Dio _dio;

  Future<AuthResponse> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required String role,
  }) async {
    try {
      final res = await _dio.post(
        '/register',
        data: {
          'name': name,
          'email': email,
          'password': password,
          'password_confirmation': passwordConfirmation,
          'role': role,
        },
      );
      return AuthResponse.fromJson(res.data['data']);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<AuthResponse> login({
    required String email,
    required String password,
  }) async {
    try {
      final res = await _dio.post(
        '/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      return AuthResponse.fromJson(res.data['data']);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> logout() async {
    try {
      await _dio.post('/logout');
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<SessionUser> getMe() async {
    try {
      final res = await _dio.get('/me');
      return SessionUser.fromJson(res.data['data']);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}
