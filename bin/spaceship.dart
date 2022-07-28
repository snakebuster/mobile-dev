
import 'dart:io';
import 'dart:math';

Random random = Random();

abstract class SpaceShip {
  double health = 100;
  double firePower = 10;

  void hit();
  void isDestroyed();
}

class BattleField {
  void StartBattle(SpaceShip sp1, SpaceShip sp2) {
    do {
      sp1.hit();
        print("Spaceship 1 hitted by enemy.");
        print("Spaceship 1 health: ${sp1.health}"); 
        sleep(Duration(seconds: 3));
      sp2.hit();
        print("Spaceship 2 hitted by enemy.");
        print("Spaceship 2 health: ${sp2.health}"); 
        sleep(Duration(seconds: 3));
    } while (sp1.health > 0 && sp2.health > 0);

      if (sp1.health <= 0) {
        ArmoredSpaceShip().isDestroyed();
      } else if (sp2.health <= 0) {
        HighSpeedSpaceShip().isDestroyed();
      }
  }
}

class ArmoredSpaceShip extends SpaceShip {
  double maximumArmorPower = 0.9;
  late double randomizeArmorPower = random.nextDouble() * (1 - maximumArmorPower);

  @override
  void hit() {
    double damage = firePower - randomizeArmorPower;
    health = health - damage;
  }

  @override
  void isDestroyed() {
    print(
        "Spaceship 1 boom! Spaceship 2 win");
  }
}

class HighSpeedSpaceShip extends SpaceShip {
  @override
  void hit() {
    bool dodging =
        random.nextBool();

    if (dodging == false) {
      health = health - firePower;
    } else {
      health = health + 0;
    }
  }

  @override
  void isDestroyed() {
    print(
        "Spaceship 2 boom! Spaceship 1 win.");
  }
}



void main(List<String> args) {
  SpaceShip sp1 = ArmoredSpaceShip();
  SpaceShip sp2 = HighSpeedSpaceShip();
  BattleField().StartBattle(sp1, sp2);
}