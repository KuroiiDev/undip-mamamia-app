import 'package:flutter_test/flutter_test.dart';
import 'package:mamamia/core/widgets/rating_stars.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  group('RatingStars Widget Tests', () {
    testWidgets('renders 5 stars with proper icons for integer rating', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RatingStars(rating: 4.0),
          ),
        ),
      );

      expect(find.byType(Icon), findsNWidgets(5));
      expect(find.byIcon(Icons.star_rounded), findsNWidgets(4));
      expect(find.byIcon(Icons.star_outline_rounded), findsOneWidget);
    });

    testWidgets('renders half star for decimal rating', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RatingStars(rating: 3.5),
          ),
        ),
      );

      expect(find.byType(Icon), findsNWidgets(5));
      expect(find.byIcon(Icons.star_rounded), findsNWidgets(3));
      expect(find.byIcon(Icons.star_half_rounded), findsOneWidget);
      expect(find.byIcon(Icons.star_outline_rounded), findsOneWidget);
    });

    testWidgets('triggers onChanged when tapped in interactive mode', (tester) async {
      int? selectedRating;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: RatingStars(
              rating: 2.0,
              onChanged: (val) => selectedRating = val,
            ),
          ),
        ),
      );

      // Tap on the 5th star
      final icons = find.byType(Icon);
      await tester.tap(icons.at(4));
      await tester.pump();

      expect(selectedRating, 5);
    });
  });
}
