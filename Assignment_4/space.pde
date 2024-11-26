class space{
  
  //Space image with array
  PImage[] space;
  
  //Setup for image animation
  void setup(){
  imageMode(CENTER);
  space = new PImage[29];
  for (int i = 0; i < space.length; i++){
    space[i] = loadImage("space" + (i + 1) + ".png");
  }
  }
  
  //Draws background animation
  void background(){
   image(space[frameCount/2 % space.length], width/2, height/2); 
  }
  
}
