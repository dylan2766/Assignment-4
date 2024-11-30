class asteroid{
  
  PImage[] asteroid;
  
  void setup(){
    
    //Asteroid start
    asteroidMove = -25;
    asteroidSpawn = false;
    asteroidPos = new PVector(asteroidMove,height/2);
    asteroidSpd = new PVector(2,0);
    
    //image animation setup
    imageMode(CENTER);
    asteroid = new PImage[9];
    for (int i = 0; i < asteroid.length; i++){
      asteroid[i] = loadImage("asteroid" + (i + 1) + ".png");
    }    
  }
  
  void visual(){
   //asteroid image animation
   image(asteroid[frameCount/3 % asteroid.length], asteroidPos.x, asteroidPos.y);
  }
 
  void physics(){
    
    //get asteroid position +- 40 to calculate collision
    aX1 = asteroidPos.x - 40;
    aX2 = asteroidPos.x + 40;
    
    //asteroid spawns if score is equal to or greater than 200
    if (score >= 200){
      asteroidSpawn = true;
    }
    if (asteroidSpawn && asteroidSpawn == true){
     //asteroidPos.add(asteroidSpd);
     asteroidPos.x = asteroidPos.x + asteroidSpd.x;
    }
    if (asteroidSpawn == true && asteroidPos.x >= width + 25){
     asteroidPos.x = -25;
    }
  }
}
