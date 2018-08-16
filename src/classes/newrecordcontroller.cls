public class newrecordcontroller {
    public Asistencia__c newrecord{get;set;}	
    
    public newrecordcontroller(ApexPages.StandardController stdController){
            this.newrecord = (Asistencia__c)stdController.getRecord();
        }
    
    public PageReference InsertRecord(){
            insert newrecord;
            return null;
        }

}