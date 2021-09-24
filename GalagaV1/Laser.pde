class Laser
{
  //Member data
  float x;
  float y;
  float speed;
  boolean isFired;
  boolean isSuper;

  Laser()
  {
    x = -1000;
    y = -1000;
    speed = -4;
    isFired = false;
    
    isSuper = false;
  }
  
  Laser(boolean _isSuper)
  {
    
  }
  
  
  Laser(float _x, float _y, float _speed, boolean _isSuper)
  {
    x = _x;
    y = _y;
    speed = _speed;
    isSuper = _isSuper;
    isFired = true;
  }

  void Render()
  {
    if (!isSuper)
    {
      fill(255, 0, 0);
      rect(x, y, 5, 10);
    }
    else
    {
      fill(255,0,255);
      rect(x,y,20,40);
    }
  }
  
  
  void Move()
  {
    y += speed;
    
    if(y < -20 || y > height + 20)
    {
      isFired = false;
    }
  }
}
