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
    
    //setup fired is false
    fired = false;

    imageMode(CENTER);
    laser = new PImage[4];
    for (int i = 0; i < laser.length; i++){
     laser[i] = loadImage("laserbullet" + (i + 1) + ".png");
    }
  }
  
  void visual(){
    if (fired == true){
    image(laser[frameCount/3 % laser.length], shipX.x - 1, laserPos.y);
    }
  }
  
  void physics(){
    //Checks if laser is fired
   if (mousePressed){
     fired = true;
   }
   if (!mousePressed && laserPos.y >= laserStartPos){
    fired = false; 
   }
    
   if (fired == true){
     laserPos.sub(laserVel.add(laserAcl));
    if (laserVel.y >= 10){
     laserVel.y = 10; 
    }
    if (laserPos.y <= 0){
     laserPos.y = laserStartPos; 
    }
   }
  }
  
}
