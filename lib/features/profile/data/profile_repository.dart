import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_exception.dart';
import '../../auth/data/models/session_user.dart';
import 'models/profile_response.dart';

part 'profile_repository.g.dart';

@Riverpod(keepAlive: true)
ProfileRepository profileRepository(Ref ref) {
  return ProfileRepository(ref.watch(dioProvider));
}

class ProfileRepository {
  ProfileRepository(this._dio);
  final Dio _dio;

  Future<ProfileResponse> getProfile() async {
    try {
      final response = await _dio.get('/screens/profile');
      return ProfileResponse.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<SessionUser> updateProfile({String? name, XFile? avatar}) async {
    try {
      final map = <String, dynamic>{};
      if (name != null && name.trim().isNotEmpty) {
        map['name'] = name.trim();
      }
      if (avatar != null) {
        map['avatar'] = await MultipartFile.fromFile(
          avatar.path,
          filename: avatar.name,
        );
      }

      final formData = FormData.fromMap(map);
      // PUT request with multipart in Laravel uses POST with _method=PUT
      formData.fields.add(const MapEntry('_method', 'PUT'));

      final response = await _dio.post('/me', data: formData);
      return SessionUser.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}
