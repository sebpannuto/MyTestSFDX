public class PaginationExtension {
    
    public ApexPages.StandardSetController setController {get;set;}
    
    public List<Account> displayedAccounts{
        get{
        	return setController.getRecords();
        }
        set;
    }
    
    public PaginationExtension(ApexPages.StandardSetController controller){
        setController = new ApexPages.StandardSetController([SELECT Name, type FROM Account]);
        setController.setPageSize(5); //set size of pages for pagination
    }
}