PShape tree;
PImage txtr;
float theta ;


void setup() {
  size (600, 600, P3D);
  txtr = loadImage("tree.jpg");
  tree = loadShape("Lowpoly_tree_sample.obj");
  tree.setTexture(txtr); //attach texture to the 3D shape

}


void draw () {
  background (0);
  lights();
  
  pushMatrix();
  translate (width/2, height/2);
  rotateX(28);
  rotateY(theta);
  scale (8);
  shape (tree);
  popMatrix();

  theta+=.01; //increment angle

}
