public class Square extends Rectangle{
    public Square (Double sideLength){
        setSideLength(sideLength);
    }
    
    private void setSideLength(Double sideLength){
        this.height = sideLength;
        this.width = sideLength;
    }
    
}