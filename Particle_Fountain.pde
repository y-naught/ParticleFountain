ArrayList<Fountain> f;


void setup(){
  fullScreen(P2D);
  colorMode(HSB);
  f = new ArrayList<Fountain>();
  f.add(new Fountain(2));
}

void draw(){
  background(0);
  for(int i = 0; i < f.size(); i++){
   Fountain n  = f.get(i); 
   n.run();
  }
}

void mousePressed(){
  f.add(new Fountain(1));
}