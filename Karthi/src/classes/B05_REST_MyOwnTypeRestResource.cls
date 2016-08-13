/*    
   { "ic" : 
     {
       "string1" : "Test Company 1",
       "string2" : "str2",
       "privateString" : "www.salesforce.com",       
       "staticString" : "staticString"
     }
   }
   */
   
@RestResource(urlMapping='/user_defined_type_example/*')
global with sharing class B05_REST_MyOwnTypeRestResource {

    @HttpPost
    global static MyUserDefinedClass echoMyType(MyUserDefinedClass ic) {
        return ic;
    }

    global class MyUserDefinedClass {

        global String string1;
        global String string2 { get; set; }
        private String privateString;
        global transient String transientString;
        global  String staticString;

    }
    
}