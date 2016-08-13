/*
Caluculator.add(10,12);

*/

Public Class Caluculator
{

  
public integer param1 { get; set; }
public integer param2 { get; set; }
public integer result{ get; set; }
public integer inputValueparam1 { get; set; }



public PageReference add()
  
{
result=param1+param2;


system.debug('Add  :'+result);

return new PageReference('/apex/CaliculatorPage');

}
public void multiply(integer param1,integer param2)
{
integer result=param1*param2;
system.debug('multiplication :'+result);

}
}