public class CreateCaseController {
	@AuraEnabled
    public static void saveCaseDB(Case newCase, Id contactId){
        //Check if the user can create a Case
        if(!Schema.SObjectType.Case.isCreateable()){
            throw new AuraHandledException('You cannot create Cases');
        }
        
        newCase.ContactId = contactId;
        
        try{
            insert newCase;
        }catch(Exception e){
            System.debug('An error has occurred: ' + e.getMessage());
        }
        
    }
}