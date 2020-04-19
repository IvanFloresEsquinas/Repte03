class Mover {

  //Decalem les variables de tipus PVector i float.
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  //Li donem una velocitat, una posició i una acceleració a l'objecte.
  Mover() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001,0.01);
    topspeed = 10;
  }

 void update() {
 
   //Perquè tingui una velocitat i una acceleració ranom utilitzarem el random2D.
   //El qual farà que sempre apunti cap a una direcció aleatòria.
    acceleration = PVector.random2D();
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
}
