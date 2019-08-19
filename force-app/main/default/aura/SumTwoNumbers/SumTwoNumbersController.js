({
	doInit : function(component, event, helper) {
		//Grab the value of the attribute where name=numOne
		var numOne = component.get("v.numOne");
        //Grab the value of the attribute where name=numTwo
		var numTwo = component.get("v.numTwo");
        
        if (numOne === undefined){
            console.log("numOne is undefined");
        }
        if (numTwo === undefined){
            console.log("numTwo is undefined");
        }
        
	},
    
    addNumbers : function(component, event, helper){
		var numOne = component.get("v.numOne");
		var numTwo = component.get("v.numTwo");
        
        var sum = numOne + numTwo;
        
        //Update value of attribute
        component.set("v.sum", sum);
    },
    
    sumChanged : function(component, event, helper){
        helper.helperMethod1(component);
    },
    
})