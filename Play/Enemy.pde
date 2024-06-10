
public class Enemy extends Spaceship{
    void direction(){}
    public Enemy(){}
    
        public ArrayList<Enemy> despawn(ArrayList<Enemy> en)
    {
      ArrayList<Enemy> live =  new ArrayList<Enemy>();
      for (Enemy ene : en)
      {
        if (ene.getHealth() != 0)
        {
          live.add(ene);
        }
        else
        {
          if(ene instanceof E1)
          score+=3;
           else if(ene instanceof E2)
          score+=5;
           else if(ene instanceof E3)
          score+=10;
          else if(ene instanceof Boss)
          score+=50;
        }
        
      }
      return live;
    }
    
       public ArrayList<Enemy> massDespawn(ArrayList<Enemy> en)
    {
      ArrayList<Enemy> live =  new ArrayList<Enemy>();
      for (Enemy ene : en)
      {
        if(ene instanceof E1)
        score+=3;
         else if(ene instanceof E2)
        score+=5;
         else if(ene instanceof E3)
        score+=10;
      }
      return live;
    }
}
