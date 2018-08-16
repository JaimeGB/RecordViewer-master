public with sharing class MyController {
    public Record__c rec{get;set;}
    
    public List<Record__c> table {get;set;}
    
    public MyController(){
        rec = new Record__c();
    }
    
    public PageReference save(){
        insert rec;
        table=[Select Id, Name From Record__c where id=:rec.id];
        return null;
    }


}