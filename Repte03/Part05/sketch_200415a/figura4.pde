class figura4{

//Declarem les variables
float x = random(width);
float y = random(-500, -50);
float z = random(0, 20);
float len = map(z, 0, 20, 10, 20);
float yspeed = map(z, 0, 20, 1, 20);

//Al mètode fall, és on donem la velocitat a la qual s'han de moure les línies simulant efecte de pluja.
void fall(){ 
  y = y + yspeed;
  float grav = map(z, 0, 20, 0, 0.2);
  yspeed = yspeed + grav;
  if (y > height){
  y = random(-200, -100);
  yspeed = map(z, 0, 20, 4, 10);
  }
}

//Al mètode show, és on mostrem i creem les línies de la pluja.
void show(){
  float thick = map(z, 0, 20, 1, 2);
  strokeWeight(thick);

  stroke (134,43,226);
  line(x,y,x,y + len);
  }
}
