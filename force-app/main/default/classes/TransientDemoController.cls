public class TransientDemoController {
    
    Datetime nonTransientVariable;
    // A common use case for the transient keyword is a field on a Visualforce page that is needed only for the duration
    // of a page request, but should not be part of the page's view state and would use too many system resources to be
    // recomputed many times during a request
    transient Datetime transientVariable;
    
    public String getNonTransientVariable() {
        if (nonTransientVariable == null) 
            nonTransientVariable = System.now();
        
        return '' + nonTransientVariable;
    }
    
    public String getTransientVariable() {
        if (transientVariable == null) 
            transientVariable = System.now();
        
        return '' + transientVariable;
    }
    
    public void refresh(){}
}