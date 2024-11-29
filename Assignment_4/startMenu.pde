class startMenu{
  
  PImage[] startingMenu;
 
  void setup(){
   
   imageMode(CENTER);
   startingMenu = new PImage[59];
   for(int i = 0; i < startingMenu.length; i++){
    startingMenu[i] = loadImage("startMenu" + i + ".png"); 
   } 
   
  }
 
  void visuals(){
    
   image(startingMenu[frameCount/2 % startingMenu.length], width/2, height/2);
    
  }
  
  void physics(){
   
    if (keyPressed){
      if (key == ' '){
      startMenu = false; 
     }
    }
  }
  
}
