class Human {
  void walk() {
    print("Human walk");
  }
}

class Person extends Human {
  void speak() {
    print("Human Speak");
  }
}

void main() {
  Person p = new Person();
  p.speak();
  p.walk();
}
