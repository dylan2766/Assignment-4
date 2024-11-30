class score{
 
  void setup(){
    //declare score variable
   score = 0;
  }
  
  void visual(){
    //draws score text
   textSize(28);
   fill(255);
   text("Score: " + score, 5, height -8);  
  }
  
  void physics(){
    //if score is equal to or greater than 1000 call win function
   if (score >= 1000){
    win = true; 
   }
  }
}
