public class StaticClass {
	private static Integer numberOfObjectsCreated = 0;
    private Integer secondNumber = 0;
    
    public StaticClass(){
        numberOfObjectsCreated++;
        secondNumber++;
    }
    
    public void incrementSecondNumber(){
        secondNumber++;
    }
    
    public void incrementNumberOfObjectsCreated(){
        numberOfObjectsCreated++;
    }
    
    public Integer getSecondNumber(){
        return secondNumber;
    }
    
    public Integer getNumberOfObjectsCreated(){
        return numberOfObjectsCreated;
    }
}