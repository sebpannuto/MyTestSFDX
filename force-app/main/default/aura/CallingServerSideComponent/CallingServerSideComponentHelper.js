({
	handleErrors : function(errors) {
        if(errors){
            for(var i = 0; i < errors.size(); i++){
                if(errors[i] && errors[i].message){
                    console.log('Error message: ' + errors[i].message);
                }
            }
        }
	}
})