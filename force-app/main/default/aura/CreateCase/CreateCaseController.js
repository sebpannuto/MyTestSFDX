({
    saveCase : function(component, event, helper) {
        var newCase = component.get("v.newCase");
        var contactId = component.get("v.recordId");
        
        var getCaseDB = component.get("c.saveCaseDB");
        
        getCaseDB.setParams({
            "newCase" : newCase, 
            "contactId" : contactId
        });
        
        getCaseDB.setCallback(this, function(response){
            var state = response.getState();
            var title;
            var message;
            
            if (state === "SUCCESS"){
                console.log("success");
                title = "Success";
                message = "Great Success";
            }
            else{
                title = "Error!";
                message = "Bad News Bears;"
            }
            var toastEvent = $A.get("e.force:showToast");
            toastEvent.setParams({
                "title": title,
                "message": message
            });
            toastEvent.fire();
        });
        $A.enqueueAction(getCaseDB);
    },
})