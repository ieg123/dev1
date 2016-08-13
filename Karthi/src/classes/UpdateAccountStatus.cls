public Class UpdateAccountStatus
{
public static void updateFieldsOnContactinUpdate(List<Account> acList,Map<Id,Account> acoldMap){
      Set<Id> acIDSet = new Set<Id>();   
      List<Contact> conList = new List<Contact>();
      List<Contact> conupdateList = new List<Contact>();
  for(Account ac : acList){
  if(ac.Is_Account_Updated__c != acoldMap.get(ac.id).Is_Account_Updated__c){
                    acIDSet.add(ac.id);
                }
                  }
                  
                  
              if(acIDSet.size() > 0){
            conList = [select name, Is_Account_Type_Changed__c from Contact where AccountId in :acIDSet];
                  }
                  
for(Contact con : conList){
con.Is_Account_Type_Changed__c=true;
conupdateList.add(con);
}

update conupdateList;

}}