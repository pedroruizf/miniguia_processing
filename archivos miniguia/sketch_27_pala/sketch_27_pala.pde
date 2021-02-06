boolean gameOver = true; 
int score1;
float posY; 
float posX; 
int speedX;
float speedY;

void setup () {
  size(500, 500); 
  posX = width/2; //posición X de pelota
  posY = height/2; //posición y de pelota
  speedX = 2; //velocidad x de pelota
  speedY= -5; //velocidad y de pelota
  score1= 0;//marcador
  rectMode(CENTER);
}

void draw () {
  background(0);

  if (gameOver == true) {//si la variable gameOver es verdadera
    textAlign(CENTER);
    textSize(14);
    text ("Press a Key", width/2, (height/2)+20);
    textSize(20);
    text ("GAME OVER", width/2, height/2);
  } 
  else {// en caso que gameOver sea falsa vamos a jugar

    fill(255);
    rect( mouseX, height*0.9, 60, 10);//dibujamos la pala
    fill(255);
    ellipse(posX, posY, 10, 10);//dibujamos la pelota

    if (posY< 0) {// si la pelota está arriba del todo, cambiamos sentido 
      speedY= - speedY;
      posY= 0;
    }

    if (posY >height) {// si la pelota está abajo del todo termina la partida
      posX = width/2;
      posY = height/2;
      gameOver = true;
      speedX = speedX ;
      speedY = speedY ;
    }
    if (posX> width) {//si la pelota llega a la derecha cambia de sentido
      speedX= - speedX;
      posX= width;
    }

    if (posX< 0) {//si la pelota llega a la izquierda cambia de sentido
      speedX= - speedX;
      posX= 0;
    }

    
    if (posX > mouseX-30 && posX < mouseX + 30 && posY > 0.9*height-5 && posY < 0.9*height+5) {
      //este if controla que esté tocando la pala
      speedX = speedX;
      speedY = -1*speedY;
      score1= score1+1;
    } 
    else {// si no toca la pala

      text(score1, 320, 30);
    }

    println(posY);
    posX= posX + speedX; 
    posY= posY + speedY;
  }
}

void keyPressed() {
  if (gameOver == true) {
    gameOver = false;
    score1=0;
  }
}