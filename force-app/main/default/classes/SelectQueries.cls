public class SelectQueries {
    public static List<Account> getAllAcounts(){
        List<Account> accountList = new List<Account>();
        accountList = [SELECT Id FROM Account];
        
        return accountList;
    }
    
    public static List<Contact> getAllContacts(){
        List<Contact> contactList = new List<Contact>();
        contactList = [SELECT Name FROM Contact];
        
        return contactList;
    }
    
    public static List<Account> getGenePointAccounts(){
        return [SELECT Id, Name FROM Account WHERE Name = 'GenePoint'];
    }
    
    public static List<Account> getAccountsWithName(String name){
        return [SELECT Id, Name FROM Account WHERE Name = :name];
    }
    
    public static List<Student__c> getAllEnrolledStudents(){
        return [SELECT Name FROM Student__c WHERE Status__c = 'Enrolled'];
    }
    
    public static List<Account> getFirstFiveAccounts(){
        return [
            SELECT 
            	Name, NumberOfEmployees 
            FROM 
            	Account 
            WHERE 	
            	NumberOfEmployees > 100
            ORDER BY 
            	Name
            LIMIT
            	5
        ];
    }
    
    public static List<Class_Enrollment__c> getMathCES(){
        return [
            SELECT 
            	Name, Class__r.Class_Subject__c 
            FROM 
            	Class_Enrollment__c 
            WHERE 
            	Class__r.Class_Subject__c = 'Math'
          
        ];
    }
    
    public static List<Account> getAccountsAndTheirContacts(){
        return [
            SELECT Name, (SELECT Name FROM Contacts)
			FROM Account
        ];
    }
    
    public static List<Class_Enrollment__c> getCEForStudent(String Name){
        return [
            SELECT Name
            From Class_Enrollment__c
            WHERE Student__r.Name = :Name
        ];
    }
    
    public static List<Assessment__c> getAssessmentForStudent(String Name){
         List<Grade__c> gradeList = [
            SELECT
            	Assessment__c
            FROM
            	Grade__c
            WHERE
            	Student__r.Name = :name
        ];
       
        List<Id> asmtIds = new List<Id>();
        for (Grade__c g : gradeList){
            asmtIds.add(g.Assessment__c);
        }
        
        return [
            SELECT 
            	Id, Name 
            FROM 
            	Assessment__c 
            WHERE 
            	Id IN :asmtIds
        ];
    }
    
    public List<Account> getAllAccountsWithShipping(){
        return [
            SELECT
            	ID, Name, BillingCity, BillingStreet
            FROM
            	Account
            WHERE NOT ShippingCity = NULL
            ORDER BY Name ASC
        ];
    }
    
    
    
    
}