public class AddPrimaryContact implements Queueable {
    private Contact c;
    private String state;

    public  AddPrimaryContact(Contact c, String state){
    this.c = c;
    this.state = state;
    }

    public void execute(QueueableContext context){
        List <Account> ListAccount = [Select Id, Name, (Select Id, FirstName, LastName FROM Contacts)
        FROM Account WHERE BillingState =:state LIMIT 200];
        List <Contact> lstContact = new  List<Contact>();
        
        for (Account acc:ListAccount){
            Contact cont = c.clone(false,false,false,false);
            cont.AccountId =  acc.Id;
            lstContact.add(cont);

        }
        if(lstContact.size() >0 ){
            insert lstContact;

        }   
    }
}