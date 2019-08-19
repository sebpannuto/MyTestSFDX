public class PracticeExample {
    public static Integer findLargest(List<Integer> intList){
        Integer largest = intList[0];
        for(Integer i = 1; i < intList.size(); i++){
            if(intList[i] > largest){
                largest = intList[i];
            }
        }
        System.debug('The largest number is: ' + largest +  'in the List: ' + intList);
        return largest;
    }
    
    public static List<User> lastLoginUserDate(){
        List<User> userList = [
            SELECT Name, LastLoginDate 
            FROM User 
            ORDER BY LastLoginDate DESC
            ];
        return userList;
    }
    
    public static void createNewUserWithProfile(){
        User u = new User(Username='Bob@bo.com', ProfileID='00e3i000000KQPcAAO');
        insert u;
        System.debug('All Users:' + [SELECT Username, ProfileID From User]);
    }
}