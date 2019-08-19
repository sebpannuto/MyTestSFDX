public class Performance extends Play {
	private String theater;
    private Critic performanceCritic;
    
    public Performance(){
        theater = '';
        performanceCritic = new Critic();
    }
    
    public Performance(String theater, Critic performanceCritic){
        this.theater = theater;
        this.performanceCritic = performanceCritic;
    }
    
    public void setTheater(String theater){
        this.theater = theater;
    }
    
    public void setPerformanceCritic(Critic performanceCritic){
        this.performanceCritic = performanceCritic;
    }
    
    public String getTheater(){
        return theater;
    }
    
    public Critic getPerformanceCritic(){
        return performanceCritic;
    }
    
    public override void display(){
        super.display();
        System.debug('Theater: ' + theater);
        performanceCritic.display();
    }
}