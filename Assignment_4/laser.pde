class laser{
  
  PImage[] laser;
  
  void setup(){
    
    imageMode(CENTER);
    laser = new PImage[4];
    for (int i = 0; i < laser.length; i++){
     laser[i] = loadImage("laserbullet" + (i + 1) + ".png");
    }
  }
  
  void visual(){
    image(laser[frameCount % laser.length], shipX.x, 350);
  }
  
}
