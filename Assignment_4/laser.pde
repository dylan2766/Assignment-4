class laser{
  
  PImage[] laser;
  
  void setup(){
    
    //laser start position
    laserStartPos = 330;
    laserPosY = laserStartPos;
    laserAclY = 1;
    laserVel = new PVector(shipX.x,5);
    laserAcl = new PVector(shipX.x, laserAclY);
    laserPos = new PVector(shipX.x,laserStartPos);
    

    imageMode(CENTER);
    laser = new PImage[4];
    for (int i = 0; i < laser.length; i++){
     laser[i] = loadImage("laserbullet" + (i + 1) + ".png");
    }
  }
  
  void visual(){
    image(laser[frameCount/3 % laser.length], shipX.x - 1, laserPos.y);
  }
  
  void physics(){
    if (laserVel.y >= 10){
     laserVel.y = 10; 
    }
    if (laserPos.y <= 0){
     laserPos.y = laserStartPos; 
    }
    
   if (mousePressed){
    laserPos.sub(laserVel.add(laserAcl));
   }
  }
  
}
