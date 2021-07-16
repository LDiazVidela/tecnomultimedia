int cantH=10, cantV=6, contadorClick=0;
PImage presentacion;
boolean click=false, clickfijado=false, iniciar=false, iniciar2; 
color colorRect=0, colorfijado=0, colorCirculo=255;
PFont miTipografia;




void setup() {
  size(587, 350);
  presentacion= loadImage("presentacion.png");
  miTipografia= createFont("Rubik-Bold.ttf", 55);
}

void draw() {
  println(click, clickfijado);
  textFont(miTipografia, 55);
  textAlign(CENTER);
  background(100);
  if (iniciar==false) {
    fill(random(0, 255), random(0, 255), random(0, 255));
    image(presentacion, 0, 0, width, height);
    text("ILUSIÓN ÓPTICA", width/2, height/6);
    fill(255);
    textFont(miTipografia, 25);
    text("INSTRUCCIONES", width/5, height/3);
    textFont(miTipografia, 20);
    text("HACER CLICK PARA ACTIVAR COLORES RANDOM", width/3+58, height/3+30);
    text("HACER CLICK PARA ESCOGER UN COLOR", width/3+19, height/3+60);
    text("PRESIONAR TECLA | R | PARA REINICIAR LA ILUSIÓN", width/3+73, height/3+90);
    text("PRESIONAR TECLA | I | PARA VER INSTRUCCIONES", width/3+65, height/3+120);
    fill(100);
    rect(380, 295, 200, 50);
    textFont(miTipografia, 27);
    fill(255);
    text("COMENZAR", 480, 330);
  }

  ellipseMode(CENTER);

  //ILUSIÓN ÓPTICA 
  //RECTANGULOS
  if (iniciar==true) {
    contadorClick++;
    for (int b=0; b<cantV; b= b+1) {
      for (int a=0; a<cantH; a= a+1) {
        fill(colorRect);
        rect(0, 60*b, 50, 50);
        translate(60, 0);
      }
      translate(-60*(cantH), 0);
    }
    translate(0, 55);


    //CIRCULOS
    for (int ev=0; ev<(cantV-1); ev= ev+1) {
      for (int eh=0; eh<(cantH); eh= eh+1) { 
        fill(colorCirculo);
        noStroke();
        ellipse(55, 60*ev, 15, 15);  
        translate(60, 0);
      }
      translate(-60 * (cantH), 0);
    }
  }

  //INTERACTIVIDAD
  if (click==false && clickfijado==true &&contadorClick >=0 && iniciar2==true ) {
    colorRect= color(random(0, 90), random(0, 90), random(0, 90));
  }
  if (clickfijado==false && click==true && contadorClick >2) {
    colorRect= colorfijado;
  } else if (click==false && clickfijado==true) {
    colorRect= color(random(0, 90), random(0, 90), random(0, 90));
  }
}


void mouseClicked() {
  contadorClick ++;
  if (clickfijado==true) {
    colorRect= colorfijado;
  }
  if (click==false) {
    click=true;
  } else if (click==true && contadorClick >2  ) {
    clickfijado= true;
    click=false;
    colorfijado=color(random(0, 90), random(0, 90), random(0, 90));
  }
  if (iniciar==false && mouseX >380 && mouseX<380+200 && mouseY >295 && mouseY <295+50) {
    iniciar=true;
  }
  if (iniciar==true && contadorClick>1) {
    iniciar2=true;
  }
 
}
   void keyPressed(){
 
    if (key=='R' || key=='r') {
    colorRect=0;
    click=true;
    contadorClick=0;
  }
    if (key=='I' || key=='i') {
    iniciar=false;
  }
  
  
  
}
