({
	doInit : function(component, event, helper) {
		// Step 1 - Get a reference to server-side controller method
		var getAccounts = component.get("c.getAccounts");
        
        // Step 2 - Optionally set parameters
        // getAccounts.setParams({});
        // Step 3 - set the function to execute when the server gives a response
        // (callback) 
        getAccounts.setCallback(this, function(response){
        	var state = response.getState();
            
            if(state === "SUCCESS"){
            	component.set("v.accounts", response.getReturnValue());
            }
            else if (state === "ERROR"){
                helper.handleErrors(response.getError());
            }
        });
        
        // Step 4 - Tell SF to execute this action when the resources become available
		$A.enqueueAction(getAccounts);
	},
    
})