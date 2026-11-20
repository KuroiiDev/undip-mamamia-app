import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_exception.dart';
import '../../../core/models/paginated.dart';
import 'models/restaurant_detail_model.dart';
import 'models/restaurant_menu_model.dart';
import 'models/review_model.dart';

part 'restaurant_repository.g.dart';

@Riverpod(keepAlive: true)
RestaurantRepository restaurantRepository(Ref ref) {
  return RestaurantRepository(ref.watch(dioProvider));
}

class RestaurantRepository {
  RestaurantRepository(this._dio);
  final Dio _dio;

  Future<RestaurantDetailModel> getRestaurantDetail(String id) async {
    try {
      final response = await _dio.get('/restaurants/$id');
      return RestaurantDetailModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<List<MenuGroupModel>> getRestaurantMenus(String id) async {
    try {
      final response = await _dio.get('/restaurants/$id/menus');
      final list = response.data['data'] as List<dynamic>;
      return list
          .map((e) => MenuGroupModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<Paginated<ReviewModel>> getRestaurantReviews(
    String id, {
    String? cursor,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (cursor != null) {
        queryParams['cursor'] = cursor;
      }
      final response = await _dio.get(
        '/restaurants/$id/reviews',
        queryParameters: queryParams,
      );
      final list = response.data['data'] as List<dynamic>;
      final meta = response.data['meta'] as Map<String, dynamic>?;

      return Paginated(
        items: list
            .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        nextCursor: meta?['next_cursor'] as String?,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<ReviewModel> upsertReview(
    String id, {
    required int rating,
    String? comment,
  }) async {
    try {
      final response = await _dio.put(
        '/restaurants/$id/review',
        data: {
          'rating': rating,
          'comment': comment,
        },
      );
      return ReviewModel.fromJson(response.data['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> deleteReview(String id) async {
    try {
      await _dio.delete('/restaurants/$id/review');
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}
