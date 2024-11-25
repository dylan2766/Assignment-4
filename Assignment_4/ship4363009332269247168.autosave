class ship{
  
  PImage[] ship;
  
  void setup(){
   imageMode(CENTER);
   ship = new PImage[2];
   for(int i = 0; i < ship.length; i++){
    ship[i] = loadImage("ShipThrust" + (i + 1) + "_.png"); 
   }
  }
  
  void visual(){
   image(ship[frameCount/3 % ship.length], mouseX, mouseY); 
  }
  
}
