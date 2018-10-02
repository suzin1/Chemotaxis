Bacteria [] bob;
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
  size(500,500);
  bob = new Bacteria[250];
  for (int i = 0;i<bob.length; i++){
    bob[i] = new Bacteria();
  }
 }   
 void draw()   
 {    
 	//move and show the bacteria   
  background(0);
  for (int i=0;i<bob.length;i++){
  bob[i].show();
  bob[i].bact();
  }
 }  
 class Bacteria    
 {     
 	 int myX,myY;
  Bacteria(){
    myX = myY =250;
  }
  void bact(){
    myX = myX +(int)(Math.random()*7)-3;
    myY = myY +(int)(Math.random()*7)-3;
    }
  void show(){
    ellipse(myX,myY,10,10);
  }
 }    
