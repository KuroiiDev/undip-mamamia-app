import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_exception.dart';
import 'models/map_point_model.dart';

part 'map_repository.g.dart';

@Riverpod(keepAlive: true)
MapRepository mapRepository(Ref ref) {
  return MapRepository(ref.watch(dioProvider));
}

class MapRepository {
  MapRepository(this._dio);
  final Dio _dio;

  Future<List<MapPointModel>> getMapPoints({
    required double lat,
    required double lng,
    double radius = 3000,
  }) async {
    try {
      final response = await _dio.get(
        '/screens/map',
        queryParameters: {
          'lat': lat,
          'lng': lng,
          'radius': radius,
        },
      );
      final list = response.data['data'] as List<dynamic>;
      return list
          .map((e) => MapPointModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}
