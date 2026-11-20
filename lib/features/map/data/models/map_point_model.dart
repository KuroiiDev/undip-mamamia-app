import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_point_model.freezed.dart';
part 'map_point_model.g.dart';

@freezed
abstract class MapPointModel with _$MapPointModel {
  const factory MapPointModel({
    required String id,
    required String name,
    required double lat,
    required double lng,
    @JsonKey(name: 'rating_label') required String ratingLabel,
  }) = _MapPointModel;

  factory MapPointModel.fromJson(Map<String, dynamic> json) =>
      _$MapPointModelFromJson(json);
}
