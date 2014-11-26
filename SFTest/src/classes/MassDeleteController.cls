public without sharing class MassDeleteController {
Public List<sObject> sObjList{get;set;}
Public List<String> SobjFieldList{get;set;}
Public List<WrapperClass> WrapperList{get;set;}

    Public List<WrapperClass> getListWrapperMethod(){
         WrapperList =new List<WrapperClass>();
             for(sObject sObj:sObjList){
                 WrapperList.add( new WrapperClass(false,sObj)) ;
             }
             return WrapperList;
        }
   Public List<String> FieldList{
      get{
         List<String> FieldList = New List<String>();
         FieldList = getSobjtFieldList();
         return FieldList;
      }set;
   }
  
   Public Class WrapperClass{
     Public Boolean SelectBox{get;set;}
     Public sObject sObjRec{get;set;}
   
     Public WrapperClass(Boolean checkbx, sObject sObjRecord){
        SelectBox = checkbx;
        sObjRec = sObjRecord;
     }
   
   }
   
    public List<String> getSobjtFieldList() {
       List<String> FieldList = SobjFieldList;
       return FieldList ;
    }
    
    Public string DeleteSelectedRecs(){
      List<sObject> DeleteList = New List<sObject>();
      for(wrapperclass wc:WrapperList){
          if(wc.SelectBox  == true)
             DeleteList.add(wc.sObjRec); 
      }
      delete DeleteList;
      return null;     
    }
    Public string UpdateSelectedRecs(){
      List<sObject> UpdateList = New List<sObject>();
      for(wrapperclass wc:WrapperList){
          if(wc.SelectBox  == true)
             UpdateList.add(wc.sObjRec); 
      }
      try {
          Update UpdateList;
      }
      catch (DmlException e) {
        for (Integer i = 0; i < e.getNumDml(); i++) {
            Integer indx = e.getDmlIndex(i);
            SObject errorRec = UpdateList.get(indx);
      }
      }
      return null;     
    }    
   
}