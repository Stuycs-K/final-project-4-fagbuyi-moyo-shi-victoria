Spaceship player;
ArrayList<Spaceship> enemies;

void setup()
{
  size(1200, 900);
  //moving backgroud somewhere yeah
  player = new Spaceship();
}

void draw()
{
  player.display();
}
