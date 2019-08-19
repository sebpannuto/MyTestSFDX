public class WizardDemoController {
    public String name{get;set;}
    public String email {get;set;}
    public String phone {get;set;}
    
    
    public PageReference goToPageOne(){
        return Page.Page1;
    }
    
    public PageReference goToPageTwo(){
        return Page.Page2;
    }
    
    public PageReference goToPageThree(){
        return Page.Page3;
    }
    
    public PageReference goToPageFour(){
        return Page.Page4;
    }
    
    public PageReference save(){
        Contact c = new Contact();
        c.LastName = name;
        c.Email= email;
        c.Phone = phone;
        insert c;
        return new ApexPages.StandardController(c).view();
    }
}