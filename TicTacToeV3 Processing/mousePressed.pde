public void mousePressed()
{
  if (gameScreen == 0)
  {
    for (int i = 0; i < 3; i++)
    {
      for (int j = 0; j < 3; j++)
      {
        if (grid[i][j].getXON() == 'N' &&
          (mouseX > grid[i][j].getX() && mouseX < grid[i][j].getX() + grid[i][j].getSizeX()) &&
          (mouseY > grid[i][j].getY() && mouseY < grid[i][j].getY() + grid[i][j].getSizeY()))
        {
          grid[i][j].mousePressed(xTurn);
          xTurn = !xTurn;
        }
      }
    }
  }
  if (gameScreen == 1)
  {
    init();
    gameScreen = 0;
    loop();
  }
}
