boolean gameOver=true;
float posx;
float posy=height-5;
float velx=2;
float vely=2;
float acely=0;
int puntos=0;

void setup() {
size (800,600);
background(0);
posx=random (5,width-5);
rectMode (CENTER);
rect (width/2,height*0.9,60,10);
text ("puntos:",700, 100);
text (puntos,750,100);
//text ("puntos:",width*.9, height*.1);
//text ("puntos:",width*.9, height*.1);

}

void draw() {
  if (gameOver==true) {
  //textSize (16);
  text ("Presione una tecla para empezar",285,300);  
  
}
  
  else {
    background (0);
    //text ("puntos:",width+.9, height+.1);
    fill (255);
    text ("puntos:",700, 100);
    text (puntos,750,100);
    ellipse (posx,posy,10,10);
    vely=vely+vely*acely;
    posx=posx+velx;
    posy=posy+vely;
    rect (mouseX,height*0.9,60,10);
    if (posx>=width-5) {
     posx=width-5;
     velx=-velx;
    }
    if (posy>=height-5) {
     posy=height-5;
     vely=-vely;
    }
    
    if (posx<=5) {
     posx=5;
     velx=-velx;
    }
    
    if (posy<=5) {
     posy=5;
     vely=-vely;
    }
    if (posx>mouseX-30 && posx<mouseX+30 && posy==(height*0.9-5)) {
      vely=-vely;
      //acely=0.001;
      puntos=puntos+1;
      text (puntos,width*.9+10,height*.1);
      }
     }
 println(gameOver); 
}


void keyPressed () {
 if (gameOver==true) {
  gameOver=false;
  puntos=0;
  acely=0;
 }
  
}