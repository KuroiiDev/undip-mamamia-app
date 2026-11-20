import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/merchant_repository.dart';
import '../data/models/merchant_dashboard_model.dart';

part 'merchant_dashboard_provider.g.dart';

@riverpod
class MerchantDashboardNotifier extends _$MerchantDashboardNotifier {
  @override
  FutureOr<MerchantDashboardResponse> build() {
    return ref.watch(merchantRepositoryProvider).getDashboard();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }
}
