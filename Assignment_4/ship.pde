class ship{
  
  PImage[] ship;
  
  void setup(){
    //Setup
    shipPosX = 200;
    shipX = new PVector(shipPosX,0);
    posX = new PVector(8,0);
    
   imageMode(CENTER);
   ship = new PImage[2];
   for(int i = 0; i < ship.length; i++){
    ship[i] = loadImage("ShipThrust" + (i + 1) + "_.png"); 
   }
  }
  
  void visual(){
   image(ship[frameCount/3 % ship.length], shipX.x, 350); 
  }
  
  void move(){
    //Ship movement constraints
    if (shipX.x <= 10){
     shipX.x = 10; 
    }
    if (shipX.x >= width - 10){
     shipX.x = width - 10; 
    }
    
    //Left and right movement
    if (keyPressed){
      if (key == 'a' || key == 'A'){
        shipX.sub(posX);
      }
      if (key == 'd' || key == 'D'){
        shipX.add(posX);
      }
    }
  }
}
