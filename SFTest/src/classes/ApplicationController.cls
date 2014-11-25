Public class ApplicationController {
Public string MyString_From_Methode{get;set;}
Public List<sObject> accList{get;set;}
Public List<String> fieldstringMap{get;set;}
    public ApplicationController (ApexPages.StandardController controller) {
    }

    Public List<String> getfieldList(){
        fieldstringMap = new List<String>();
        fieldstringMap.add('name');
        fieldstringMap.add('naveenk__Job_Applications__c');
        fieldstringMap.add('naveenk__Job_Position__c');
        fieldstringMap.add('naveenk__Status__c');  
        fieldstringMap.add('naveenk__Test');
        return fieldstringMap;
    }
     
    Public List<sObject> getListAcc(){
      accList = new List<sObject>();
      accList = [select name, id, naveenk__Job_Applications__c, naveenk__Job_Position__c, naveenk__Status__c from naveenk__Job_Application__c];
      return AccList;
    }  
}
