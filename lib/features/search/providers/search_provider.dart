import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/models/category_model.dart';
import '../../../core/models/restaurant_card_model.dart';
import '../../../core/providers/user_location_provider.dart';
import '../../favorite/providers/favorites_provider.dart';
import '../data/models/search_filter.dart';
import '../data/search_repository.dart';

part 'search_provider.freezed.dart';
part 'search_provider.g.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchFilter()) SearchFilter filter,
    @Default([]) List<RestaurantCardModel> items,
    String? nextCursor,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? error,
  }) = _SearchState;
}

@riverpod
Future<List<CategoryModel>> searchCategories(Ref ref) {
  return ref.watch(searchRepositoryProvider).getCategories();
}

@riverpod
class SearchNotifier extends _$SearchNotifier {
  @override
  SearchState build() {
    return const SearchState();
  }

  Future<void> search({SearchFilter? filter}) async {
    final activeFilter = filter ?? state.filter;
    state = state.copyWith(
      filter: activeFilter,
      isLoading: true,
      error: null,
    );

    try {
      final location = await ref.read(userLocationProvider.future);
      final repo = ref.read(searchRepositoryProvider);

      final result = await repo.search(
        filter: activeFilter,
        lat: location?.lat,
        lng: location?.lng,
      );

      state = state.copyWith(
        items: result.items,
        nextCursor: result.nextCursor,
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
      final location = await ref.read(userLocationProvider.future);
      final repo = ref.read(searchRepositoryProvider);

      final result = await repo.search(
        filter: state.filter,
        lat: location?.lat,
        lng: location?.lng,
        cursor: state.nextCursor,
      );

      state = state.copyWith(
        items: [...state.items, ...result.items],
        nextCursor: result.nextCursor,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false);
    }
  }

  void toggleFavorite(RestaurantCardModel restaurant) {
    final nextFav = !restaurant.isFavorited;
    final updated = state.items.map((r) {
      return r.id == restaurant.id ? r.copyWith(isFavorited: nextFav) : r;
    }).toList();

    state = state.copyWith(items: updated);
    ref.read(favoritesProvider.notifier).toggleFavorite(restaurant);
  }
}
