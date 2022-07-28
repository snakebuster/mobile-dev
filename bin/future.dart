import 'dart:async';
import 'dart:math';

void main() async {
  //double price = await getPrice();
  //showPrices(double.parse((price).toStringAsFixed(2)));

  getPriceStream().listen((data) {
    showPrices(
    data
    );
  });
}

Future<String> getPrice() {
  final random = Random();
  final int seconds = Random().nextInt(5);
  final double randomValue = random.nextDouble() * 1000;
  final String text = '${randomValue.toStringAsFixed(2)} was generated in $seconds seconds';
  return Future.delayed(
    Duration(seconds: seconds),
    () => text,
  );
}

void showPrices(String price) {
  print(price);
}

Stream<String> getPriceStream() async* {
  final int numberOfResults = 10;
  for (var i = 0; i < numberOfResults; i++) {
    final price = await getPrice();
    yield price;
  }
}
