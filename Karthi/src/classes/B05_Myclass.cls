//inheritance in child class 

//Has a relation /Is a Relation
public class B05_Myclass extends B05_MyParentClass
{
 public override void dosomething()
{
//super refers parent
 super.dosomething();
 System.Debug('something else');
}

//new B05_Myclass().dosomething();

}