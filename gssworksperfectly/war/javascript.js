$(document).ready(function(){
    $(".btn22").click(function(){
    	
    	//$(this).fadeOut('slow');
    	$(this).hide();
    	
    	alert(this.className);
    	
    });
    
});



function validateForm() {
    var x = document.forms["myForm"]["time"].value;
    var y = document.forms["myForm"]["reason"].value;
    if ((x == null || x == "")||(y == null || y == "")) {
        alert("Name must be filled out");
        return false;
    }
}

function goBack() {
	alert("calling goBack")
   // window.history.back();
	window.history.go(-2);
}


function goForward() {
	alert("calling goForward")
	window.history.go(2);
}