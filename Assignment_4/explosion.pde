class explosion{
  
  PImage[] explosion;
  
  void setup(){
    
    //image setup
    imageMode(CENTER);
    explosion = new PImage[19];
    for(int i = 0; i < explosion.length; i++){
     explosion[i] = loadImage("Expl" + (i + 1) + ".png"); 
    }
  }
  
  void visual(){
    //Checks if object is hit then plays explosion animation
     if (hit == true){
     image(explosion[frameCount/2 % explosion.length], explX, explY);
     if (frameCount % 20 >= 19){
       hit = false;
       }
    }
  }
  
}
