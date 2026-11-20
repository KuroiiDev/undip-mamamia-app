import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_dashboard_model.freezed.dart';
part 'admin_dashboard_model.g.dart';

@freezed
abstract class AdminPendingStoreModel with _$AdminPendingStoreModel {
  const factory AdminPendingStoreModel({
    required String id,
    required String name,
    @JsonKey(name: 'owner_name') required String ownerName,
    required String address,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'cover_url') String? coverUrl,
  }) = _AdminPendingStoreModel;

  factory AdminPendingStoreModel.fromJson(Map<String, dynamic> json) =>
      _$AdminPendingStoreModelFromJson(json);
}

@freezed
abstract class AdminDashboardResponse with _$AdminDashboardResponse {
  const factory AdminDashboardResponse({
    @JsonKey(name: 'store_count') required int storeCount,
    @JsonKey(name: 'user_count') required int userCount,
    @JsonKey(name: 'pending_count') required int pendingCount,
    @JsonKey(name: 'open_report_count') required int openReportCount,
    @JsonKey(name: 'pending_stores')
    @Default([])
    List<AdminPendingStoreModel> pendingStores,
  }) = _AdminDashboardResponse;

  factory AdminDashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDashboardResponseFromJson(json);
}
