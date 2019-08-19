trigger Class_Trigger on Class__c (before insert, before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            //Check For Duplicates
            ClassValidator.checkForDuplicateClasses(Trigger.new);
            
            //Check Name of Class
            ClassValidator.checkNameOfClasses(Trigger.new);
        }
        else if(Trigger.isUpdate){
            //Check for Duplicates
            ClassValidator.checkForDuplicateClasses(Trigger.new);
            
            //Check Name
            ClassValidator.checkNameOfClasses(Trigger.new);
            
        }
    }
}