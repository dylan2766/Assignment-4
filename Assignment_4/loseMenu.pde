class loseMenu{
  
  PImage[] loseMenu;
 
  void setup(){
    
   imageMode(CENTER);
   loseMenu = new PImage[59];
   for(int i = 0; i < loseMenu.length; i++){
    loseMenu[i] = loadImage("loseMenu" + i + ".png"); 
   }
  }
  
  void visual(){
    
   image(loseMenu[frameCount/3 % loseMenu.length], width/2, height/2); 
   
  }
  
}
