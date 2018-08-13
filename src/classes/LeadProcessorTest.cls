@isTest
public class LeadProcessorTest { 
    @testSetup
    static void setup() {
        List<Lead> leadList2 = new List<Lead>();
        //Insertar 200 cuentas
        for (Integer i=0;i<200;i++){
            leadList2.add(new Lead(Lastname='Lead' +i,
            Company='Lead', Status='Open - Not Contacted'));
            
        }
        insert leadList2;
    }
    static testmethod void test(){
        System.Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        System.Test.stopTest();
        System.assertEquals(200,[Select count() From Lead where LeadSource = 'Dreamforce']);
    }
}