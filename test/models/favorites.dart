import 'package:flutter_test/flutter_test.dart';
import 'package:test_practice2/models/favorites.dart';

void main() {
  group('Testing App Provider', () {
    var favorites = Favorites();

    test('A new item should be added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test(
      'should remove an item',
      () {
        // arrange
        var number = 45;

        // act
        favorites.add(45);

        // assert
        expect(favorites.items.contains(45), true);

        favorites.remove(45);
        expect(favorites.items.contains(45), false);
      },
    );
  });
}
