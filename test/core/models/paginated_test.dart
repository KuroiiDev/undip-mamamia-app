import 'package:flutter_test/flutter_test.dart';
import 'package:mamamia/core/models/paginated.dart';

void main() {
  group('Paginated', () {
    test('parses items and cursor correctly', () {
      final json = {
        'items': ['a', 'b', 'c'],
        'next_cursor': 'cursor123',
      };

      final paginated = Paginated<String>.fromJson(
        json,
        (obj) => obj.toString(),
      );

      expect(paginated.items, ['a', 'b', 'c']);
      expect(paginated.nextCursor, 'cursor123');
    });
  });
}
