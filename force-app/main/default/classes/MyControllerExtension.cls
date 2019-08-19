public class MyControllerExtension {
    
    private Account acc;
    
    //A constructor that takes in an ApexPages.StandardController parameter MUST
    //be declaring when creating a controller extension
    public MyControllerExtension(ApexPages.StandardController controller){
        //Casting the record returned by controller.getRecord() is required since it
        //returns back a sObject and not all sObjects are Accounts
        this.acc = (Account)controller.getRecord();
    }
    
    public String getGreeting(){
        return 'Hello ' + acc.Name + '( ' + acc.Id + ' )';
    }
}