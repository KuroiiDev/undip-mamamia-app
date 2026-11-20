import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter.freezed.dart';

@freezed
abstract class SearchFilter with _$SearchFilter {
  const factory SearchFilter({
    @Default('') String query,
    @Default([]) List<String> categoryIds,
    int? priceLevel,
    double? minRating,
    @Default(false) bool openNow,
    @Default('rating') String sort,
  }) = _SearchFilter;
}
