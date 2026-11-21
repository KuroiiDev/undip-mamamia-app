import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/providers/session_provider.dart';
import '../storage/token_storage.dart';
import 'auth_interceptor.dart';

part 'api_client.g.dart';

const String _defaultBaseUrl = String.fromEnvironment(
  'API_BASE_URL',
  defaultValue: 'https://home-server.tail546173.ts.net/api/v1',
);

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final tokenStorage = ref.watch(tokenStorageProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: _defaultBaseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      headers: const {
        'Accept': 'application/json',
      },
    ),
  );

  dio.interceptors.add(
    AuthInterceptor(
      tokenStorage: tokenStorage,
      onUnauthorized: () {
        ref.read(sessionProvider.notifier).setLoggedOut();
      },
      onAccountBanned: (reason) {
        ref.read(sessionProvider.notifier).setBanned(reason);
      },
    ),
  );

  return dio;
}
