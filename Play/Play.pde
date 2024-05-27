Spaceship player;
Bullet place;
ArrayList<Bullet> bullets;
int countdown;
ArrayList<Spaceship> enemies;
PImage img;

void setup()
{
  size(1200, 1200);
  player = new Spaceship(100, 100);
  bullets = new ArrayList<Bullet>();
  PVector loc = player.getPos();
  place = new Bullet(new PVector(600, 100));
  img = loadImage("bullet.jpg");
}


void keyPressed()
{
  if (key== 'q')
  {
    bullets.add(player.shoot());
  }
}

void bullets()
{
   for (Bullet bull : bullets)
  {
    bull.move();
    image(img, bull.getPos().x, bull.getPos().y);
    bull.applyDamage(player); //should apply dxdamdge to nearest enemy
    if (bull.getStatus() == false)
    {
      bullets.remove(bull);
    }
  }
}

void draw()
{
  background(128, 128, 128);
  player.display();
  bullets();
  //place.load(bullets);
  //place.allMove(bullets);
  if (player.getHealth() < 95)
  {
    color c = color(69, 66, 245);
    fill(c);
    ellipse(1000, 100, 400, 400);
  }
}
