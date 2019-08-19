public class AccountValidator {
    public static void checkBeingDeleted(List<Account> accList){
        List<Contact> contactList = new List<Contact>();
        
        List<ID> AccountIDs = new List<ID>();
        for(Account a : accList){
            AccountIDs.add(a.id);
        }
        List<Account> accountsAndTheirContacts = [SELECT Id, (SELECT Id FROM Contacts) FROM Account WHERE Id IN :accountIDs];
        Set<Id> accountsThatShouldNotBeDeleted = new Set<Id>();
        
        for(Account a : accountsAndTheirContacts){
            if(a.Contacts.size() > 0){
                accountsThatShouldNotBeDeleted.add(a.Id);
            }
        }
        
        for(Account a : accList){
            for(Id accountToPreventDeletion : accountsThatShouldNotBeDeleted){
                if(accountToPreventDeletion == a.id){
                    a.addError('Cannot delete account');
                }
            }
        }
    }
    
    
    public static void checkBillingCity(List<Account> accList){
        for(Account acc : accList){
            if(acc.BillingCity == null){
                acc.addError('Please insert a billing city');
            }
        }
    }
    
    
}