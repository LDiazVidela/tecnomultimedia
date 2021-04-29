PFont miTipografia;

void setup () {
  size(900, 600);
  miTipografia = loadFont ("CenturyGothic-48.vlw");
}

void draw() {

  background(230);
  textFont(miTipografia, 20);
  ellipseMode(CENTER);

  //coordenadas

  fill(0);
  text("CIRCULO   CROMÁTICO   RGB", 10, 20);



  //circulo principal
  fill(255);
  strokeWeight(5);
  ellipse(450, 300, 400, 400);

  //lineas primarios
  strokeWeight(3);
  line(450, 100, 616, 410);
  line(616, 410, 283, 410);
  line(283, 410, 450, 100);
  strokeWeight(2);
  line(616, 190, 450, 500);
  line(450, 500, 284, 190);
  line(284, 190, 616, 190);
  strokeWeight(1);
  line(545, 125, 650, 300);
  line(650, 300, 545, 475);
  line(545, 475, 353, 475);
  line(353, 475, 250, 300);
  line(250, 300, 353, 125);
  line(353, 125, 545, 125);








  //circulos
  strokeWeight(3);


  //1P
  fill(#FF0000);
  ellipse(450, 100, 100, 100);
  //2T
  fill(#FF7800);
  ellipse(545, 125, 50, 50);
  //3S
  fill(#FFFF00);
  ellipse(616, 190, 75, 75);
  //4T
  fill(#78FF00);
  ellipse(650, 300, 50, 50);
  //5P
  fill(#00FF00);
  ellipse(616, 410, 100, 100);
  //6T
  fill(#00FF78);
  ellipse(545, 475, 50, 50);
  //7S
  fill(#00FFFF);
  ellipse(450, 500, 75, 75);
  //8T
  fill(#0078FF);
  ellipse(353, 475, 50, 50);
  //9P
  fill(#0000FF);
  ellipse(283, 410, 100, 100);
  //10T
  fill(#7800FF);
  ellipse(250, 300, 50, 50);
  //11S
  fill(#FF00FF);
  ellipse(284, 190, 75, 75);
  //12T
  fill(#FF0078);
  ellipse(353, 125, 50, 50);
}
