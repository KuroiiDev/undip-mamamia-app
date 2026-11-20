import 'package:flutter_test/flutter_test.dart';
import 'package:mamamia/core/models/category_model.dart';
import 'package:mamamia/features/home/data/models/home_response.dart';
import 'package:mamamia/features/map/data/models/map_point_model.dart';
import 'package:mamamia/features/profile/data/models/profile_response.dart';
import 'package:mamamia/features/restaurant/data/models/restaurant_detail_model.dart';
import 'package:mamamia/features/restaurant/data/models/restaurant_menu_model.dart';

void main() {
  group('Fase 6 Model JSON Parsing', () {
    test('CategoryModel parses correctly', () {
      final json = {
        'id': 'cat-1',
        'name': 'Kopi',
        'icon_url': 'https://example.com/kopi.png',
      };
      final cat = CategoryModel.fromJson(json);
      expect(cat.id, 'cat-1');
      expect(cat.name, 'Kopi');
      expect(cat.iconUrl, 'https://example.com/kopi.png');
    });

    test('HomeResponse parses contract JSON', () {
      final json = {
        'categories': [
          {'id': 'cat-1', 'name': 'Kopi', 'icon_url': null},
        ],
        'nearby': [
          {
            'id': 'resto-1',
            'name': 'Warung Bu Tini',
            'cover_url': null,
            'rating_label': '4.6',
            'rating_count': 128,
            'price_label': 'Rp',
            'distance_label': '650 m',
            'is_open_now': true,
            'is_favorited': false,
          }
        ],
        'top_rated': [
          {
            'id': 'resto-2',
            'name': 'Cafe Cozy',
            'cover_url': null,
            'rating_label': '4.9',
            'rating_count': 210,
            'price_label': 'RpRp',
            'distance_label': null,
            'is_open_now': false,
            'is_favorited': true,
          }
        ],
      };
      final home = HomeResponse.fromJson(json);
      expect(home.categories.length, 1);
      expect(home.nearby.length, 1);
      expect(home.topRated.length, 1);
      expect(home.nearby.first.distanceLabel, '650 m');
      expect(home.topRated.first.isFavorited, true);
    });

    test('MapPointModel parses correctly', () {
      final json = {
        'id': 'point-1',
        'name': 'Resto Peta',
        'lat': -6.9932,
        'lng': 110.4203,
        'rating_label': '4.5',
      };
      final point = MapPointModel.fromJson(json);
      expect(point.name, 'Resto Peta');
      expect(point.lat, -6.9932);
      expect(point.lng, 110.4203);
      expect(point.ratingLabel, '4.5');
    });

    test('RestaurantDetailModel parses contract JSON', () {
      final json = {
        'id': 'resto-1',
        'name': 'Warung Bu Tini',
        'description': 'Warung makan enak',
        'cover_url': 'https://example.com/cover.jpg',
        'photos': ['https://example.com/p1.jpg'],
        'rating_label': '4.6',
        'rating_count': 128,
        'price_label': 'Rp',
        'is_open_now': true,
        'address': 'Jl. Pleburan No. 1',
        'phone': '08123456789',
        'lat': -6.99,
        'lng': 110.42,
        'categories': [
          {'id': 'c-1', 'name': 'Kopi', 'icon_url': null}
        ],
        'opening_hours': [
          {'day': 'Senin', 'open': '08:00', 'close': '21:00', 'is_closed': false}
        ],
        'is_favorited': false,
        'my_review': {
          'id': 'rev-1',
          'rating': 5,
          'comment': 'Sangat enak',
        },
        'top_reviews': [
          {
            'id': 'rev-2',
            'rating': 4,
            'comment': 'Mantap',
            'user': {'id': 'u-1', 'name': 'Budi', 'avatar_url': null},
            'created_label': '2 hari lalu',
            'is_mine': false,
          }
        ],
      };
      final detail = RestaurantDetailModel.fromJson(json);
      expect(detail.name, 'Warung Bu Tini');
      expect(detail.openingHours.first.day, 'Senin');
      expect(detail.myReview?.rating, 5);
      expect(detail.topReviews.first.user?.name, 'Budi');
    });

    test('MenuGroupModel and MenuItemModel parse correctly', () {
      final json = {
        'group': 'Minuman',
        'items': [
          {
            'id': 'm-1',
            'name': 'Es Kopi Susu',
            'price_label': 'Rp 18.000',
            'description': 'Kopi susu gula aren',
            'photo_url': null,
            'is_available': true,
          }
        ],
      };
      final group = MenuGroupModel.fromJson(json);
      expect(group.group, 'Minuman');
      expect(group.items.length, 1);
      expect(group.items.first.priceLabel, 'Rp 18.000');
      expect(group.items.first.isAvailable, true);
    });

    test('ProfileResponse parses contract JSON', () {
      final json = {
        'user': {
          'id': 'u-1',
          'name': 'Alice',
          'email': 'alice@test.com',
          'role': 'user',
          'status': 'active',
          'avatar_url': null,
        },
        'review_count': 3,
        'my_reviews': [
          {
            'id': 'rev-1',
            'rating': 5,
            'comment': 'Favorit keluarga',
            'created_label': 'Kemarin',
            'restaurant': {
              'id': 'r-1',
              'name': 'Resto A',
              'cover_url': null,
            },
          }
        ],
      };
      final profile = ProfileResponse.fromJson(json);
      expect(profile.user.name, 'Alice');
      expect(profile.reviewCount, 3);
      expect(profile.myReviews.first.restaurant.name, 'Resto A');
    });
  });
}
