import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_exception.dart';
import '../../../core/models/paginated.dart';
import 'models/admin_dashboard_model.dart';
import 'models/admin_store_model.dart';
import 'models/admin_user_model.dart';

part 'admin_repository.g.dart';

@Riverpod(keepAlive: true)
AdminRepository adminRepository(Ref ref) {
  return AdminRepository(ref.watch(dioProvider));
}

class AdminRepository {
  AdminRepository(this._dio);

  final Dio _dio;

  Future<AdminDashboardResponse> getDashboard() async {
    try {
      final res = await _dio.get('/admin/screens/dashboard');
      return AdminDashboardResponse.fromJson(res.data['data']);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<Paginated<AdminStoreItemModel>> getStores({
    String? status,
    String? q,
    String? cursor,
  }) async {
    try {
      final params = <String, dynamic>{};
      if (status != null && status.isNotEmpty) params['status'] = status;
      if (q != null && q.isNotEmpty) params['q'] = q;
      if (cursor != null) params['cursor'] = cursor;

      final res = await _dio.get('/admin/stores', queryParameters: params);
      return Paginated.fromJson(
        res.data,
        (json) => AdminStoreItemModel.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> approveStore(String id) async {
    try {
      await _dio.post('/admin/stores/$id/approve');
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> banStore(String id, String reason) async {
    try {
      await _dio.post('/admin/stores/$id/ban', data: {'reason': reason});
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> deleteStore(String id, String reason) async {
    try {
      await _dio.delete('/admin/stores/$id', data: {'reason': reason});
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<Paginated<AdminUserModel>> getUsers({
    String? q,
    String? role,
    String? status,
    String? cursor,
  }) async {
    try {
      final params = <String, dynamic>{};
      if (q != null && q.isNotEmpty) params['q'] = q;
      if (role != null && role.isNotEmpty) params['role'] = role;
      if (status != null && status.isNotEmpty) params['status'] = status;
      if (cursor != null) params['cursor'] = cursor;

      final res = await _dio.get('/admin/users', queryParameters: params);
      return Paginated.fromJson(
        res.data,
        (json) => AdminUserModel.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> banUser(String id, String reason) async {
    try {
      await _dio.post('/admin/users/$id/ban', data: {'reason': reason});
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> unbanUser(String id) async {
    try {
      await _dio.post('/admin/users/$id/unban');
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}
