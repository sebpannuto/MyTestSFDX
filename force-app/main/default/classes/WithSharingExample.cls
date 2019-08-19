public with sharing class WithSharingExample {
    public List<Class__c> classes{
        get{
            return [SELECT Name FROM Class__c];
        }
    }
}