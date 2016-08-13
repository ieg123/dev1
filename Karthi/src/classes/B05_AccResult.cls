public Class B05_AccResult

{

public void getAcResult()
{

List<account> ac=[select name from Account];
for(Account acc:ac)
{
System.debug('-------------------'+acc.name);
}
}
}