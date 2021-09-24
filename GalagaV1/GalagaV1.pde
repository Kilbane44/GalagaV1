boolean up, down, left, right = false;


PImage shipImg;
Player ship;


Laser[] lasers = new Laser[300];


void setup()
{
  size(800, 800);
  
  imageMode(CENTER);
  rectMode(CENTER);
  
  shipImg = loadImage("ship.png");
  shipImg.resize(50,50);
  ship = new Player();
  
  for(int i=0; i < lasers.length; i++)
  {
    lasers[i] = new Laser();
  }
  
}


void draw()
{
  background(0);
  ship.Render();
  ship.Move();
  
  for(int i=0; i < lasers.length; i++)
  {
    if(lasers[i].isFired)
    {
      lasers[i].Move();
      lasers[i].Render();
    }
  }
  
}









void keyPressed()
{
  if(key == 'a')
  {
    left = true;
  }
  if(key == 'd')
  {
    right = true;
  }
  if(key == 'w')
  {
    up = true;
  }
  if(key == 's')
  {
    down = true;
  }
}

void keyReleased()
{
  if(key == 'a')
  {
    left = false;
  }
  if(key == 'd')
  {
    right = false;
  }
  if(key == 'w')
  {
    up = false;
  }
  if(key == 's')
  {
    down = false;
  }
  
  if(key == ' ')
  {
    //ship.Shoot();
    
    for(int i=0; i < lasers.length; i++)
    {
      if(lasers[i].isFired == false)
      {
        //lasers[i].isFired = true;
        //lasers[i].x = ship.x;
        //lasers[i].y = ship.y;
        lasers[i] = new Laser(ship.x, ship.y, -6, false);
        break;
      }
    }
    
  }
  
  
  if(key == 'z')
  {
    //ship.Shoot();
    
    for(int i=0; i < lasers.length; i++)
    {
      if(lasers[i].isFired == false)
      {
        //lasers[i].isFired = true;
        //lasers[i].x = ship.x;
        //lasers[i].y = ship.y;
        lasers[i] = new Laser(ship.x, ship.y, -1, true);
        break;
      }
    }
    
  }
}
