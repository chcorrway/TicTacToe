Grid[][] grid = new Grid[3][3];
int size = 600;
int gridSize = size / 3 - 1;
boolean xTurn = true;
int gameScreen = 0; // 0 = game;   1 = winScreen ---> see rules

public void settings()
{
  size(size, size);
}

public void init()
{
  for (int i = 0; i < 3; ++i)
  {
    for (int j = 0; j < 3; ++j)
    {
      grid[i][j].setXON('N');
    }
  }
  gameScreen = 0;
}

public void setup()
{
  background(0);
  for (int i = 0; i < 3; ++i)
  {
    for (int j = 0; j < 3; ++j)
    {
      grid[i][j] = new Grid(i * gridSize, j * gridSize, gridSize, gridSize);
    }
  }
  init();
}

public void draw()
{
  if (gameScreen == 0)    //this is the game being played
  {
    for (int i = 0; i < 3; ++i)
    {
      for (int j = 0; j < 3; j++)
      {
        grid[i][j].draw();
        mouseGridColor(i,j);
      }
    }
    checkWinner();
  }
}

public void mouseGridColor(int i, int j)
{
  if((mouseX > grid[i][j].getX() && mouseX < grid[i][j].getX() + grid[i][j].getSizeX()) && 
       (mouseY > grid[i][j].getY() && mouseY < grid[i][j].getY() + grid[i][j].getSizeY()))
          grid[i][j].gridColor = color(105);
   else
       grid[i][j].gridColor = 0;
}
