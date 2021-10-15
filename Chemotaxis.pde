
class Walker
{
  int myX, myY;
  int myColor;
  Walker()
  {
    myX=500;
    myY=250;
  }
  void walk()
  {
    myColor=color(255,(int)(Math.random()*255)+180,0);
    myX=myX+(int)(Math.random()*7)-3;
    myY=myY+(int)(Math.random()*5)-2;
  }
  void show()
  {
    fill(myColor);
    ellipse(myX,myY,(int)(Math.random()*10),10);
  }
}

Walker bacteria;
Walker [] betterOldPplHome= new Walker[100];

void setup(){
  size(1000,500);
  background(0);
  frameRate(30);
 bacteria= new Walker();
int i=0;
while(i<betterOldPplHome.length){
  betterOldPplHome[i]= new Walker();
  i++;
}
  
}

void draw(){
  background(0);
  for (int i=0; i<betterOldPplHome.length; i++) {
    betterOldPplHome[i].walk();
    betterOldPplHome[i].show();
  }
  bacteria.walk();
  bacteria.show();
}  
