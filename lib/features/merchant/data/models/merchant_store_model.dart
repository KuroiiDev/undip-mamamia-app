import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/models/category_model.dart';

part 'merchant_store_model.freezed.dart';
part 'merchant_store_model.g.dart';

@freezed
abstract class MerchantOpeningHourInput with _$MerchantOpeningHourInput {
  const factory MerchantOpeningHourInput({
    @JsonKey(name: 'day_of_week') required int dayOfWeek,
    String? day,
    @JsonKey(name: 'open_time') String? openTime,
    @JsonKey(name: 'close_time') String? closeTime,
    @JsonKey(name: 'is_closed') @Default(false) bool isClosed,
  }) = _MerchantOpeningHourInput;

  factory MerchantOpeningHourInput.fromJson(Map<String, dynamic> json) =>
      _$MerchantOpeningHourInputFromJson(json);
}

@freezed
abstract class MerchantStoreModel with _$MerchantStoreModel {
  const factory MerchantStoreModel({
    required String id,
    required String name,
    String? description,
    required String address,
    String? phone,
    required double lat,
    required double lng,
    @JsonKey(name: 'price_level') required int priceLevel,
    required String status,
    @JsonKey(name: 'status_reason') String? statusReason,
    @JsonKey(name: 'cover_url') String? coverUrl,
    @Default([]) List<CategoryModel> categories,
    @JsonKey(name: 'opening_hours') @Default([]) List<MerchantOpeningHourInput> openingHours,
  }) = _MerchantStoreModel;

  factory MerchantStoreModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantStoreModelFromJson(json);
}
