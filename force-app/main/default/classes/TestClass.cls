//To mark a class as a test class, provide the @isTest annotation
@isTest(SeeAllData=true)
public class TestClass {
    
    //@testSetup
    //static void setup(){
        /**
        //create test data
        List<Account> accList = new List<Account>();
        accList.add(new Account(Name='test1', NumberOfEmployees=1, NumberOfLocations__c=1));
        accList.add(new Account(Name='test2', NumberOfEmployees=1001, NumberOfLocations__c=5));
        accList.add(new Account(Name='test3', NumberOfEmployees=10001, NumberOfLocations__c=10));
        
        insert accList;
**/
      //  TestDataFactory.createTestAccounts(50);
    //}
    
    @isTest
    static void testAddTwoNumbers(){
        Integer expected = 11;
        Integer actual = MethodsToTest.addTwoNumbers(5, 6);
        System.assertEquals(expected, actual, 'Math is a lie');
    }
    
    @isTest
    static void testUpdateAccountSizeFromNumberOfEmployees(){
        
        
        //Call method to test
        AccountMethods.updateAccountSizeFromNumberOfEmployees();
        
        //Testing single action
        /**
//Retrieve test data
Account a1 = [SELECT Size__c
FROM Account
WHERE Name = 'test1'
LIMIT 1];
System.assertEquals('small', a1.Size__c, 'This account should have a size of small');

Account a2 = [SELECT Size__c
FROM Account
WHERE Name = 'test2'
LIMIT 1];
System.assertEquals('medium', a2.Size__c, 'This account should have a size of small');

Account a3 = [SELECT Size__c
FROM Account
WHERE Name = 'test3'
LIMIT 1];
System.assertEquals('large', a3.Size__c, 'This account should have a size of small');
**/
        //Test Bulk Action
        List<Account> accs = [SELECT NumberOfEmployees, Size__c
                              FROM Account
                              WHERE Name
                              LIKE 'Test%'];
        for(Account a : accs){
            if(a.NumberOfEmployees <= 1000){
                System.assertEquals('small', a.Size__c, 'This account should have a small size');
            }
            else if(a.NumberOfEmployees > 1000 && a.NumberOfEmployees <= 10000){
                System.assertEquals('medium', a.Size__c, 'This account should have a medium size');
            }
            else{
                System.assertEquals('large', a.Size__c, 'This account should have a large size');
            }
        }
    }
    
    @isTest
    static void testUpdateAccountSizeFromNumberOfLocations(){
        AccountMethods.updateAccountSizeFromNumberOfLocations();
        
        List<Account> accs = [SELECT NumberOfLocations__c, Size__c
                             FROM Account
                             WHERE Name
                             LIKE 'Test%'];
        for(Account a : accs){
            if(a.NumberOfLocations__c > 0 && a.NumberOfLocations__c <= 3){
                System.assertEquals('small', a.Size__c, 'Should be small');
            } else if(a.NumberOfLocations__c > 3 && a.NumberOfLocations__c <= 6){
                System.assertEquals('medium', a.Size__c, 'Should be medium');
            } else {
                System.assertEquals('large', a.Size__c, 'Should be large');
            }
        }
    }
    
    
    @isTest
    static void testFibonacci(){
        System.assertEquals(3, ProjectZero.fibonacci(4), 'Number wanted does not match up');
        System.assertEquals(0, ProjectZero.fibonacci(0), 'Number wanted does not match up');
        System.assertEquals(1, ProjectZero.fibonacci(1), 'Number wanted does not match up');
        
        System.assertEquals(-1, ProjectZero.fibonacci(-5), 'Negative number');
        
    }
    
    @isTest
    static void testSortArray(){
        List<Integer> intList1 = new Integer[]{0, 4, 1, 2, 7, 0, 5};
        List<Integer> eIntList1 = new Integer[]{0, 0, 1, 2, 4, 5, 7};
            
            List<Integer> intList2 = new Integer[]{1,2,3,4,5,6};
            List<Integer> eintList2 = new Integer[]{1,2,3,4,5,6};
        
        System.assertEquals(eIntList1, ProjectZero.sortArray(intList1), 'Did not sort properly');
        System.assertEquals(eIntList2, ProjectZero.sortArray(intList2), 'Did not sort properly');
    }
    @isTest
    static void startAndStopTest(){
        for(Integer i = 0; i < 100; i++){
            List<Lead> l = [SELECT ID FROM Lead LIMIT 1];
        }
        
        //The Limits Class provides us with information about how much of our governor limits
        //we've used and how much we can use
        System.debug('Number of queries used: ' + Limits.getQueries());
        System.debug('Number of queries Allowes: ' + Limits.getLimitQueries());
        
        Test.startTest();
        System.debug('Number of queries used inside startTest & stopTest: ' + Limits.getQueries());
        Test.stopTest();
        
        System.debug('Number of queries used: ' + Limits.getQueries());
    }
    
    @isTest
    static void testRunAs(){
        User u = [SELECT Id FROM User WHERE Id = '0053i000000prPAAAY'];
        
        List<Class__c> classes = [SELECT Id FROM Class__c];
        System.debug('Number of classes seen in System Context: ' + classes.size());
        
        System.runAs(u){
            classes = [SELECT Id FROM Class__c];
        	System.debug('Number of classes seen in Billy Madison: ' + classes.size());
        }
    }
}