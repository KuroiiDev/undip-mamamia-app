import 'package:flutter_test/flutter_test.dart';
import 'package:mamamia/core/models/restaurant_card_model.dart';
import 'package:mamamia/core/widgets/restaurant_card.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  const sample = RestaurantCardModel(
    id: 'rest-1',
    name: 'Soto Bangkong',
    coverUrl: null,
    ratingLabel: '4.8',
    ratingCount: 350,
    priceLabel: 'RpRp',
    distanceLabel: '1.2 km',
    isOpenNow: true,
    isFavorited: false,
  );

  testWidgets('renders RestaurantCard in list variant', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: RestaurantCard(
            restaurant: sample,
            variant: RestaurantCardVariant.list,
          ),
        ),
      ),
    );

    expect(find.text('Soto Bangkong'), findsOneWidget);
    expect(find.text('4.8'), findsOneWidget);
    expect(find.text(' (350)'), findsOneWidget);
    expect(find.text('1.2 km'), findsOneWidget);
    expect(find.text('Buka'), findsOneWidget);
  });

  testWidgets('renders RestaurantCard in compact variant', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: RestaurantCard(
            restaurant: sample,
            variant: RestaurantCardVariant.compact,
          ),
        ),
      ),
    );

    expect(find.text('Soto Bangkong'), findsOneWidget);
    expect(find.text('4.8'), findsOneWidget);
    expect(find.text('RpRp'), findsOneWidget);
    expect(find.text('1.2 km'), findsOneWidget);
  });
}
