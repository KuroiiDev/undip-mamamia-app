import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/models/restaurant_card_model.dart';
import '../../../core/providers/user_location_provider.dart';
import '../../favorite/providers/favorites_provider.dart';
import '../data/home_repository.dart';
import '../data/models/home_response.dart';

part 'home_provider.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  FutureOr<HomeResponse> build() async {
    final location = await ref.watch(userLocationProvider.future);
    final repo = ref.watch(homeRepositoryProvider);
    return repo.getHomeData(
      lat: location?.lat,
      lng: location?.lng,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }

  void toggleFavorite(RestaurantCardModel restaurant) {
    if (!state.hasValue) return;

    final current = state.value!;
    final nextFav = !restaurant.isFavorited;

    final updatedNearby = current.nearby.map((r) {
      return r.id == restaurant.id ? r.copyWith(isFavorited: nextFav) : r;
    }).toList();

    final updatedTopRated = current.topRated.map((r) {
      return r.id == restaurant.id ? r.copyWith(isFavorited: nextFav) : r;
    }).toList();

    state = AsyncData(current.copyWith(
      nearby: updatedNearby,
      topRated: updatedTopRated,
    ));

    ref.read(favoritesProvider.notifier).toggleFavorite(restaurant);
  }
}
