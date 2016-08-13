/****************************************************************************************************
 * Description - Sample Apex REST service with GET method
 * Author - Sateesh
  * Serevice : /services/apexrest/v1/accounts/ACNM
 ****************************************************************************************************/

@RestResource(urlMapping='/v1/accounts/*')
global with sharing class B05_REST_AccountService_V1 {
    
    @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
        Account result = [SELECT Id, Name, Phone, Website, BillingState FROM Account WHERE Name = :accountId];
        return result;
    }
}