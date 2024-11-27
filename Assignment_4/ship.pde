class ship{
  

  
  PImage[] ship;
  
  void setup(){
    //Start position
    shipPosX = 200;
    shipX = new PVector(shipPosX,5);
    posX = new PVector(5,5);
    
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
    if (shipX.x <= 0){
     shipX.x = 0; 
    }
    if (shipX.x >= width){
     shipX.x = width; 
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
