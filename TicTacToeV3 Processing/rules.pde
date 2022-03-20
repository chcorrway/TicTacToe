public void checkWinner()
{
  boolean win = false;
  char checkPlayer = 'X';
  for (int i = 0; i < 2; ++i)
  {
    if ((grid[0][0].getXON() == checkPlayer && grid[0][1].getXON() == checkPlayer && grid[0][2].getXON() == checkPlayer) || //top to bottom from left to  right.
      (grid[1][0].getXON() == checkPlayer && grid[1][1].getXON() == checkPlayer && grid[1][2].getXON() == checkPlayer) ||
      (grid[2][0].getXON() == checkPlayer && grid[2][1].getXON() == checkPlayer && grid[2][2].getXON() == checkPlayer) ||
      (grid[0][0].getXON() == checkPlayer && grid[1][0].getXON() == checkPlayer && grid[2][0].getXON() == checkPlayer) || //left to right from top to bottom.
      (grid[0][1].getXON() == checkPlayer && grid[1][1].getXON() == checkPlayer && grid[2][1].getXON() == checkPlayer) ||
      (grid[0][2].getXON() == checkPlayer && grid[1][2].getXON() == checkPlayer && grid[2][2].getXON() == checkPlayer) ||
      (grid[0][0].getXON() == checkPlayer && grid[1][1].getXON() == checkPlayer && grid[2][2].getXON() == checkPlayer) || // diagonals right to left from top to bottom
      (grid[0][2].getXON() == checkPlayer && grid[1][1].getXON() == checkPlayer && grid[2][0].getXON() == checkPlayer))
    {
      winScreen(checkPlayer);
      win = true;
    }
    checkPlayer = 'O';
  }
  checkPlayer = 'N';
  if ((grid[0][0].getXON() != checkPlayer && grid[0][1].getXON() != checkPlayer && grid[0][2].getXON() != checkPlayer) && //top to bottom from left to  right.
    (grid[1][0].getXON() != checkPlayer && grid[1][1].getXON() != checkPlayer && grid[1][2].getXON() != checkPlayer) &&
    (grid[2][0].getXON() != checkPlayer && grid[2][1].getXON() != checkPlayer && grid[2][2].getXON() != checkPlayer) && !win)
  {
    winScreen(checkPlayer);
  }
}

void winScreen(char Player)
{
  noLoop();
  textAlign(CENTER, CENTER);
  textSize(gridSize / 2F);
  fill(0, 180);
  rect(grid[0][1].getX(), grid[0][1].getY(), gridSize * 3 + 4, gridSize);
  fill(255);
  if (Player == 'N')
    text("Draw", width / 2F, height / 2F);
  else
    text(Player + " Wins!", width / 2F, height / 2F);
  gameScreen = 1;
}
