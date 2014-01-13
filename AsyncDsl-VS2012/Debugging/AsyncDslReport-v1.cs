
// FullNamme: DmitriNesteruk.AsyncDsl.ExampleModel

// Properties:
// Processes=Microsoft.VisualStudio.Modeling.LinkedElementCollection`1[DmitriNesteruk.AsyncDsl.Process]
// Comments=Microsoft.VisualStudio.Modeling.LinkedElementCollection`1[DmitriNesteruk.AsyncDsl.Comment]
// Id=6417c1d1-3d43-48e7-b1f2-0d97f871e768
// Partition=Microsoft.VisualStudio.Modeling.Partition
// Store=Microsoft.VisualStudio.Modeling.Store
// IsActive=True
// IsDeleted=False
// IsDeleting=False

// Methods:
// get_Processes
// get_Comments
// get_Id
// get_Partition
// set_Partition
// get_Store
// GetDomainClass
// get_IsActive
// get_IsDeleted
// get_IsDeleting
// Delete
// Delete
// Copy
// Copy
// ToString
// Equals
// GetHashCode
// GetType

// Processes:
// Process: DmitriNesteruk.AsyncDsl.Process

// Code Generation:
namespace Debugging
{
  using System.Threading;

  partial class Breakfast
  {
    private readonly object MakeSandwichLock = new object();
    private readonly object EatBreakfastLock = new object();
    private readonly object GetJamLock = new object();
    private bool ToastBreadIsDone;
    private bool MakeTeaIsDone;
    private bool GetJamIsDone;
    private bool MakeSandwichIsDone;
    private bool ToastBreadStarted;
    private bool MakeTeaStarted;
    private bool GetJamStarted;
    private bool MakeSandwichStarted;
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
    protected internal void MakeTea()
    {
      MakeTeaImpl();
      lock(EatBreakfastLock)
      {
        MakeTeaIsDone = true;
        Monitor.PulseAll(EatBreakfastLock);
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
