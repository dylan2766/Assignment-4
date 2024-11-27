class asteroid{
  
  PImage[] asteroid;
  
  void setup(){
    
    //Asteroid start
    asteroidMove = -25;
    asteroidSpawn = false;
    aStop = new PVector(-2,-2);
    asteroidPos = new PVector(asteroidMove,height/2);
    asteroidSpd = new PVector(2,2);
    
    imageMode(CENTER);
    asteroid = new PImage[9];
    for (int i = 0; i < asteroid.length; i++){
      asteroid[i] = loadImage("asteroid" + (i + 1) + ".png");
    }    
  }
  
  void visual(){
   image(asteroid[frameCount/3 % asteroid.length], asteroidPos.x, height/2);
  }
 
  void physics(){
    if (key == 'z'){
     score = 200;
    }
    
    if (score >= 200){
      asteroidSpawn = true;
    }
    if (asteroidSpawn && asteroidSpawn == true){
     asteroidPos.add(asteroidSpd);
    }
    if (asteroidSpawn == true && asteroidPos.x >= width + 25){
     asteroidPos.x = -25;
    }
  }
}
