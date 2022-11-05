Dots[] chub;
class Dots{
  int myColor;
  float mySpeed, mySpeedy, myWidth, myHeight, myX, myY;
  Dots(){
    myX = 250.0;
    myY = 250.0;
    mySpeed = (float)(Math.random()*6)-3.0;
    mySpeedy = (float)(Math.random()*6)-3.0;
    myColor = color(255,255,255);
   // myWidth = 7.0;
  //  myHeight = 7.0;
   myWidth = 7;
   myHeight = 7;
   // myO = (int)(Math.random()*300)+60;

  }
  
 void show(){
   fill(myColor);
   ellipse(myX, myY, myWidth, myHeight);
 }
 
 
 void move(){
   myX = myX + mySpeed;
   myY = myY + mySpeedy;
 }
}//end Dots class

class BigBlackDot extends Dots{
  BigBlackDot(){
    myX = 500.0;
    myY = 250.0;
    mySpeed = (float)(Math.random()*2)-3;
    mySpeedy = 0;
    myColor = color(225,225,210);
    myWidth = 30.0;
    myHeight = 30.0;
   // myWidth = (int)(Math.random()*20)+10;
   // myHeight = (int)(Math.random()*20)+10;


  }


}//ends BigBlack Dot class

BigBlackDot Rex;


void setup(){
  Logan = new DeathStar();
  ellipse(250,250,400,400);
  size(500,500);
Rex = new BigBlackDot();
  //noStroke();
  chub = new Dots[500];
  for(int i = 0; i < chub.length; i++){
    chub[i] = new Dots();
  }
}

class DeathStar{
    int mySize, mySizey, mySize2, mySizey3, myX, myY;
    DeathStar(){
  mySize = 100;
  mySizey = 100;
  mySize2 = 40;
  mySizey3 = 39;
  myX = 250;
  myY = 240;}
 
  void show(){
       fill(140,140,140);
    ellipse(250,250,mySize,mySizey);
    fill(130,130,130);
    ellipse(myX,myY,mySize2,mySizey3);
   // ellipse(myX,myY,mySize2-30,mySizey3-30);
  }
  
  void grow(){
    mySize = mySize + 4;
    mySizey = mySizey + 4;
    mySize2 = mySize2 + 1;
    mySizey3 = mySizey3 + 1;
    myX = myX + 1;
    myY = myY - 1;

  }
  
}//end of DeathStar class
DeathStar Logan;
void draw(){
    background(0,0,0);
    Logan.show();
    Logan.grow();
    Rex.show();
    Rex.move();
  for(int i = 0; i < chub.length; i++){
    chub[i].show();
    chub[i].move();

}

}
