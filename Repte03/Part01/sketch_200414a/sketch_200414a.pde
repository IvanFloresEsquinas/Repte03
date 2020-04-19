class Mover {

  //Decalem les variables de tipus PVector i float.
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  int x,y;

  Mover() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001,0.01);
    topspeed = 10;
  }

 void update() {
    
    acceleration = new PVector(random(-1,1),random(-1,1));
    acceleration.normalize();
     ellipse (x, y, 7, 7);
    
    //Fem que la velocitat canvi per l'acceleració 
    //I limitem la velocitat màxima.
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  
  // display() is the same

  // checkEdges() is the same

}
