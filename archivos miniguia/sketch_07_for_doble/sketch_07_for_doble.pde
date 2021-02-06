int x;
int y;
background (0);
size (500, 500);  
fill (255); 


for (y=10; y<=height; y=y+20) {

  for (x=10; x<=width; x=x+20) {
    ellipse (x, y, 20, 20);
  }
}