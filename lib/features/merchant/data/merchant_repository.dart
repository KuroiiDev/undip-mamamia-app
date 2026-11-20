import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_exception.dart';
import '../../../core/models/paginated.dart';
import '../../restaurant/data/models/review_model.dart';
import 'models/merchant_dashboard_model.dart';
import 'models/merchant_menu_item_model.dart';
import 'models/merchant_store_model.dart';

part 'merchant_repository.g.dart';

@Riverpod(keepAlive: true)
MerchantRepository merchantRepository(Ref ref) {
  return MerchantRepository(ref.watch(dioProvider));
}

class MerchantRepository {
  MerchantRepository(this._dio);
  final Dio _dio;

  Future<MerchantDashboardResponse> getDashboard() async {
    try {
      final response = await _dio.get('/merchant/screens/dashboard');
      return MerchantDashboardResponse.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<MerchantStoreModel?> getStore() async {
    try {
      final response = await _dio.get('/merchant/store');
      return MerchantStoreModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return null;
      }
      throw ApiException.fromDioException(e);
    }
  }

  Future<MerchantStoreModel> createStore({
    required String name,
    String? description,
    required String address,
    String? phone,
    required double lat,
    required double lng,
    required int priceLevel,
    required List<String> categoryIds,
    required List<MerchantOpeningHourInput> openingHours,
    XFile? cover,
  }) async {
    try {
      final formData = FormData();
      formData.fields.addAll([
        MapEntry('name', name),
        if (description != null) MapEntry('description', description),
        MapEntry('address', address),
        if (phone != null) MapEntry('phone', phone),
        MapEntry('lat', lat.toString()),
        MapEntry('lng', lng.toString()),
        MapEntry('price_level', priceLevel.toString()),
      ]);

      for (var i = 0; i < categoryIds.length; i++) {
        formData.fields.add(MapEntry('categories[$i]', categoryIds[i]));
      }

      for (var i = 0; i < openingHours.length; i++) {
        final h = openingHours[i];
        formData.fields.add(MapEntry('opening_hours[$i][day_of_week]', h.dayOfWeek.toString()));
        if (h.openTime != null) {
          formData.fields.add(MapEntry('opening_hours[$i][open_time]', h.openTime!));
        }
        if (h.closeTime != null) {
          formData.fields.add(MapEntry('opening_hours[$i][close_time]', h.closeTime!));
        }
        formData.fields.add(MapEntry('opening_hours[$i][is_closed]', h.isClosed ? '1' : '0'));
      }

      if (cover != null) {
        formData.files.add(MapEntry(
          'cover',
          await MultipartFile.fromFile(cover.path, filename: cover.name),
        ));
      }

      final response = await _dio.post('/merchant/store', data: formData);
      return MerchantStoreModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<MerchantStoreModel> updateStore({
    String? name,
    String? description,
    String? address,
    String? phone,
    double? lat,
    double? lng,
    int? priceLevel,
    List<String>? categoryIds,
    List<MerchantOpeningHourInput>? openingHours,
    XFile? cover,
  }) async {
    try {
      final formData = FormData();
      formData.fields.add(const MapEntry('_method', 'PUT'));

      if (name != null) formData.fields.add(MapEntry('name', name));
      if (description != null) formData.fields.add(MapEntry('description', description));
      if (address != null) formData.fields.add(MapEntry('address', address));
      if (phone != null) formData.fields.add(MapEntry('phone', phone));
      if (lat != null) formData.fields.add(MapEntry('lat', lat.toString()));
      if (lng != null) formData.fields.add(MapEntry('lng', lng.toString()));
      if (priceLevel != null) formData.fields.add(MapEntry('price_level', priceLevel.toString()));

      if (categoryIds != null) {
        for (var i = 0; i < categoryIds.length; i++) {
          formData.fields.add(MapEntry('categories[$i]', categoryIds[i]));
        }
      }

      if (openingHours != null) {
        for (var i = 0; i < openingHours.length; i++) {
          final h = openingHours[i];
          formData.fields.add(MapEntry('opening_hours[$i][day_of_week]', h.dayOfWeek.toString()));
          if (h.openTime != null) {
            formData.fields.add(MapEntry('opening_hours[$i][open_time]', h.openTime!));
          }
          if (h.closeTime != null) {
            formData.fields.add(MapEntry('opening_hours[$i][close_time]', h.closeTime!));
          }
          formData.fields.add(MapEntry('opening_hours[$i][is_closed]', h.isClosed ? '1' : '0'));
        }
      }

      if (cover != null) {
        formData.files.add(MapEntry(
          'cover',
          await MultipartFile.fromFile(cover.path, filename: cover.name),
        ));
      }

      final response = await _dio.post('/merchant/store', data: formData);
      return MerchantStoreModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<List<MerchantMenuItemModel>> getMenus() async {
    try {
      final response = await _dio.get('/merchant/menus');
      final list = response.data['data'] as List<dynamic>;
      return list
          .map((e) => MerchantMenuItemModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<MerchantMenuItemModel> createMenuItem({
    required String groupName,
    required String name,
    String? description,
    required int price,
    required bool isAvailable,
    XFile? photo,
  }) async {
    try {
      final formData = FormData();
      formData.fields.addAll([
        MapEntry('group_name', groupName),
        MapEntry('name', name),
        if (description != null) MapEntry('description', description),
        MapEntry('price', price.toString()),
        MapEntry('is_available', isAvailable ? '1' : '0'),
      ]);

      if (photo != null) {
        formData.files.add(MapEntry(
          'photo',
          await MultipartFile.fromFile(photo.path, filename: photo.name),
        ));
      }

      final response = await _dio.post('/merchant/menus', data: formData);
      return MerchantMenuItemModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<MerchantMenuItemModel> updateMenuItem({
    required String id,
    String? groupName,
    String? name,
    String? description,
    int? price,
    bool? isAvailable,
    XFile? photo,
  }) async {
    try {
      final formData = FormData();
      formData.fields.add(const MapEntry('_method', 'PUT'));

      if (groupName != null) formData.fields.add(MapEntry('group_name', groupName));
      if (name != null) formData.fields.add(MapEntry('name', name));
      if (description != null) formData.fields.add(MapEntry('description', description));
      if (price != null) formData.fields.add(MapEntry('price', price.toString()));
      if (isAvailable != null) {
        formData.fields.add(MapEntry('is_available', isAvailable ? '1' : '0'));
      }

      if (photo != null) {
        formData.files.add(MapEntry(
          'photo',
          await MultipartFile.fromFile(photo.path, filename: photo.name),
        ));
      }

      final response = await _dio.post('/merchant/menus/$id', data: formData);
      return MerchantMenuItemModel.fromJson(
        response.data['data'] as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<void> deleteMenuItem(String id) async {
    try {
      await _dio.delete('/merchant/menus/$id');
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  Future<Paginated<ReviewModel>> getReviews({String? cursor}) async {
    try {
      final queryParams = <String, dynamic>{};
      if (cursor != null) {
        queryParams['cursor'] = cursor;
      }
      final response = await _dio.get('/merchant/reviews', queryParameters: queryParams);
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
}
