@isTest
private class DailyLeadProcessorTest{
    static testMethod void testDailyLeadProcessor(){
        String sch = '0 0 1 * * ?';
        List<Lead> lstofUpdateLead = new List<Lead>();
        for (Integer i=0; i<200; i++){
           lstofUpdateLead.add(new Lead(LastName = 'Dreamforce',Company='Test1 Inc.' + i, Status = 'Open - Not Contacted'));
           //Lead ld = new Lead(Company = 'Comp '+ i, LastName = 'LN' + i, Status = 'Working - Contacted');
           //testLead.add(ld);
        }
        insert lstofUpdateLead;
        System.Test.startTest();
        String jobId = System.schedule('DailyLeadProcessor', sch, new DailyLeadProcessor());
        System.Test.stopTest();              
    }
}