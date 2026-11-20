import 'package:freezed_annotation/freezed_annotation.dart';

part 'opening_hour_model.freezed.dart';
part 'opening_hour_model.g.dart';

@freezed
abstract class OpeningHourModel with _$OpeningHourModel {
  const factory OpeningHourModel({
    required String day,
    String? open,
    String? close,
    @JsonKey(name: 'is_closed') required bool isClosed,
  }) = _OpeningHourModel;

  factory OpeningHourModel.fromJson(Map<String, dynamic> json) =>
      _$OpeningHourModelFromJson(json);
}
