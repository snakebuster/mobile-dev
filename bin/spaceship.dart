abstract class SpaceShip {
  int health;
  int firePower;

  SpaceShip(this.firePower, this.health);

  void shoot() {
    firePower = 200;
  }

  void buff() {
    health = 500;
  }
}

class BattleField {
  void startBattle(SpaceShip sp1, SpaceShip sp2) {}
}

class ArmoredSpaceShip implements SpaceShip {
  @override
  void buff() {
    health = 1000;
    print(health);
  }
}

class HighSpeedSpaceShip implements SpaceShip {
  @override
  void shoot() {
    firePower = 500;
  }
}
