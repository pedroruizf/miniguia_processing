class pelota {
 float posx,posy,diametro,velx,vely;
 
 pelota (float x,float y) {
  posx=x;
  posy=y;
  diametro=random(100);
  velx=random(10);
  vely=random(10);
   
   }
  
  void dibujapelota() {
   ellipse (posx,posy,diametro,diametro); 
    
  }
  
  void muevepelota() {
    posx=posx+velx;
    posy=posy+vely;
    
    if (posx>width-diametro/2) {velx=-velx;}
    if (posx<diametro/2) {velx=-velx;}
    if (posy<diametro/2) {vely=-vely;}
    if (posy>height-diametro/2) {vely=-vely;}
    }
  
}
pelota pelota1,pelota2;

void setup() {
size (800,600);
pelota1= new pelota (random (width),random(height));
pelota2= new pelota (random (width),random(height));

}

void draw() {
 background(0);
  pelota1.dibujapelota();
 pelota1.muevepelota();
 pelota2.dibujapelota();
 pelota2.muevepelota();
   
}