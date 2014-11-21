class Atom {
  
  float x;
  float y;
  float vx = 1;
  float vy = 3.3;
  
  Atom() { 
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(x,y,16,16);
  }
  
  void step() {
    x += vx;
    y += vy;
    if ((x > width) || (x < 0)) {
      vx = vx * -1;
    }
      if ((y > height) || (y < 0)) {
      vy = vy * -1;
    }
  }
}
