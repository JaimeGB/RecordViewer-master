global class LeadProcessor implements Database.Batchable<sObject> {
    
    global Integer count = 0;  

    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT ID, LeadSource FROM Lead');
    }   

    global void  execute (Database.BatchableContext bc, List<Lead> leadList){
        List<Lead> leadList_new = new List<Lead>();   
        for(Lead l : leadList){
            l.Leadsource = 'DreamForce';
            //leadList_new.add(1);
            count += count;

        }
        update  leadList_new; 
    }

    global void finish(Database.BatchableContext bc){
        System.debug('count = ' + count);
    }
    
}