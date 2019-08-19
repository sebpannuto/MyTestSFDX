trigger Account_Trigger on Account (before insert, before delete, after insert) {
    /**
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            AccountValidator.checkBillingCity(Trigger.new);
        }
        else if(Trigger.isDelete){
            AccountValidator.checkBeingDeleted(Trigger.old);
        }
    }
    else{
        if(Trigger.isInsert){
            AccountHandler.postToChatterAfterCreation(Trigger.new[0]);
        }
    }
**/
}