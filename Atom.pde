class Atom {
  
  float size = 10;
  PVector position;
  PVector velocity = new PVector(random(-2, 2), random(-2, 2));
  
  Atom() { 
    position = new PVector(random(0, width), random(0, height));
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(position.x,position.y,-size,size);
    line(position.x, position.y, position.x+velocity.x, position.y+velocity.y);
  }
  
  void step() {
    position = PVector.add(position, velocity);
    if ((position.x > width) || (position.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((position.y > height) || (position.y < 0)) {
      velocity.y = velocity.y * -1;
    }
  }
  
  void collide(Atom[] atoms) {
    for (Atom other : atoms) {
      float distance = position.dist(other.position);
      if ( distance < size && distance != 0) {
        velocity.rotate(180);
        break;
      }
    }
  }
        
}
