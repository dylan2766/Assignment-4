class asteroid{
  
  PImage[] asteroid;
  
  void setup(){
    
    imageMode(CENTER);
    asteroid = new PImage[9];
    for (int i = 0; i < asteroid.length; i++){
      asteroid[i] = loadImage("asteroid" + (i + 1) + ".png");
    }    
  }
  
  void visual(){
   image(asteroid[frameCount % asteroid.length], width/2, height/2);
  }
  
}
