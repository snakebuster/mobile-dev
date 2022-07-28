import 'dart:io';
import 'dart:math';

void main(args) {
  int random = randomNumber();
  int number;
  do {
    print("Guess the number: ");
    number = int.parse(stdin.readLineSync()!);
    if (number == random) {
      print("same ${random}");
    } else {
      print("not the same");
    }
  } while (random != number);
}

int randomNumber() {
  Random random = new Random();
  int randomNum = random.nextInt(10);
  return randomNum;
}

// double price = await getPrice();
 // price = double.parse((price).toStringAsFixed(2));
 // showPrices(price);
