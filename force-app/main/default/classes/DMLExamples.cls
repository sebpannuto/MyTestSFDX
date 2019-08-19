public class DMLExamples {
    public static void classExample(){
        //Class
        Class__c c = new Class__c();
        c.Name = 'HIS400';
        c.Class_Subject__c = 'History';
        c.Class_Topic__c = 'American History';
        c.Number_of_Students__c = 50;
        c.Start_Date__c = Date.newInstance(2019, 7, 26);
        c.End_Date__c = Date.newInstance(2019, 8, 2);
        insert c;
        
        //Student
        Student__c s = new Student__c();
        s.Name = 'Cbass';
        s.Age__c = 22;
        s.Email__c = 'c@bass.com';
        s.Status__c = 'Enrolled';
        insert s;
        
        //Class Enrollment
        insert new Class_Enrollment__c(Class__c=c.id, Student__c=s.id);
        
		
    }
    
    public static void doThis(){
        List<Account> accList = new List<Account>();
        
        for (Integer i = 0; i < 3; i++){
            accList.add(new Account(Name='t' + i));
        }
        insert accList;
    }
    
    /*
     * Using the upsert operation, you can either update or insert an existing record
     * in one call. To determine whether a record already exists, the upsert statement
     * uses the record's ID as the key to match the records.
     * 
     * 
     * -If the key is not matched, then a new record is created.
     * -If the key is matched once, then the existing record is updated.
     * -If using an external ID, if the key is matched multiple times, then an error
     * 		is generated. and the record is neither updated or inserted.
     */
    public static void upsertExample(){
        List<Account> accList = [SELECT BillingCity
                                 FROM Account
                                 WHERE BillingCity='New York'];
        for(Account a : accList){
            a.BillingCity = 'Mumbai';
        }
        
        accList.add(new Account(Name='Acme', BillingCity='San Francisco'));
        
        upsert accList;
    }
    //Deleted records aren't deleted permanently but are placed in recycling bin for 15 days
    public static void deleteExample(){
        insert new Account(Name='Mike\'s shop');
        Account a = [SELECT Name FROM Account WHERE Name='Mike\'s shop'];
        delete a;
    }
    
    /*
     * SOQL Statements can use the ALL ROWS keywords/clause to query all records in an org,
     * included deleted records
     * 
     */
    
    public static void undeleteExample(){
        System.debug('All Students' + [
            							SELECT 
            								Name 
            							FROM 
            								Student__c
            							WHERE Name='Kelly'
        								]);
        
        List<Student__c> students = [SELECT Name FROM Student__c WHERE Name='Kelly' ALL ROWS];
        System.debug('Students: ' + students);
        undelete students;
    }        
}