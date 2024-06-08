public class E2 extends Enemy
{
   public ArrayList<E2> despawn(ArrayList<E2> en)
    {
      ArrayList<E2> live =  new ArrayList<E2>();
      for (E2 ene : en)
      {
        if (ene.getHealth() != 0)
        {
          live.add(ene);
        }
        else
        {
          score += 5;
        }
      }
      return live;
    }
}
