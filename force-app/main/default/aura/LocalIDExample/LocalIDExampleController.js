({
	changeText : function(component, event, helper) {
		// Retrieve text component using local Id
		var outputText = component.find("myText");
        console.log("component: " + outputText);
        
        // Set the value attribute of the component
        outputText.set("v.value", "Hello");
        
        outputText.set("v.title", "Look at me!");
	}
})