Chaser chaser;
Balloon[] oneBalloon = new Balloon[10];

public void setup() {
  size(600,600);
  chaser = new Chaser();
  spawnBalloons();
}

public void draw() {
  background(220);
  chaser.move();
  chaser.draw();
  
  for (int i = 0; i < oneBalloon.length; i++) {
    oneBalloon[i].draw();
    oneBalloon[i].move();
    oneBalloon[i].outOfBounds();
    chaser.chase(oneBalloon);
  }
}

public void spawnBalloons() {
  for (int i = 0; i < oneBalloon.length; i++) {
    oneBalloon[i] = new Balloon(random(width), random(height));
  }
}
