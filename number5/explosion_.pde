class EnemyParticles extends GameObject {

  //CONS
  EnemyParticles(float x, float y, float vx, float vy, color c) {
    super(x, y, random(vx+5), random(vy+5), 1, c, 10);
  }

  void act() {

    super.act();
    // KILL YA SELF
    if (timer<0) {
      lives=0;
    }
  }
  void show() {
    super.show();
  }
}
