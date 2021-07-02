PFont fuente;
PImage portada, tom, huckleberry, becky;
int pantalla = 1;
int postext1 = round(random(-100, 0)); 
int postext2 = round(random(600, 500));
int postext3 = round(random(-100, 0)); 
int postext4 = round(random(600, 500));
int postext5 = round(random(-100, 0));
int postext6 = round(random(600, 500));
int contador =1, contador2 =1, contador3 =1, contador4 =1, contador5= 1, contador6=1;
int velocidadtext1=3, velocidadtext2=3, velocidadtext3=3, velocidadtext4=3, velocidadtext5=3, velocidadtext6=3;


void setup() {
  size(700, 500);
  fuente= loadFont("Serif.plain-48.vlw");
  portada= loadImage("7.jpg");
  tom= loadImage("13.jpg");
  huckleberry= loadImage("16.png");
  becky= loadImage("15.jpg");
}

//Titulo

void draw() {

  if (pantalla == 1) {
    contador6=0;
    background(255);
    textFont(fuente, 55); 
    textAlign(CENTER);
    textLeading(25);
    image(portada, 0, 0, width, height );
    //line(width/2,0,width/2, 500);
    fill(0);
    text("LAS AVENTURAS DE", width/2, postext1-75);
    textFont(fuente, 62);
    text("TOM SAWYER", width/2, postext1);
    postext1 =   postext1 + velocidadtext1;
  }
  if (postext1>200) {
    postext1 =200;
  }
  if (postext1>=200 && pantalla==1 ) {
    noStroke();
    fill(0, 200);
    ellipseMode(CENTER);
    ellipse (width/2-10, height/2 + 50, 125, 125); 
    //line(width/2,0,width/2, 500);
    textSize(20);
    fill(255);
    text("VER ", width/2-7, height/2 + 45);
    text("CREDITOS ", width/2-7, height/2 + 65);
  }



  if (mousePressed && pantalla==1 && dist(mouseX, mouseY, width/2-10, height/2 + 50)<60 && postext1>199 ) {

    pantalla ++;
  }

  //TOM SAWYER


  if (pantalla==2) {
    textFont(fuente, 38);
    image(tom, 0, 0, width, height);
    fill(255);
    text("TOM SAWYER REPRESENTANDO A", width/2, postext2);
    textFont(fuente, 50);
    text("TOM SAWYER", width/2, postext2+75);    
    postext2 = postext2- velocidadtext2;
  }

  if (postext2 <=height/2 && pantalla==2) {
    postext2= height/2;
    contador ++;
  }
  if (contador>=120) {
    pantalla=3;
  }
  //HUCK 
  if (pantalla==3) {
    textFont(fuente, 38);  
    image(huckleberry, 0, 0, width, height );
    fill(0);
    text("HUCKLEBERRY REPRESENTANDO A", width/2, postext3-75);
    textFont(fuente, 50);
    text("HUCKLEBERRY", width/2, postext3);
    postext3 = postext3 + velocidadtext3;
  }
  if (postext3 >=height/2 && pantalla==3) {
    postext3= height/2;
    contador2 ++;
  }
  if (contador2>=120) {
    pantalla=4;
  }

  //BECKY TATCHER
  if (pantalla==4) {

    image(becky, 0, 0, width, height);
    fill(255);
    textFont(fuente, 38);
    text("BECKY TATCHER REPRESENTANDO A", width/2, postext4 );
    textFont(fuente, 50);
    text("BECKY TATCHER", width/2, postext4+75);    
    postext4= postext4 - velocidadtext4;
  }

  if (postext4 <=height/2 && pantalla==4) {
    postext4= height/2;
    contador3 ++;
  }
  if (contador3>=120) {
    pantalla=5;
  }

  //MÚSICA
  if (pantalla==5) {
    textAlign(CENTER);
    background(255, 0, 0, 100);
    fill(255);
    textFont(fuente, 38);
    text("MÚSICA", width/2, postext5 );
    textFont(fuente, 50);
    text("LORENZO DIAZ VIDELA ", width/2, postext5+75);    
    postext5= postext5 + velocidadtext5;
  }

  if (postext5 >=height/2-50 && pantalla==5) {
    postext5= height/2-50;
    contador4 ++;
  }
  if (contador4>=120) {
    pantalla=6;
  }

  //ESCRITOR
  if (pantalla==6) {

    textAlign(CENTER);
    background(255, 0, 0, 100);
    fill(255);
    textFont(fuente, 38);
    text("DIRECTOR", width/2, postext6 );
    textFont(fuente, 50);
    text("LORENZO DIAZ VIDELA", width/2, postext6+75);    
    postext6= postext6 - velocidadtext6;
  }

  if (postext6 <=height/2-100 && pantalla==6) {
    postext6= height/2-100;
    contador5 ++;
  }
  if (contador5>=120 && pantalla ==6) {
    pantalla=7;
  }
  //BOTON DE REINICIO
  if (contador5>=120 && pantalla==7) {
    noStroke();
    textAlign(CENTER);
    fill(0, 200);
    ellipseMode(CENTER);
    ellipse (width/2, height/2+100, 125, 125); 
    textSize(20);
    fill(255);
    textAlign(CENTER);
    text("VER DE", width/2, height/2 + 100);
    text("NUEVO", width/2, height/2 +120);
    contador6 ++;
  }
  //REINICIAR
  if (pantalla==7 && mousePressed &&   dist (width/2, height/2+100, mouseX, mouseY) <60   || contador6 > 250 ) {
    contador5=0;
    contador4=0;
    contador3=0;
    contador2=0;
    contador=0;
    pantalla=1;
    postext1 = round(random(-100, 0)); 
    postext2 = round(random(600, 500));
    postext3 = round(random(-100, 0)); 
    postext4 = round(random(600, 500));
    postext5 = round(random(-100, 0));
    postext6 = round(random(600, 500));
  }



  println(contador6);
}
