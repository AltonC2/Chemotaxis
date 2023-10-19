Walker [] bob;
void setup()
{
  size(500,500);
   bob = new Walker[30];
   for(int i=0; i < bob.length; i++)
   bob[i] = new Walker();
}
void draw()
{
  background(0);


  for(int i=0; i < bob.length; i++){
    bob[i].walk();
    bob[i].show();

   }
}

class Walker
{
  int myX,myY, colorGreen, mySize;
  Walker()

  {
    myX = myY = 250 ;
    mySize = (int)(Math.random()*30)+10;
  }
  void walk()
  {

   if(mouseX > myX)
   myX = myX + (int)(Math.random()*10)-3;
   else
     myX = myX + (int)(Math.random()*10)-5;

  if(mouseY > myY)
   myY = myY + (int)(Math.random()*10)-3;
   else
     myY = myY + (int)(Math.random()*10)-5;


  }
  void show()
  {
  
    colorGreen= (int)(Math.random()*120)+100;
  
    fill(0,colorGreen,0);
    ellipse(myX,myY,mySize,mySize);
  }
}
