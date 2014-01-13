
namespace Debugging
{
  using System.Threading;

  partial class Breakfast
  {
    private readonly object MakeSandwichLock = new object();
    private readonly object EatBreakfastLock = new object();
    private readonly object GetJamLock = new object();
    private bool MakeTeaIsDone;
    private bool ToastBreadIsDone;
    private bool GetJamIsDone;
    private bool MakeSandwichIsDone;
    private bool MakeTeaStarted;
    private bool ToastBreadStarted;
    private bool GetJamStarted;
    private bool MakeSandwichStarted;
    protected internal void MakeTea()
    {
      MakeTeaImpl();
      lock(EatBreakfastLock)
      {
        MakeTeaIsDone = true;
        Monitor.PulseAll(EatBreakfastLock);
      }
    }
    protected internal void ToastBread()
    {
      lock(GetJamLock)
      {
        ToastBreadIsDone = true;
        Monitor.PulseAll(GetJamLock);
      }
      ToastBreadImpl();
      lock(MakeSandwichLock)
      {
        ToastBreadIsDone = true;
        Monitor.PulseAll(MakeSandwichLock);
      }
    }
    protected internal void GetJam()
    {
      lock(GetJamLock)
        if(!(ToastBreadStarted))
          Monitor.Wait(GetJamLock);
      GetJamImpl();
      lock(MakeSandwichLock)
      {
        GetJamIsDone = true;
        Monitor.PulseAll(MakeSandwichLock);
      }
    }
    protected internal void MakeSandwich()
    {
      lock(MakeSandwichLock)
        if(!(ToastBreadIsDone && GetJamIsDone))
          Monitor.Wait(MakeSandwichLock);
      MakeSandwichImpl();
      lock(EatBreakfastLock)
      {
        MakeSandwichIsDone = true;
        Monitor.PulseAll(EatBreakfastLock);
      }
    }
    protected internal void EatBreakfast()
    {
      lock(EatBreakfastLock)
        if(!(MakeTeaIsDone && MakeSandwichIsDone))
          Monitor.Wait(EatBreakfastLock);
      EatBreakfastImpl();
    }
  }
}
