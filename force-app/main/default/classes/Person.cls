public virtual class Person {
	private String name;
    private String email;
    private Integer age;
    
    public Person(){
        name = '';
        email = '';
        age = 0;
    }
    
    public Person(String name, String email){
        this.name = name;
        this.email = email;
        age = 0;
    }
    public Person(String name, String email, Integer age){
        this.name = name;
        this.email = email;
        this.age = age;
    }
    
    public String getName(){
        return name;
    }
    
    public String getEmail(){
        return email;
    }
    
    public Integer getAge(){
        return age;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public void setAge(Integer age){
        if(age > 0){
        	this.age = age;
        }
    }
    
    public virtual void display(){
    	System.debug('Name: ' + name);
        System.debug('Email: ' + email);
        System.debug('Age: ' + age);
    }
}