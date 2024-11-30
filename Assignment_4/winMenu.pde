class winMenu{
  
  PImage[] winMenu;
 
  void setup(){
    
    //setup image
   imageMode(CENTER);
   winMenu = new PImage[59];
   for(int i = 0; i < winMenu.length; i++){
   winMenu[i] = loadImage("winMenu" + i + ".png"); 
   }  
  }
  
  void visual(){
    //image animation
   image(winMenu[frameCount/3 % winMenu.length], width/2, height/2); 
    
  }
  
  void physics(){
    //if mouse is allocated rectangle draw a highlighted rectangle with a border and if mouse is pressed call reset function
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
