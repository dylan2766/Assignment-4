class startMenu{
 
  void visuals(){
    background(255,0,255);
    fill(255,150);
    noStroke();
    rect(0,300,width,height);
  }
  
  void physics(){
   if (mousePressed && mouseY >= 300){
    startMenu = false; 
   }
  }
  
}
