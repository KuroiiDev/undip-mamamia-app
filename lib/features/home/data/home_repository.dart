import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/api/api_client.dart';
import '../../../core/api/api_exception.dart';
import 'models/home_response.dart';

part 'home_repository.g.dart';

@Riverpod(keepAlive: true)
HomeRepository homeRepository(Ref ref) {
  return HomeRepository(ref.watch(dioProvider));
}

class HomeRepository {
  HomeRepository(this._dio);
  final Dio _dio;

  Future<HomeResponse> getHomeData({double? lat, double? lng}) async {
    try {
      final queryParams = <String, dynamic>{};
      if (lat != null && lng != null) {
        queryParams['lat'] = lat;
        queryParams['lng'] = lng;
      }
      final response = await _dio.get('/screens/home', queryParameters: queryParams);
      return HomeResponse.fromJson(response.data['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}
