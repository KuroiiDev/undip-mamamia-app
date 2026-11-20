import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/merchant_repository.dart';
import '../data/models/merchant_menu_item_model.dart';
import 'merchant_dashboard_provider.dart';

part 'merchant_menus_provider.g.dart';

@riverpod
class MerchantMenusNotifier extends _$MerchantMenusNotifier {
  @override
  FutureOr<List<MerchantMenuItemModel>> build() {
    return ref.watch(merchantRepositoryProvider).getMenus();
  }

  Future<void> createMenu({
    required String groupName,
    required String name,
    String? description,
    required int price,
    required bool isAvailable,
    XFile? photo,
  }) async {
    final repo = ref.read(merchantRepositoryProvider);
    final item = await repo.createMenuItem(
      groupName: groupName,
      name: name,
      description: description,
      price: price,
      isAvailable: isAvailable,
      photo: photo,
    );

    if (state.hasValue) {
      state = AsyncData([...state.value!, item]);
    }
    ref.invalidate(merchantDashboardProvider);
  }

  Future<void> toggleAvailable(String id, bool isAvailable) async {
    if (!state.hasValue) return;

    final current = state.value!;
    final updated = current.map((i) {
      return i.id == id ? i.copyWith(isAvailable: isAvailable) : i;
    }).toList();

    state = AsyncData(updated);

    try {
      final repo = ref.read(merchantRepositoryProvider);
      await repo.updateMenuItem(id: id, isAvailable: isAvailable);
    } catch (_) {
      state = AsyncData(current);
    }
  }

  Future<void> updateMenu({
    required String id,
    String? groupName,
    String? name,
    String? description,
    int? price,
    bool? isAvailable,
    XFile? photo,
  }) async {
    final repo = ref.read(merchantRepositoryProvider);
    final updatedItem = await repo.updateMenuItem(
      id: id,
      groupName: groupName,
      name: name,
      description: description,
      price: price,
      isAvailable: isAvailable,
      photo: photo,
    );

    if (state.hasValue) {
      state = AsyncData(
        state.value!.map((i) => i.id == id ? updatedItem : i).toList(),
      );
    }
  }

  Future<void> deleteMenu(String id) async {
    final repo = ref.read(merchantRepositoryProvider);
    await repo.deleteMenuItem(id);

    if (state.hasValue) {
      state = AsyncData(state.value!.where((i) => i.id != id).toList());
    }
    ref.invalidate(merchantDashboardProvider);
  }
}
