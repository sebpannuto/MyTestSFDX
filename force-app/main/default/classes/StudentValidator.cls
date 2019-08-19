public class StudentValidator {
    public static void validatePhoneNumber(List<Student__c> students){
        for(Student__c student : students){
            if(student.Phone_Number__c == null){
                student.addError('Please provide a Phone Number for: ' + student.Name);
            }
        }
    }
}