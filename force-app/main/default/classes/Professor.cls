public class Professor extends Person {
    
    public Decimal salary {
        get{
            if(salary == null){
                salary = 0.00;
            }
            return salary;
        }
        set{
            if (value < 0.0){
                System.debug('You cannot have a negative salary. That\'s called debt');
            }
            else{
                salary = value;
            }
        }
    }
    
    public Professor(){
        salary = 0.00;
    }
    
    
    public Professor(String name, String email, Integer age, Integer salary){
        super(name, email, age);
        this.salary = salary;
    }
    
    public override void display(){
        super.display();
        System.debug('Salary: ' + salary);
    }
}