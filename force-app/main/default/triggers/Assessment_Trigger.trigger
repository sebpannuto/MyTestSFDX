trigger Assessment_Trigger on Assessment__c (before insert, after insert) {
    if(Trigger.isBefore){

    }
    else{
        if(Trigger.isInsert){
            AssessmentValidator.createGradesForStudentsWhenAssessmentCreated(Trigger.new[0]);
            
        }
    }
}