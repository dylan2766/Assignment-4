class startMenu{
  
  PImage[] startingMenu;
 
  void setup(){
   
    //image setup
   imageMode(CENTER);
   startingMenu = new PImage[59];
   for(int i = 0; i < startingMenu.length; i++){
    startingMenu[i] = loadImage("startMenu" + i + ".png"); 
   } 
   
  }
 
  void visuals(){
    //image animation
   image(startingMenu[frameCount/2 % startingMenu.length], width/2, height/2);
    
  }
  
  void physics(){
   //if startmenu is open and space is pressed close startmenu and call drawgame function
    if (keyPressed){
      if (key == ' '){
      startMenu = false; 
     }
    }
  }
  
}
