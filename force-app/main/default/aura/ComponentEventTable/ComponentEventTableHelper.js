({
	getCases : function(component) {
		// Step 1 - open reference to server-side method
		var getCasesAction = component.get("c.getCasesWithPriority");
        
        // Step 2 - set params of server-side method
        getCasesAction.setParams({
            "priority": component.get("v.priority")
        });
        
        // Step 3 - set callback
        getCasesAction.setCallback(this, function(response){
            var state = response.getState();
            
            if(component.isValid() && state === "SUCCESS"){
                
            }
        });
	}
})