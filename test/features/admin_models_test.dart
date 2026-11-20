import 'package:flutter_test/flutter_test.dart';
import 'package:mamamia/features/admin/data/models/admin_dashboard_model.dart';
import 'package:mamamia/features/admin/data/models/admin_store_model.dart';
import 'package:mamamia/features/admin/data/models/admin_user_model.dart';

void main() {
  group('Fase 8 Admin Models Parsing', () {
    test('AdminDashboardResponse parses correctly', () {
      final json = {
        'store_count': 10,
        'user_count': 35,
        'pending_count': 2,
        'open_report_count': 0,
        'pending_stores': [
          {
            'id': 'store-1',
            'name': 'Warung Soto Seger',
            'owner_name': 'Pak Budi',
            'address': 'Jl. Tembalang Raya',
            'created_at': '2026-11-20T10:00:00Z',
            'cover_url': 'http://localhost/soto.jpg',
          },
        ],
      };

      final model = AdminDashboardResponse.fromJson(json);
      expect(model.storeCount, 10);
      expect(model.userCount, 35);
      expect(model.pendingCount, 2);
      expect(model.openReportCount, 0);
      expect(model.pendingStores.length, 1);
      expect(model.pendingStores.first.name, 'Warung Soto Seger');
      expect(model.pendingStores.first.ownerName, 'Pak Budi');
    });

    test('AdminStoreItemModel parses correctly', () {
      final json = {
        'id': 'store-1',
        'name': 'Warung Soto Seger',
        'status': 'pending',
        'status_reason': null,
        'address': 'Jl. Tembalang Raya',
        'phone': '0812345678',
        'rating_avg': 4.5,
        'rating_count': 12,
        'cover_url': 'http://localhost/soto.jpg',
        'owner': {
          'id': 'owner-1',
          'name': 'Pak Budi',
          'email': 'budi@merchant.com',
        },
        'created_at': '2026-11-20T10:00:00Z',
      };

      final model = AdminStoreItemModel.fromJson(json);
      expect(model.id, 'store-1');
      expect(model.name, 'Warung Soto Seger');
      expect(model.status, 'pending');
      expect(model.owner, isNotNull);
      expect(model.owner!.email, 'budi@merchant.com');
      expect(model.ratingAvg, 4.5);
    });

    test('AdminUserModel parses correctly', () {
      final json = {
        'id': 'user-1',
        'name': 'Budi Pengguna',
        'email': 'budi@user.com',
        'role': 'user',
        'status': 'active',
        'banned_reason': null,
        'avatar_url': 'http://localhost/avatar.jpg',
        'created_at': '2026-11-20T10:00:00Z',
      };

      final model = AdminUserModel.fromJson(json);
      expect(model.id, 'user-1');
      expect(model.name, 'Budi Pengguna');
      expect(model.role, 'user');
      expect(model.status, 'active');
      expect(model.bannedReason, isNull);
    });
  });
}
