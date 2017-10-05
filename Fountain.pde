class Fountain{
  
 ArrayList<Particle> Particles;
 int number;
 
 Fountain(int n){
   number = n;
   Particles = new ArrayList<Particle>();
   for(int i = 0; i < number; i++){
     Particles.add(new Particle(int(random(10, 20))));
   }
   
 }
 
 void run(){
   Particles.add(new Particle(int(random(100, 150))));
   for(int i = 0; i < Particles.size(); i++){
   Particle p = Particles.get(i);
   p.update();
   p.display();
   if(p.isDead == true){
    Particles.remove(i); 
   }
   }
 }
 }