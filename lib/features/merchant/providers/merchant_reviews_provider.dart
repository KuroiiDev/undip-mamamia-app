import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../restaurant/data/models/review_model.dart';
import '../data/merchant_repository.dart';

part 'merchant_reviews_provider.freezed.dart';
part 'merchant_reviews_provider.g.dart';

@freezed
abstract class MerchantReviewsState with _$MerchantReviewsState {
  const factory MerchantReviewsState({
    @Default([]) List<ReviewModel> items,
    String? nextCursor,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? error,
  }) = _MerchantReviewsState;
}

@riverpod
class MerchantReviewsNotifier extends _$MerchantReviewsNotifier {
  @override
  MerchantReviewsState build() {
    _loadInitial();
    return const MerchantReviewsState(isLoading: true);
  }

  Future<void> _loadInitial() async {
    try {
      final repo = ref.read(merchantRepositoryProvider);
      final res = await repo.getReviews();
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
      final repo = ref.read(merchantRepositoryProvider);
      final res = await repo.getReviews(cursor: state.nextCursor);
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
