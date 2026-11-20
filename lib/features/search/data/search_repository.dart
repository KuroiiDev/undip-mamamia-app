import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_exception.dart';
import '../../../core/models/category_model.dart';
import '../../../core/models/paginated.dart';
import '../../../core/models/restaurant_card_model.dart';
import 'models/search_filter.dart';

part 'search_repository.g.dart';

@Riverpod(keepAlive: true)
SearchRepository searchRepository(Ref ref) {
  return SearchRepository(ref.watch(dioProvider));
}

class SearchRepository {
  SearchRepository(this._dio);
  final Dio _dio;

  Future<Paginated<RestaurantCardModel>> search({
    required SearchFilter filter,
    double? lat,
    double? lng,
    String? cursor,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'sort': filter.sort,
      };

      if (filter.query.trim().isNotEmpty) {
        queryParams['q'] = filter.query.trim();
      }
      if (filter.categoryIds.isNotEmpty) {
        queryParams['category'] = filter.categoryIds;
      }
      if (filter.priceLevel != null) {
        queryParams['price'] = filter.priceLevel;
      }
      if (filter.minRating != null) {
        queryParams['rating'] = filter.minRating;
      }
      if (filter.openNow) {
        queryParams['open_now'] = true;
      }
      if (lat != null && lng != null) {
        queryParams['lat'] = lat;
        queryParams['lng'] = lng;
      }
      if (cursor != null) {
        queryParams['cursor'] = cursor;
      }

      final response = await _dio.get('/screens/search', queryParameters: queryParams);
      final data = response.data['data'] as List<dynamic>;
      final meta = response.data['meta'] as Map<String, dynamic>?;

      final items = data
          .map((e) => RestaurantCardModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return Paginated(
        items: items,
        nextCursor: meta?['next_cursor'] as String?,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<List<CategoryModel>> getCategories() async {
    try {
      final response = await _dio.get('/categories');
      final data = response.data['data'] as List<dynamic>;
      return data
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}
