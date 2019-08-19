public class AssessmentValidator {
    public static void createGradesForStudentsWhenAssessmentCreated(Assessment__c assessment){
        // first - find students enrolled in the class
        List<Student__c> studentsEnrolledInClass = new List<Student__c>();
        List<Class_Enrollment__c> cesForClass = [SELECT Id, Student__c
                                                 FROM Class_Enrollment__c
                                                 WHERE Class__c =: assessment.Class__c];
        List<Student__c> students = [SELECT Id, Name
                                     FROM Student__c];
        for(Class_Enrollment__c ce : cesForClass){
            for(Student__c stu : students){
                if(stu.id == ce.Student__c){
                    studentsEnrolledInClass.add(stu);
                }
            }
        }
        
        List<Grade__c> gradesForStudents = new List<Grade__c>();
        
        // Create grade for each student - setting grade assessment and student lookup
        for(Student__c stu : studentsEnrolledInClass){
			            
        }
        
    }
}