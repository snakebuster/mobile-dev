import 'package:test/expect.dart';

class Car {
  String manufacturer;
  String model;
  String color;

  Car(this.manufacturer, this.model, this.color);

  void honk() {
    print("Honking noise");
  }

  void moveFoward(int speed) {
    print("Move $speed foward");
  }
}

final myCar = Car("Toyota", "Corolla", "Red");
final elonCar = Car("Tesla", "Model S", "Black");
final karenCar = Car("Nissan", "Altima", "Silver");

void main() {
  myCar.moveFoward(50);
  //print("manufacturer: ${myCar.manufacturer}, model: ${myCar.model}, Colour: ${myCar.color}");
  //print("manufacturer: ${elonCar.manufacturer}, model: ${elonCar.model}, Colour: ${elonCar.color}");
  // print("manufacturer: ${karenCar.manufacturer}, model: ${karenCar.model}, Colour: ${karenCar.color}");
}
