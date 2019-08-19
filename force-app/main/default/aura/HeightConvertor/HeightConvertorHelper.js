({
	HelperToCm : function(component, inches) {
		var cm = parseInt(inches) / 0.39370;
        component.set("v.totalCm", cm);
	},
    
    HelperToM : function(component, inches) {
		var m = parseInt(inches) / 39.370;
        component.set("v.totalM", m);
	},
})