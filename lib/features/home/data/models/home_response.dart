import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/models/category_model.dart';
import '../../../../core/models/restaurant_card_model.dart';

part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
abstract class HomeResponse with _$HomeResponse {
  const factory HomeResponse({
    @Default([]) List<CategoryModel> categories,
    @Default([]) List<RestaurantCardModel> nearby,
    @JsonKey(name: 'top_rated') @Default([]) List<RestaurantCardModel> topRated,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}
