class Grid
{
  float x;
  float y;
  float sizeX;
  float sizeY;
  char XON = 'N';
  public color gridColor = 0;

  public Grid(float x, float y, float sizeX, float sizeY)
  {
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
  }

  public float getX()
  {
    return x;
  }

  public float getY()
  {
    return y;
  }

  public float getSizeX()
  {
    return sizeX;
  }
  
  public float getSizeY()
{
  return sizeY;
}

  public char getXON()
  {
    return XON;
  }

  public void setXON(char nXON)
  {
    XON = nXON;
  }

  public void draw()
  {
    stroke(255);
    fill(gridColor);
    rect(x, y, sizeX, sizeY);
    fill(255);
    if(XON != 'N')
      text(XON, x + sizeX / 2, y + sizeY / 2.5F);
  }

  public void mousePressed(boolean turn)
  {
    textAlign(CENTER, CENTER);
    textSize(sizeY);
    fill(255);
    gridColor = color(169,169,169);
    if (turn)
      XON = 'X';
    if (!turn)
      XON = 'O';
  }
}
