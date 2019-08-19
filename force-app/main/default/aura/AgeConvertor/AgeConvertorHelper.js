({
	inDays : function(birthDate, today) {
		var days = (today.getTime() / (60*60*24*1000));
        var bdays = (birthDate.getTime() / (60*60*24*1000));
        return parseInt(days) - parseInt(bdays);
	},
    
    inWeeks : function(birthDate, today){
        var weeks = (today.getTime() * 0.0000000016534);
        var bweeks = (birthDate.getTime() * 0.0000000016534);
        return parseInt(weeks) - parseInt(bweeks);
    },
    
    inMonths : function(birthDate, today){
        var months = (today.getTime() * 0.00000000038026);
        var bmonths = (birthDate.getTime() * 0.00000000038026);
        return parseInt(months) - parseInt(bmonths);
    },
    
    inYears : function(birthDate, today){
        var years = (today.getTime() * 0.000000000031689);
        var byears = (birthDate.getTime() * 0.000000000031689);
        return parseInt(years) - parseInt(byears);
    },
})