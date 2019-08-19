public class AccountAndContactExtension {
    
    public Contact childContact;
    private ApexPages.StandardController stdController;
    
    public AccountAndContactExtension(ApexPages.StandardController controller){
        childContact = new Contact();
        stdController = controller;
    }
    
    //needed to use the childContact variable on the vf page
    public Contact getChildContact(){
        return childContact;
    }
    
    public void setChildContact(Contact childContact){
        this.childContact = childContact;
    }
    
    public PageReference saveAccountAndContact(){
        //save contact using standard controller
        stdController.save();
        //Get account id using standard controller methods
        childContact.AccountId = stdController.getId();
        
        //Since we're using the account standard controller, we need to explicitly insert
        //the contact
        insert childContact;
		
		return new ApexPages.StandardController(childContact).view();        
    }
}