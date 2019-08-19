public class ClassExtension {
    
    public ApexPages.StandardSetController stdController{get;set;}
        
    public List<Class__c> listViewClass{
        get{
            return stdController.getRecords();
        }
        set;
    }
    public Class__c cls;
    public string classInput{get;set;}
	
    public ClassExtension(ApexPages.StandardSetController controller){
        stdController = new ApexPages.StandardSetController([SELECT Name, Class_Subject__c, Class_Topic__c, Start_Date__c FROM Class__c WHERE Class_Subject__c = 'Math']);
    }
    
}