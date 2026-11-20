import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../favorite/data/favorite_repository.dart';
import '../../favorite/providers/favorites_provider.dart';
import '../data/models/restaurant_detail_model.dart';
import '../data/models/restaurant_menu_model.dart';
import '../data/models/review_model.dart';
import '../data/restaurant_repository.dart';

part 'restaurant_detail_provider.freezed.dart';
part 'restaurant_detail_provider.g.dart';

@riverpod
class RestaurantDetailNotifier extends _$RestaurantDetailNotifier {
  @override
  FutureOr<RestaurantDetailModel> build(String id) {
    return ref.watch(restaurantRepositoryProvider).getRestaurantDetail(id);
  }

  Future<void> toggleFavorite() async {
    if (!state.hasValue) return;

    final current = state.value!;
    final nextFav = !current.isFavorited;

    state = AsyncData(current.copyWith(isFavorited: nextFav));

    final favRepo = ref.read(favoriteRepositoryProvider);
    try {
      if (nextFav) {
        await favRepo.addFavorite(id);
      } else {
        await favRepo.removeFavorite(id);
      }
      ref.invalidate(favoritesProvider);
    } catch (_) {
      state = AsyncData(current);
    }
  }

  void updateMyReview(ReviewModel? review) {
    if (!state.hasValue) return;
    state = AsyncData(state.value!.copyWith(myReview: review));
    ref.invalidateSelf();
  }
}

@riverpod
Future<List<MenuGroupModel>> restaurantMenus(Ref ref, String id) {
  return ref.watch(restaurantRepositoryProvider).getRestaurantMenus(id);
}

@freezed
abstract class RestaurantReviewsState with _$RestaurantReviewsState {
  const factory RestaurantReviewsState({
    @Default([]) List<ReviewModel> items,
    String? nextCursor,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? error,
  }) = _RestaurantReviewsState;
}

@riverpod
class RestaurantReviewsNotifier extends _$RestaurantReviewsNotifier {
  @override
  RestaurantReviewsState build(String id) {
    _loadInitial();
    return const RestaurantReviewsState(isLoading: true);
  }

  Future<void> _loadInitial() async {
    try {
      final repo = ref.read(restaurantRepositoryProvider);
      final res = await repo.getRestaurantReviews(id);
      state = state.copyWith(
        items: res.items,
        nextCursor: res.nextCursor,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> loadMore() async {
    if (state.isLoadingMore || state.nextCursor == null) return;
    state = state.copyWith(isLoadingMore: true);

    try {
      final repo = ref.read(restaurantRepositoryProvider);
      final res = await repo.getRestaurantReviews(id, cursor: state.nextCursor);
      state = state.copyWith(
        items: [...state.items, ...res.items],
        nextCursor: res.nextCursor,
        isLoadingMore: false,
      );
    } catch (_) {
      state = state.copyWith(isLoadingMore: false);
    }
  }

  Future<void> refresh() async {
    state = state.copyWith(isLoading: true, error: null);
    await _loadInitial();
  }
}
