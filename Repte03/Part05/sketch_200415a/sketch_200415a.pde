
//Declarem totes les variables.
ArrayList<figura1>ocell = new ArrayList<figura1>();
ArrayList<figura2>serp = new ArrayList<figura2>();
ArrayList<figura3>papallones = new ArrayList<figura3>();

figura4 [] figuralluvia = new figura4[500];
PImage nubes;


void setup(){
  
  //Li donem unes mides a la finestra i carreguem la imatge.
  size(500, 500);
  nubes = loadImage("nubes.png");
  
 //Afegim l'efecte de pluja.
  for(int i = 0; i < figuralluvia.length; i++){
    figuralluvia[i] = new figura4();
  }
  
  //Anem afegint tots els objectes un per un.
  //Donant una posició i per on s'han de moure.
  for(int i = 0; i < 3; i++){
  ocell.add(new figura1());
  }
  
  for(int i = 0; i < 10; i++){
  serp.add(new figura2());
  }
  
  for(int i = 0; i < 2; i++){
  papallones.add(new figura3());
  }
}


void draw(){
  
  //Li donem un color al fons.
  background(200);
  
  //Cridem tots els mètodes que tenim fets a les altres classes.
  //Per tal de poder veure els objectes.
  for(int i = 0; i < 3; i++){
  ocell.get(i).update();
  ocell.get(i).dibuixar();
  ocell.get(i).velocitat();
  }
  
  for(int i = 0; i < 10; i++){
  serp.get(i).update();
  serp.get(i).dibuixar();
  }
  
   for(int i = 0; i < 2; i++){
  papallones.get(i).update();
  papallones.get(i).dibuixar();
  papallones.get(i).velocitat();
  }
 
 //Cridem als mètodes per fer l'efecte de pluja.
 for(int i = 0; i < figuralluvia.length; i++){
    figuralluvia[i].fall();
    figuralluvia[i].show();
  }
  
  //Mostrem els núvols amb les seves mides i la seva posició
  image(nubes, -20, -10, 200 , 100);
  image(nubes, 0, -10, 200 , 100);
  image(nubes, 50, -20, 200 , 100); 
  image(nubes, 510, -10, 200 , 100);
  image(nubes, 400, -10, 200 , 100);
  image(nubes, 300, -10, 200 , 100);
  image(nubes, 190, -10, 200 , 100);
  
}
