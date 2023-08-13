float x = 50;          // Posición x de la carita
float y = 50;          // Posición y de la carita
float velocidad = 2;    // Velocidad de movimiento
float metaX = 535;       // Posición x de la meta

boolean reachedGoal = false;

void setup() {
  size(600,600);
}

void draw() {
  background(19,199,199);

  // Si no ha llegado a la meta, dibujar el camino, gradas, obstáculos, la carita y moverla
  if (!reachedGoal) {
    drawPath();
    moveCharacter();
    checkGoal();
    drawFace(x, y);
  } else {
    textSize(40);
    fill(0);
    text("Sos un genio", width / 2 - 160, height / 2);
  }
  
  // Dibujar la bandera de Estados Unidos como meta

}

void drawPath() {
      fill(0);
    rect(580,550,5,50);
    //palo de bandera
     fill(255,0,0);
     rect(535,535,50,25);
     //bandera
     fill(0,34,255);
     rect(535,535,15,10);
     //bandera logo
     fill(255);
     rect(550,535,34,10);
     //bandera logo
     fill(60,255,0);
         rect(0,75,350,20);
    //bajada uno
    rect(115,195,1500,20);
    //bajada dos
    rect(0,350,350,20);
    //bajada tres
    rect(115,480,1500,20);
    //bajada cuatro
    rect(0,580,15000,20);
    //bajada cinco
}

void moveCharacter() {
  // Mover la carita según las teclas presionadas
  if (keyPressed) {
    if (keyCode == UP) {
      y -= velocidad;
    } else if (keyCode == DOWN) {
      y += velocidad;
    } else if (keyCode == LEFT) {
      x -= velocidad;
    } else if (keyCode == RIGHT) {
      x += velocidad;
    }
  }
}



void checkGoal() {
  // Verificar si la carita llegó a la meta
  if (x >= metaX) {
    reachedGoal = true;
  }
}

void drawFace(float posX, float posY) {
  // Carita feliz
  fill(1235,173,65);
  ellipse(posX, posY, 50,50);    // Cabeza
  
  fill(255);
  ellipse(posX - 20, posY - 20, 20, 20);  // Ojo izquierdo
  ellipse(posX + 20, posY - 20, 20, 20);  // Ojo derecho
  
  fill(0);
  ellipse(posX - 20, posY - 20, 10, 10);  // Pupila izquierda
  ellipse(posX + 20, posY - 20, 10, 10);  // Pupila derecha
  
  fill(209,45,45);
  arc(posX, posY + 5,30,30,0,PI);   // Boca
}
