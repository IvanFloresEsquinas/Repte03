class figura2{
  
  //Declarem les variables
  float x, y;
  float tx, ty;
  PImage img;
  
//Carreguem la imatge de la serp i li donem un unes posicions a la x i a la y.
figura2(){
  x = 0;
  y = 0;
  tx = 0.01;
  ty = 0.01;
  img = loadImage("serp.png");
}

//Al mètode update és on anirà actualitzant la posició dels eixos x i y.
void update(){
  x = map(noise(tx), 0, 1, 0, width);
  tx = tx+ random(0.00, 0.004);
  y = map (noise(ty), 0, 1, 0, height);
  ty = ty+ random(0.00, 0.004);
}

//Al mètode dibuixar és on mostrarem la imatge.
void dibuixar(){
  image (img, x,400,50,50);
  }
}
