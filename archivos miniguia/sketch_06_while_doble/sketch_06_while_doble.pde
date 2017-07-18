int x=10;
int y=10;
background (0);
size (500, 500);  
fill (255); 


while (y<=height) {
  x=10;
  while (x<=width) {
    ellipse (x, y, 20, 20);
    x=x+20;
    println (y);
  }
  y=y+20;
}