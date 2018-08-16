global class DailyLeadProcessor implements Schedulable {
    global void execute(SchedulableContext sc) {   
        List<Lead> lstofUpdateLead = [Select Id, LeadSource FROM Lead WHERE LeadSource = null];
        if(!lstofUpdateLead.isEmpty()){                       
            for(Lead l : lstofUpdateLead){                 
                l.LeadSource = 'DreamForce';          
                              //
            }
            update lstofUpdateLead;
        }
    }
}