class score{
 
  void setup(){
   score = 0;
  }
  
  void visual(){
   textSize(28);
   fill(255);
   text("Score: " + score, 5, height -8);  
  }
  
  void physics(){
   if (score >= 1000){
    win = true; 
   }
  }
}
