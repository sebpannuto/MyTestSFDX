public class FindMyClasses {
    public String className{set; get;}
    
    public List<Class__c> classes{get; set;}
	    
    public void findClasses(){
        String searchCriteria = className + '%';
        classes = [SELECT Name FROM Class__c WHERE Name LIKE :searchCriteria];
		System.debug('Classes returned by query: ' + classes);    	
    }
}