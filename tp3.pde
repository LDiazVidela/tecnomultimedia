//https://youtu.be/2YEw8MW1ERw
int x=300, y=300, radio=1080;
boolean micolor=false;
int  coolor1=0, coolor2=0, coolor3=0;
int px=7, py=6;

void setup() {
  size(600, 600);
  noStroke();
  background(255);
  for (int i=0; i<=21; i++) {
    if (micolor==false) {  
      fill(0);
    } else {
      fill(255);
    }
    micolor=!micolor;
    circle((x+(px*(i))), (y+(py*(i))), radio -50*(i));
  }
}
void draw() {
  if (mousePressed) {
    background(255);
    for (int i=0; i<=21; i++) {
      if (micolor==false) {  
        fill(coolor1, coolor2, coolor3);
      } else {
        fill(255);
      }
      micolor=!micolor;
      circle((mouseX+(px*(i))), (mouseY+(py*(i))), radio -50*(i));
    }
    if (keyPressed) {
      if (key==' ') {
        coolor1= round(random(0, 255));
        coolor2= round(random(0, 255));
        coolor3= round(random(0, 255));
      }
    }
  }
}
void mouseReleased() {
  size(600, 600);
  noStroke();
  background(255);
  for (int i=0; i<=21; i++) {
    if (micolor==false) {  
      fill(0);
    } else {
      fill(255);
    }
    micolor=!micolor;
    circle((x+(px*(i))), (y+(py*(i))), radio -50*(i));
  }
}
