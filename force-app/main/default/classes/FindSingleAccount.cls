public class FindSingleAccount {
    
    private Account acc;
    
    public FindSingleAccount(ApexPages.StandardController controller){
        this.acc = (Account)controller.getRecord();
    }
}