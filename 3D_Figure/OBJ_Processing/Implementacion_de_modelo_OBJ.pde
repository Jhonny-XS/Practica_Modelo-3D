PShape tree;
PImage txtr;
float theta ;
float posX = 0; // Posición en el eje X
float posY = 0; // Posición en el eje Y
float angulo = 28; // Ángulo de rotación inicial
float tamaño = 8; // Tamaño inicial del cuadrado
float velocidad = 0.01; // Tamaño inicial del cuadrado

void setup() {
  size (600, 600, P3D);
  rectMode(CENTER); // Configurar el modo de dibujo a centro
  txtr = loadImage("tree.jpg");
  tree = loadShape("Lowpoly_tree_sample.obj");
  tree.setTexture(txtr); //attach texture to the 3D shape
}

void draw () {
  background (0);
  lights();
  pushMatrix();
  //Mover la posición del objeto 3D
  translate (width/2 + posX, height/2 + posY);
  //Rotar el 3D
  rotateX(angulo);  //Para rotar hacia adelante o enfrente 
  rotateY(theta);   //Mantenerlo rotando
  scale(tamaño);   //Aumentar de tamaño
  shape (tree);
  popMatrix();
  theta+=velocidad; //hacer girar el objeto   3D
}

void keyPressed() {
  if (key == '1') {
    // Rotar hacia atrás cuando se presiona "1"
    angulo += 0.2; // Incrementar el ángulo
  } else if (key == '2') {
    // Rotar hacia enfrente cuando se presiona "2"
    angulo -= 0.2; // Decrementar el ángulo
  }else if (key == 't') {
    // Trasladar en el eje X hacia la derecha cuando se presiona "t"
    posX += 10; // Incrementar la posición en X
  } else if (key == 'r') {
    // Trasladar en el eje Y hacia arriba cuando se presiona "r"
    posY -= 10; // Decrementar la posición en Y (hacia arriba en la pantalla)
  } else if (key == 'y') {
    // Trasladar en el eje X hacia la izquierda cuando se presiona "y"
    posX -= 10; // Decrementar la posición en X
  } else if (key == 'e') {
    // Trasladar en el eje Y hacia abajo cuando se presiona "e"
    posY += 10; // Incrementar la posición en Y (hacia abajo en la pantalla)
  } else if (key == 'a') {
    // Hacer la figura 3D más grande en cuando se presiona "a"
    tamaño += 0.5; // Incrementar el tamaño
  } else if (key == 's') {
    // Hacer la figura 3D más pequeña en cuando se presiona "s"
    tamaño -= 0.5; // Decrementar el tamaño
  } else if (key == '+') {
    // Incrementar la velocidad de rotación cuando se presiona "+"
    velocidad += 0.1; 
  } else if (key == '-') {
    //Decrementar la velocidad de rotación cuando se presiona "-"
    velocidad -= 0.1; 
  } else if (key == '*') {
    // Regresar a la velocidad inicial de rotación cuando se presiona "*"
    velocidad = 0.01; 
  }
}
