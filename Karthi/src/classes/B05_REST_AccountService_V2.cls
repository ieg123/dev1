/****************************************************************************************************
 * Description - Sample Apex REST service with GET method
 * Author - Sateesh
 ****************************************************************************************************/

@RestResource(urlMapping='/v2/accounts/*')
global with sharing class B05_REST_AccountService_V2 {
    
    @HttpGet
    global static AccountWrapper doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        AccountWrapper response1 = new AccountWrapper();
        
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
        List<Account> result = [SELECT Id, Name, Phone, Website FROM Account WHERE name = :accountId];
        
        if(result != null && result.size() > 0) {
            response1.acct = result[0];
            response1.status = 'Success';
        }
        else {
            response1.acct = null;
            response1.status = 'Error';
            response1.message = 'This account could not be found, please try again.';
            res.StatusCode = 404;
        }
        
        return response1;
    }
    
    global class AccountWrapper {
        public Account acct;
        public String status;
        public String message;
        
        public AccountWrapper(){}
    }
}