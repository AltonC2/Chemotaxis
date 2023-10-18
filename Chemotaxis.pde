  Walker[] bob;
  int x = 250;
  int y = 250;
    void setup()
    {
      size(500,500);
      bob = new Walker[1000];
      for (int i = 0; i < bob.length; i++){
        bob[i] = new Walker();
      }
    }
    void draw()
    {
      background(0);
      for (int i = 0; i < bob.length; i++){
        
      bob[i].show();
      bob[i].walk();
      }
    }
class Walker
{
    int myX,myY,mySize,myColor;
    Walker()
    {
      myX = myY = 250;
      mySize = (int)(Math.random()*30)+10;
      myColor = (int)(Math.random()*200)+100;
    }
    void walk()
    {
      
      if (mouseX > x)
      x = x+ (int)(Math.random()*5)-1;
      
      else
          x = x+ (int)(Math.random()*5)-3;
           if (mouseY > y)
      y = y+ (int)(Math.random()*5)-1;
      
      else
          y = y+ (int)(Math.random()*5)-3;
          
      myX = myX + (int)(Math.random()*7)-3;
      
      myY = myY + (int)(Math.random()*7)-3;
      
      
    }
    void show()
    {
      fill(0, myColor, 0);
      ellipse(myX,myY,mySize,mySize);
    }
   
}
