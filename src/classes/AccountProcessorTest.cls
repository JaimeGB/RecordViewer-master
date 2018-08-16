@isTest
public with sharing class AccountProcessorTest {
    public static testmethod void TestAccountProcessorTest(){
        Account a = new Account();
        a.Name = 'Test Account';
        Insert a;

        Contact cont = new Contact();
        cont.FirstName ='Jaime';
        cont.LastName ='GB'; 
        cont.AccountId = a.Id;
        Insert cont;

        set<Id> setaccId = new set<ID>();
        setaccId.add(a.id);

        System.Test.startTest();
            AccountProcessor.countContacts(SetaccId); 
        System.Test.stopTest();     

        Account acc1 = [select Number_of_Contacts__c From Account Where id = :a.id LIMIT 1];
        System.assertEquals(Integer.valueOf(acc1.Number_of_Contacts__c) ,1);
        
    } 
}