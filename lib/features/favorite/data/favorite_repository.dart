import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/api/api_client.dart';
import '../../../core/api/api_exception.dart';
import '../../../core/models/restaurant_card_model.dart';

part 'favorite_repository.g.dart';

@Riverpod(keepAlive: true)
FavoriteRepository favoriteRepository(Ref ref) {
  return FavoriteRepository(ref.watch(dioProvider));
}

class FavoriteRepository {
  FavoriteRepository(this._dio);
  final Dio _dio;

  Future<List<RestaurantCardModel>> getFavorites() async {
    try {
      final response = await _dio.get('/screens/favorites');
      final list = response.data['data'] as List<dynamic>;
      return list
          .map((e) => RestaurantCardModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> addFavorite(String restaurantId) async {
    try {
      await _dio.post('/restaurants/$restaurantId/favorite');
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> removeFavorite(String restaurantId) async {
    try {
      await _dio.delete('/restaurants/$restaurantId/favorite');
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}
