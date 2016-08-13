@isTest
Public class UpdateAccountStatusTest{
 Public static testmethod void updateFieldsOnContactinUpdateTest(){
List<Account> acLst=new List<Account>();


    Account acct = new Account();
     acct.Name ='test Account'; 
     acct.Is_Account_Updated__c=false; 
     insert acct;
     //acLst.add(acct);
      //insert acLst;
   
    
  
  Contact con=new contact();
  con.Firstname=UserInfo.getname();
  con.Lastname=UserInfo.getname();
  con.Accountid = acct.id; 
  con.MailingStreet='tStreet';
  con.MailingCountry='Albania';
   //con.Is_Account_Type_Changed__c=false; 
  insert con;
  
    acct.Is_Account_Updated__c=true; 
   update acct;
  }
  
}