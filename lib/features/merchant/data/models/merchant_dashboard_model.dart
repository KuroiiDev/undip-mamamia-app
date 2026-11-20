import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../restaurant/data/models/review_model.dart';

part 'merchant_dashboard_model.freezed.dart';
part 'merchant_dashboard_model.g.dart';

@freezed
abstract class MerchantStoreSummary with _$MerchantStoreSummary {
  const factory MerchantStoreSummary({
    required String id,
    required String name,
    required String status,
    @JsonKey(name: 'status_reason') String? statusReason,
    @JsonKey(name: 'rating_label') required String ratingLabel,
    @JsonKey(name: 'review_count') required int reviewCount,
    @JsonKey(name: 'menu_count') required int menuCount,
  }) = _MerchantStoreSummary;

  factory MerchantStoreSummary.fromJson(Map<String, dynamic> json) =>
      _$MerchantStoreSummaryFromJson(json);
}

@freezed
abstract class MerchantDashboardResponse with _$MerchantDashboardResponse {
  const factory MerchantDashboardResponse({
    MerchantStoreSummary? store,
    @JsonKey(name: 'latest_reviews') @Default([]) List<ReviewModel> latestReviews,
  }) = _MerchantDashboardResponse;

  factory MerchantDashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchantDashboardResponseFromJson(json);
}
