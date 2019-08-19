public virtual class Rectangle extends Shape{
    public Double height{
        get;
        set;
    }
    
    public Double width{
        get;
        set;
    }
    
    public Rectangle(){
        setNumberOfSides(4);
    }
    
    public Rectangle(Double height, Double width){
        this.height = height;
        this.width = width;
        setNumberOfSides(4);
    }
    
    public Double calculateArea(){
        return width*height;
    }
    
    public Double calculatePerimeter(){
        return 2 * (width + height);
    }
    
    public void draw(){
        System.debug('Drawing a Rectangle with width: ' + width + ' height: ' + height);
    }
    
}