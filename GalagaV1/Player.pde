//Name
class Player
{
  
 //Member Data
  float x;
  float y;
  float speed;
  int health;
  
 
  //Constructor
  Player()
  {
    x = 400;
    y = 650;
    health = 4;
    speed = 3.7;
  }

  //Functions (what does it do)
  void Render()
  {
    image(shipImg,x,y);
  } 
  
  void Move()
  {
    if(up)
    {
      y-=speed;
    }
    if(down)
    {
      y+=speed;
    }
    if(left)
    {
      x-=speed;
    }
    if(right)
    {
      x+=speed;
    }
  }
  
  void Shoot()
  {
    
  }
  
  
}
