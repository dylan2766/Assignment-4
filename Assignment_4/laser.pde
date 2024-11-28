class laser{
  
  PImage[] laser;
  float laserAccel;
  
  void setup(){
    
    //laser start position
    laserStartPos = 330;
    laserSpd = 5;
    laserAclY = 1;
    laserVel = new PVector(shipX.x,laserSpd);
    laserAcl = new PVector(0, laserAclY);
    laserPos = new PVector(shipX.x,shipX.y);
    
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
    image(laser[frameCount/3 % laser.length], shipX.x, laserPos.y);
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
    if (laserVel.y >= 20){
     laserVel.y = 20; 
    }
    //reset position and speed
    if (laserPos.y <= 0){
     laserPos.y = laserStartPos; 
     laserVel.y = 5;
    }
    //check if laser hit asteroid
    if (shipX.x > aX1 && shipX.x < aX2 && laserPos.y < 200){
     laserPos.y = laserStartPos; 
     laserVel.y = 5;
     hit = true;
     explX = asteroidPos.x;
     explY = asteroidPos.y;
    }
   }
  }
  
}
