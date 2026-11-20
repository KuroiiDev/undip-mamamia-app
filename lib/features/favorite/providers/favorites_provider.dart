import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/favorite_repository.dart';
import '../../../core/models/restaurant_card_model.dart';

part 'favorites_provider.g.dart';

@riverpod
class FavoritesNotifier extends _$FavoritesNotifier {
  @override
  FutureOr<List<RestaurantCardModel>> build() {
    return ref.watch(favoriteRepositoryProvider).getFavorites();
  }

  Future<void> toggleFavorite(RestaurantCardModel restaurant) async {
    final repo = ref.read(favoriteRepositoryProvider);
    final isFav = restaurant.isFavorited;

    // Optimistic update if state has value
    final previousState = state;
    if (state.hasValue) {
      if (isFav) {
        state = AsyncData(
          state.value!.where((r) => r.id != restaurant.id).toList(),
        );
      } else {
        state = AsyncData([
          restaurant.copyWith(isFavorited: true),
          ...state.value!,
        ]);
      }
    }

    try {
      if (isFav) {
        await repo.removeFavorite(restaurant.id);
      } else {
        await repo.addFavorite(restaurant.id);
      }
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }
}
