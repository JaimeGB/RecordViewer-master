public with sharing class AccountProcessor {
    @future
    public static void countContacts(set<id> setId){
        List<Account> lstAccount = [select id, Number_of_Contacts__c,(Select id From contacts) from account Where id in :setId];
        for(Account acc : lstAccount){
            List<Contact> lstCont = acc.contacts;
            acc.Number_of_Contacts__c = lstCont.size();
        }
        update lstAccount; 
    }
 
}