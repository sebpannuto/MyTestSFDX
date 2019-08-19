public class ClassValidator {
    public static void checkForDuplicateClasses(List<Class__c> classes){
        /**
List<Class__c> existingClasses = [SELECT Id 
FROM Class__c 
WHERE Name = :classOfInterest.Name
];
if(existingClasses.size() > 0){
classOfInterest.addError('There already exists a class with this name.');
}
**/
        List<String> newClassNames = new List<String>();
        for(Class__c c : classes){
            newClassNames.add(c.Name);
        }
        
        for(Class__c existingClass : [SELECT Name FROM Class__c WHERE Name IN :newClassNames]){
            for(Class__c newClass : classes){
                if(existingClass.Name == newClass.Name){
                    newClass.addError('There already exists a class with this name.');
                }
            }
        }
        
    }
    
    public static void checkNameOfClasses(List<Class__c> classes){
        //Creates Names for Valid class names
        List<String> classNames = new String[]{'ENG', 'MAT', 'HIS', 'BIO', 'PHY', 'CHE'};
            
        //Checks if the name matches
        boolean foundName = false;
        
        for(Class__c currentClass : classes){
            for(String nameOfClass : classNames){
                System.debug(currentClass.Name.substring(0,3));
                System.debug(nameOfClass);
                if(currentClass.Name.substring(0,3) == nameOfClass){
                    foundName = true;
                }
            }
            if(!foundName){
                currentClass.addError('Not a valid Name for the class');
            }
            else{
                foundName = true;
            }
        }
        
    }
}