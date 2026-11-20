import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/merchant_repository.dart';
import '../data/models/merchant_store_model.dart';
import 'merchant_dashboard_provider.dart';

part 'merchant_store_provider.g.dart';

@riverpod
class MerchantStoreNotifier extends _$MerchantStoreNotifier {
  @override
  FutureOr<MerchantStoreModel?> build() {
    return ref.watch(merchantRepositoryProvider).getStore();
  }

  Future<void> createStore({
    required String name,
    String? description,
    required String address,
    String? phone,
    required double lat,
    required double lng,
    required int priceLevel,
    required List<String> categoryIds,
    required List<MerchantOpeningHourInput> openingHours,
    XFile? cover,
  }) async {
    final repo = ref.read(merchantRepositoryProvider);
    final store = await repo.createStore(
      name: name,
      description: description,
      address: address,
      phone: phone,
      lat: lat,
      lng: lng,
      priceLevel: priceLevel,
      categoryIds: categoryIds,
      openingHours: openingHours,
      cover: cover,
    );

    state = AsyncData(store);
    ref.invalidate(merchantDashboardProvider);
  }

  Future<void> updateStore({
    String? name,
    String? description,
    String? address,
    String? phone,
    double? lat,
    double? lng,
    int? priceLevel,
    List<String>? categoryIds,
    List<MerchantOpeningHourInput>? openingHours,
    XFile? cover,
  }) async {
    final repo = ref.read(merchantRepositoryProvider);
    final store = await repo.updateStore(
      name: name,
      description: description,
      address: address,
      phone: phone,
      lat: lat,
      lng: lng,
      priceLevel: priceLevel,
      categoryIds: categoryIds,
      openingHours: openingHours,
      cover: cover,
    );

    state = AsyncData(store);
    ref.invalidate(merchantDashboardProvider);
  }
}
