void main() async {
  final Animal duck = Duck();
  final Animal cat = Cat();
  final Animal animal1 = Animal();

  duck.makeSound();
  cat.makeSound();
  animal1.makeSound();
}

class Animal {
  void makeSound() {
    print("animal make sound");
  }
}

class Duck extends Animal {}

class Cat extends Animal {
  @override
  void makeSound() => print("meow");
}
