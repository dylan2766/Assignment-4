class laser{
  
  PImage[] laser;
  
  void setup(){
    
    //laser start position
    laserPosY = 330;
    laserAclY = 1;
    laserVel = new PVector(shipX.x,5);
    laserAcl = new PVector(shipX.x, laserAclY);
    laserPos = new PVector(shipX.x,laserVel.y);
    

    imageMode(CENTER);
    laser = new PImage[4];
    for (int i = 0; i < laser.length; i++){
     laser[i] = loadImage("laserbullet" + (i + 1) + ".png");
    }
  }
  
  void visual(){
    image(laser[frameCount/3 % laser.length], shipX.x - 1, laserPosY);
  }
  
  void physics(){
    if (laserVel.y >= 10){
     laserVel.y = 10; 
    }
    
   if (mousePressed){
    laserPos.sub(laserVel.add(laserAcl));
   }
  }
  
}
