$(document).ready(function(){
    $(".btn22").click(function(){
    	
    	$(this).fadeOut('slow');
    	
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



