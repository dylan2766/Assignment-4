class shipHealth{
  
  PImage[] shipLife;
  
 void setup(){
   //declare variable
   shipHealth = 60;
   
   //setup image
   imageMode(CENTER);
   shipLife = new PImage[7];
   for(int i = 0; i < shipLife.length; i++){
    shipLife[i] = loadImage("shipLife" + (i) + ".png"); 
   }
 }
 
 void visual(){
   //if health is greater than 0 draw 1 HP image per value of i in the top left of the window
 if (shipHealth > 0){
   for(int i = 0; i < shipHealth; i = i + 29){
     image(shipLife[frameCount/3 % shipLife.length], i+20, 20); 
     }
   }
 }
 
 void physics(){
   //if health <= 0 call lose function
  if (shipHealth <= 0){
   lose = true; 
  }
 }
 
}
