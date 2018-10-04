Bacteria [] bob;
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
  size(500,500);
  //frameRate(1);
  bob = new Bacteria[150];
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
    myX = myY =0;
  }
  void bact(){
    myX = myX +(int)(Math.random()*7)-3;
    myY = myY +(int)(Math.random()*5)-3;
    }
  void show(){
    fill(0,225,0,200);
    //ellipse((int)(Math.random()*500),(int)(Math.random()*500),8,8);
    ellipse(myX+(int)(Math.random()*700),myY+(int)(Math.random()*700),8,8);
  }
 }    
