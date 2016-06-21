
jQuery(document).ready(function(){

    jQuery(".btn").mouseenter(function(){
    	jQuery(".btn").hide();
    	jQuery(".btn-hover").show();
    });

    jQuery(".btn-hover").mouseout(function(){
    	jQuery(".btn").show();
    	jQuery(".btn-hover").hide();
    });

    jQuery("#okBtn").click(function(){
    	jQuery("#createForm").submit();
    });

    jQuery("#confirmBtn").click(function(){
        jQuery("#confirmForm").submit();
    });

    jQuery('.slider').slick();
    
});






