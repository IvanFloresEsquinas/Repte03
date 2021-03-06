class figura3{
  
  //Declarem les variables
  PVector pos;
  PVector acel;
  PVector vel;
  PImage img;

//Li donem una posició, una velocitat i una acceleració a l'objecte.
//També carreguem la imatge de les papellones.
figura3(){
  pos = new PVector (random(width), random(height));
  vel = new PVector (0, 0);
  acel  = new PVector (-0.1, 0.01);
  img = loadImage("papallones.png");
}

//Al mètode update és on anirà actualitzant la velocitat, la posició i l'acceleració.
void update(){
  acel = PVector.random2D();
  acel.mult(random(2));
  vel.add(acel);
  vel.limit(3);
  pos.add(vel);
}

//Al mètode dibuixar és on mostrarem la imatge de les papellones amb les seves mides.
void dibuixar(){
  image (img, pos.x+5, pos.y+5, 50 ,50);
}

//Al mètode velocitat és on li direm per on s'ha de moure i amb quina velocitat.
void velocitat(){
  if((pos.x > width || pos.x < 0)){
  vel.x = vel.x* -1.01;
}

if((pos.y > width) || (pos.y < 0)){
  vel.y = vel.y* - 1.01;
    }
  }
}
