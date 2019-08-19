({
	priorityChanged : function(component, event, helper) {
		console.log("Firing Priority Change Event");
        
        var newPriority = component.get("v.priority");
        
        // Get a reference to the event
        // Note: there must be a <aura:registerEvent> tag with its name attribute set to
        // priorityChangeEvent
        var priorityChangedEvent = component.getEvent("priorityChangeEvent");
        
        priorityChangedEvent.setParams({
            "priority" : newPriority
        });
        
        priorityChangedEvent.fire();
        
        console.log("Priority Change Event Fired");
        
	},
})