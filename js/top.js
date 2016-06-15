
$(document).ready(function(){

    jQuery(".btn").mouseenter(function(){
    	jQuery(".btn").hide();
    	$(".btn-hover").show();
    });

    jQuery(".btn-hover").mouseout(function(){
    	jQuery(".btn").show();
    	jQuery(".btn-hover").hide();
    });

    jQuery("#okBtn").click(function(){
    	$("#createForm").submit();
    });

    jQuery("#confirmBtn").click(function(){
        $("#confirmForm").submit();
    });

    
});






