({
	doInit : function(component, event, helper) {
		var heightFeet = component.get("v.heightFeet");
        var heightInches = component.get("v.heightInches");
        
        console.log("heightFeet = " + heightFeet);
        console.log("heightInches = " + heightInches);
	},
    
    process : function(component, event, helper){
    	var heightFeet = component.get("v.heightFeet");
        var heightInches = component.get("v.heightInches");
        
        var totalFt = parseInt(heightFeet) + (parseInt(heightInches) / 12);
        component.set("v.totalFt", totalFt);
        var inches = parseInt(heightFeet) * 12 + parseInt(heightInches);
        helper.HelperToCm(component, inches);
        helper.HelperToM(component, inches);
    },
})