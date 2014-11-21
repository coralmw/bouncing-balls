Atom p;

void setup() {
  size(640,360);
  //create particles
  // particle array
  p = new Atom();
}

void draw() {
  background(255);
  p.step();
  p.display();
}
