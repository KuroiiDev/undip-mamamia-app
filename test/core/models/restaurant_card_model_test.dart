import 'package:flutter_test/flutter_test.dart';
import 'package:mamamia/core/models/restaurant_card_model.dart';

void main() {
  group('RestaurantCardModel', () {
    test('parses correctly from contract JSON', () {
      final json = {
        'id': '9f1c7d24-3f12-4091-a15d-0d7e6822c548',
        'name': 'Warung Bu Tini',
        'cover_url': 'https://example.com/cover.jpg',
        'rating_label': '4.6',
        'rating_count': 128,
        'price_label': 'Rp',
        'distance_label': '650 m',
        'is_open_now': true,
        'is_favorited': false,
      };

      final model = RestaurantCardModel.fromJson(json);

      expect(model.id, '9f1c7d24-3f12-4091-a15d-0d7e6822c548');
      expect(model.name, 'Warung Bu Tini');
      expect(model.coverUrl, 'https://example.com/cover.jpg');
      expect(model.ratingLabel, '4.6');
      expect(model.ratingCount, 128);
      expect(model.priceLabel, 'Rp');
      expect(model.distanceLabel, '650 m');
      expect(model.isOpenNow, true);
      expect(model.isFavorited, false);
    });

    test('parses null distance_label and cover_url', () {
      final json = {
        'id': '9f1c7d24-3f12-4091-a15d-0d7e6822c548',
        'name': 'Warung Bu Tini',
        'cover_url': null,
        'rating_label': '4.6',
        'rating_count': 128,
        'price_label': 'Rp',
        'distance_label': null,
        'is_open_now': false,
        'is_favorited': true,
      };

      final model = RestaurantCardModel.fromJson(json);

      expect(model.coverUrl, isNull);
      expect(model.distanceLabel, isNull);
      expect(model.isOpenNow, false);
      expect(model.isFavorited, true);
    });
  });
}
