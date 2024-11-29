class shipHealth{
  
 void setup(){
   shipHealth = 60;
 }
 
 void visual(){
 if (shipHealth > 0){
   for(int i = 0; i < shipHealth; i = i + 29){
     fill(0,255,0);
     ellipse(i+20,20,20,20);
     }
   }
 }
 
 void physics(){
  if (shipHealth <= 0){
   lose = true; 
  }
 }
 
}
