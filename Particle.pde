class Particle{
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  boolean isDead;
  int firstFrame;
  int lifeSpan;
  float hue;
  
 Particle(int l){
   hue = random(200, 255);
   location = new PVector(width / 2, 0);
   velocity = new PVector(random(-2,2), random(5, 10));
   acceleration = new PVector(0,0);
   firstFrame = frameCount;
   isDead = false;
   lifeSpan = l;
 }
 
 void update(){
   velocity.add(acceleration);
   location.add(velocity);
   if(frameCount - firstFrame > lifeSpan){
    isDead = true; 
   }
 }
 void display(){
   stroke(hue, 255, 255);
   strokeWeight(4);
   point(location.x, location.y);
 }
}