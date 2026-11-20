import 'package:flutter_test/flutter_test.dart';
import 'package:mamamia/features/merchant/data/models/merchant_dashboard_model.dart';
import 'package:mamamia/features/merchant/data/models/merchant_menu_item_model.dart';
import 'package:mamamia/features/merchant/data/models/merchant_store_model.dart';

void main() {
  group('Fase 7 Merchant Models Parsing', () {
    test('MerchantDashboardResponse parses with store', () {
      final json = {
        'store': {
          'id': '00000000-0000-0000-0000-000000000001',
          'name': 'Warung Berkah',
          'status': 'active',
          'rating_label': '4.8',
          'review_count': 120,
          'menu_count': 15,
        },
        'latest_reviews': [],
      };

      final model = MerchantDashboardResponse.fromJson(json);
      expect(model.store, isNotNull);
      expect(model.store!.name, 'Warung Berkah');
      expect(model.store!.status, 'active');
      expect(model.store!.ratingLabel, '4.8');
      expect(model.store!.menuCount, 15);
      expect(model.store!.reviewCount, 120);
    });

    test('MerchantDashboardResponse parses without store', () {
      final json = {
        'store': null,
        'latest_reviews': [],
      };

      final model = MerchantDashboardResponse.fromJson(json);
      expect(model.store, isNull);
      expect(model.latestReviews, isEmpty);
    });

    test('MerchantStoreModel parses correctly', () {
      final json = {
        'id': '00000000-0000-0000-0000-000000000001',
        'name': 'Warung Berkah',
        'description': 'Warung makan murah dan enak',
        'address': 'Jl. Prof. Soedarto',
        'phone': '08123456789',
        'lat': -7.0500,
        'lng': 110.4300,
        'price_level': 1,
        'status': 'active',
        'cover_url': 'http://localhost/cover.jpg',
        'categories': [
          {'id': 'cat-1', 'name': 'Nasi', 'slug': 'nasi', 'icon': null},
        ],
        'opening_hours': [
          {
            'day_of_week': 1,
            'open_time': '08:00',
            'close_time': '21:00',
            'is_closed': false,
          },
        ],
      };

      final model = MerchantStoreModel.fromJson(json);
      expect(model.id, '00000000-0000-0000-0000-000000000001');
      expect(model.name, 'Warung Berkah');
      expect(model.categories.length, 1);
      expect(model.categories.first.id, 'cat-1');
      expect(model.openingHours.length, 1);
      expect(model.openingHours.first.dayOfWeek, 1);
      expect(model.openingHours.first.isClosed, isFalse);
    });

    test('MerchantMenuItemModel parses correctly', () {
      final json = {
        'id': '00000000-0000-0000-0000-000000000010',
        'group_name': 'Makanan',
        'name': 'Nasi Goreng Spesial',
        'description': 'Dengan telur dan ayam suwir',
        'price': 18000,
        'price_label': 'Rp 18.000',
        'is_available': true,
        'photo_url': 'http://localhost/nasgor.jpg',
      };

      final model = MerchantMenuItemModel.fromJson(json);
      expect(model.id, '00000000-0000-0000-0000-000000000010');
      expect(model.groupName, 'Makanan');
      expect(model.name, 'Nasi Goreng Spesial');
      expect(model.price, 18000);
      expect(model.isAvailable, isTrue);
    });
  });
}
