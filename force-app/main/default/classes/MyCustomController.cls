public class MyCustomController {
    public Class__c myClass{get;set;}
    
    public MyCustomController(){
        //Put Id into Url
        ApexPages.currentPage().getParameters().put('id', 'a033i000000u3R1AAI');
        
        //Get the Id from URL
        Id classId = ApexPages.currentPage().getParameters().get('id');
        myClass = [SELECT Id, Name FROM Class__c WHERE Id = :classId];
    }
}