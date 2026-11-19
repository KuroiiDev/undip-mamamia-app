import 'package:dio/dio.dart';

import '../storage/token_storage.dart';

typedef OnUnauthorizedCallback = void Function();
typedef OnAccountBannedCallback = void Function(String? reason);

class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({
    required this.tokenStorage,
    this.onUnauthorized,
    this.onAccountBanned,
  });

  final TokenStorage tokenStorage;
  final OnUnauthorizedCallback? onUnauthorized;
  final OnAccountBannedCallback? onAccountBanned;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await tokenStorage.readToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = err.response?.statusCode;

    if (statusCode == 401) {
      await tokenStorage.deleteToken();
      onUnauthorized?.call();
    } else if (statusCode == 403) {
      final data = err.response?.data;
      if (data is Map<String, dynamic> && data['code'] == 'account_banned') {
        onAccountBanned?.call(data['reason']?.toString());
      }
    }

    handler.next(err);
  }
}
