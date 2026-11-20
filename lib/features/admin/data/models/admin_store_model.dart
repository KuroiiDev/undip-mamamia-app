import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_store_model.freezed.dart';
part 'admin_store_model.g.dart';

@freezed
abstract class AdminStoreOwnerModel with _$AdminStoreOwnerModel {
  const factory AdminStoreOwnerModel({
    required String id,
    required String name,
    required String email,
  }) = _AdminStoreOwnerModel;

  factory AdminStoreOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$AdminStoreOwnerModelFromJson(json);
}

@freezed
abstract class AdminStoreItemModel with _$AdminStoreItemModel {
  const factory AdminStoreItemModel({
    required String id,
    required String name,
    required String status,
    @JsonKey(name: 'status_reason') String? statusReason,
    required String address,
    String? phone,
    @JsonKey(name: 'rating_avg') @Default(0.0) double ratingAvg,
    @JsonKey(name: 'rating_count') @Default(0) int ratingCount,
    @JsonKey(name: 'cover_url') String? coverUrl,
    AdminStoreOwnerModel? owner,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _AdminStoreItemModel;

  factory AdminStoreItemModel.fromJson(Map<String, dynamic> json) =>
      _$AdminStoreItemModelFromJson(json);
}
