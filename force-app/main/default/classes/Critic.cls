public class Critic extends Person {
	Integer yearsOfExperience;
    
    public Critic(){
        yearsOfExperience = 0;
    }
    
    public Critic(String name, String email){
        super(name, email);
        yearsOfExperience = 0;
    }
    
    public void setYearsOfExperience(Integer years){
        yearsOfExperience = years;
    }
    
    public Integer getYearsOfExperience(){
        return yearsOfExperience;
    }
    
    public override void display(){
        super.display();
        System.debug('Years of Experience: ' + yearsOfExperience);
    }
}