import 'dart:svg';

import 'package:myproject/myproject.dart' as myproject;

///Main file

void main(List<String> arg) {
  final String name = "James";
  const int age = 25;
  List<String> name1;
  name1 = ["jonathan", "Jennie", "mei"];
  const int number2 = 2;

  helloTo(name, age);
  helloToOptional();
  helloToNamed(name: "Muhasin");
  helloToNamed(age: 11);
  helloToNamed(family: "Harden");
  print(name1);
  testIfElse(number2);
}

switchFunction() {
  int number3 = 2;
  switch (number3) {
    case 0:
      print("zero!");
      break;
    case 1:
      print("one!");
  }
}

// write a function which return "les than 5" if the value passed is less than 5
// "more than 5" if the value is more than 5
// "equal to 5" if the values passed is equal to 5
// use switch case

personal() {
  const int number4 = 4;
  const lessThan5 = number4 < 5;
  const equalTo5 = number4 == 5;
  const moreThan5 = number4 > 5;

  switch (number4) {
    case lessThan5:
      print("less than 5");
      break;
    case equalTo5:
      print("equal to 5");
      break;
    case moreThan5:
      print("more than 5");
      break;
  }
}

helloToOptional([String name = "Miew", int age = 2]) {
  print('$name , $age');
}

helloToNamed({String name = "Test", int age = 0, String family = "Wick"}) {
  print('$name , $age ,$family');
}

helloTo(name, age) {
  print('$name , $age');
}

testIfElse(number2) {
  if (number2 == 0) {
    print("equal 0");
  } else if (number2 > 0) {
    print("more than 0");
  } else {
    print("less than 1");
  }
}
