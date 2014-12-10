int count = 50;
int collide = 0;
Atom[] atoms;

void setup() {
  size(640,360);
  //create particles
  // particle array
  atoms = new Atom[count];
  for (int i = 0; i < count; i++) {
    atoms[i] = new Atom();
  }
}

void draw() {
  background(255);
  for (Atom p : atoms) {
    p.step();
    p.collide(atoms);
    p.display();
  }
}
