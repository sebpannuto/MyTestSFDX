({
	doInit : function(component, event, helper) {
		var d = new Date(component.get("v.birthDate"));

	},
    
    Dprocess : function(component, event, helper){
    	var birthDate = new Date(component.get("v.birthDate"));
		var today = new Date();
        
        component.set("v.days", helper.inDays(birthDate, today));
        component.set("v.weeks", helper.inWeeks(birthDate, today));
        component.set("v.months", helper.inMonths(birthDate, today));
        component.set("v.years", helper.inYears(birthDate, today));
        
        
    },
})