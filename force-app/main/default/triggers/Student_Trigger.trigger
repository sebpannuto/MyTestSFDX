trigger Student_Trigger on Student__c (before insert) {
	System.debug('This is only called before insert');
    
    // Trigger Context Variables
    // Trigger.isExecuting - Returns true if the current context for the Apex code
    //		is a Trigger, not a VisualForce page, a Web Sevice or an executeAnonymous() API call
    // Trigger.isInsert - Returns true if this trigger was fired due to an insert Operation
    // Trigger.isUpdate - Returns true if this trigger was fired due to an update Operation
    // Trigger.isDelete - Returns true if this trigger was fired due to an delete Operation
    // Trigger.isUndelete - Returns true if this trigger was fired due to an undelete Operation
    // 
    // Trigger.isBefore - Returns true if this trigger was fired before any record was saved
    // Trigger.isAfter - Returns true if this trigger was fired after all records were saved
    // 
    // Trigger.new - Returns a list of the new verisions of the sObject records
    // Trigger.old - Returns a list of the old versions of the sObject records
    // 
    // Trigger.newMap - Returns a map of IDs to the new versions of the sObject records
    // Trigger.oldMap - Returns a map of IDs to the old versions of the sObject records
    
    if (Trigger.isBefore){
        if(Trigger.isInsert){
            StudentValidator.validatePhoneNumber(Trigger.new);
        }
    }
    
    
    
    
    
    
    
    
    
}