@isTest
public class AddPrimaryContactTest{
   @isTest 
   static void TestList(){
        List<Account> Teste = new List<Account>();
        for (Integer i = 0; i < 50; i++){
            Teste.add(new Account(BillingState = 'NY', name = 'Test' + i));  
        }

        for (Integer x = 0; x < 50; x++){
            Teste.add(new Account(BillingState = 'CA', name = 'Test' + x));  
        }
        insert Teste;

        
        Contact c = new Contact ();
        c.FirstName ='demo';
        c.LastName = 'demo';
        insert c;
        String state = 'CA';
        

        AddPrimaryContact Ins = new AddPrimaryContact(c, state);  
        System.Test.startTest();
            System.enqueueJob(Ins);
         System.Test.stopTest();

         /*System.assertEquals(50, [select count() From Contact 
         Where accountID IN (SELECT Id FROM Account WHERE BillingState = :state)]);  */




    }
}