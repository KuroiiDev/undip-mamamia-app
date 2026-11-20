import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
abstract class ReviewUserModel with _$ReviewUserModel {
  const factory ReviewUserModel({
    required String id,
    required String name,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
  }) = _ReviewUserModel;

  factory ReviewUserModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewUserModelFromJson(json);
}

@freezed
abstract class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required String id,
    required int rating,
    String? comment,
    ReviewUserModel? user,
    @JsonKey(name: 'created_label') String? createdLabel,
    @JsonKey(name: 'is_mine') @Default(false) bool isMine,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
