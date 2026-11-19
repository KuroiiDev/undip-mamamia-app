import 'package:dio/dio.dart';

class ApiException implements Exception {
  const ApiException({
    this.statusCode,
    required this.message,
    this.code,
    this.fieldErrors,
    this.reason,
  });

  final int? statusCode;
  final String message;
  final String? code;
  final Map<String, List<String>>? fieldErrors;
  final String? reason;

  factory ApiException.fromDioException(DioException dioException) {
    final response = dioException.response;

    if (response != null && response.data is Map<String, dynamic>) {
      final data = response.data as Map<String, dynamic>;
      final rawErrors = data['errors'];
      Map<String, List<String>>? fieldErrors;

      if (rawErrors is Map<String, dynamic>) {
        fieldErrors = rawErrors.map((key, value) {
          if (value is List) {
            return MapEntry(
              key,
              value.map((e) => e.toString()).toList(),
            );
          }
          return MapEntry(key, [value.toString()]);
        });
      }

      return ApiException(
        statusCode: response.statusCode,
        message: data['message']?.toString() ??
            _defaultMessageForStatus(response.statusCode),
        code: data['code']?.toString(),
        fieldErrors: fieldErrors,
        reason: data['reason']?.toString(),
      );
    }

    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const ApiException(
          message: 'Koneksi ke server terputus atau waktu habis. Silakan coba lagi.',
          code: 'timeout',
        );
      case DioExceptionType.connectionError:
        return const ApiException(
          message: 'Tidak dapat terhubung ke server. Periksa koneksi internet Anda.',
          code: 'network_error',
        );
      case DioExceptionType.cancel:
        return const ApiException(
          message: 'Permintaan dibatalkan.',
          code: 'cancelled',
        );
      default:
        return ApiException(
          statusCode: response?.statusCode,
          message: _defaultMessageForStatus(response?.statusCode),
          code: 'unknown_error',
        );
    }
  }

  static String _defaultMessageForStatus(int? statusCode) {
    return switch (statusCode) {
      400 => 'Permintaan tidak valid.',
      401 => 'Sesi Anda telah berakhir. Silakan masuk kembali.',
      403 => 'Anda tidak memiliki akses ke fitur ini.',
      404 => 'Data tidak ditemukan.',
      422 => 'Data yang dikirimkan tidak valid.',
      429 => 'Terlalu banyak permintaan. Silakan tunggu beberapa saat.',
      500 => 'Terjadi kesalahan pada server. Silakan coba lagi nanti.',
      _ => 'Terjadi kesalahan yang tidak terduga.',
    };
  }

  @override
  String toString() => message;
}
