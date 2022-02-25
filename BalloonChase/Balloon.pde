public class Balloon {
  public PVector pos, vel, acc;
  public int size;
  public float MAX_SPEED = .5;
  
  public Balloon(float x, float y) {
    size = (int)random(3,20);
    pos = new PVector(x,y);
    vel = PVector.random2D().mult(MAX_SPEED);
    acc = PVector.random2D().mult(MAX_SPEED * 0.1);
  }
  
  public void move() {
    acc = PVector.random2D().mult(MAX_SPEED * 0.1);
    vel.add(acc);
    pos.add(vel); 
  }
  
  public void outOfBounds() {
    if(pos.x + size <= 0) {
      pos.x = width;
    }  
    if (pos.x - size >= width) {
      pos.x = 0;
    }
    if(pos.y + size <= 0) {
      pos.y = height;
    }  
    if (pos.y - size >= height) {
      pos.y = 0;
    }
  }
  
  public void draw() {
    fill(255,0,0);
    circle(pos.x,pos.y,size);
  }
}
