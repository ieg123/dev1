global class Bo5_RunBatchApex implements database.batchable<sobject>
{
global final string queryString;
global void setQry(string queryString)
{
String acid='0012800000jk6MI';
queryString = 'Select  id, name from account where id=:acid';
}
global database.querylocator start(database.batchableContext bc)
{
//return database.getquerylocator(queryString);
String acid='0012800000jk6MI';

return database.getquerylocator('Select  id, name from account where id=:acid');
}
global void execute(database.batchablecontext bd, list<sobject> sc){ 

List<Account> acLst=sc;
List<Account> acRsLst=new List<Account>();
for(Account ac:acLst)
{
ac.Is_Account_Updated__c=true;
acRsLst.add(ac);
}

update acRsLst;

System.debug('--------------------------------------------------------->');

}

global void finish(database.batchableContext bc){
}
}