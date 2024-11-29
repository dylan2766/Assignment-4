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
  
  void physics(){
   
    if (mouseX >= 50 && mouseX <= 350 && mouseY >= 260 && mouseY <= 340){
     fill(255,100);
     strokeWeight(3);
     stroke(255,150);
     rectMode(CENTER);
     rect(200,300,300,80);
     noStroke();
     if (mousePressed){
      reset = true; 
     }
    }  
  }
  
}
