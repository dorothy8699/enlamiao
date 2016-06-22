
jQuery(document).ready(function(){

    jQuery("#startBtn").mouseenter(function(){
    	jQuery("#startBtn").removeClass('color-bg-r').addClass('color-bg-b');
    });

    jQuery("#startBtn").mouseout(function(){
    	jQuery("#startBtn").removeClass('color-bg-b').addClass('color-bg-r');
    });

    jQuery("#okBtn").click(function(){
    	jQuery("#createForm").submit();
    });

    jQuery("#confirmBtn").click(function(){
        jQuery("#confirmForm").submit();
    });

    jQuery('.slider').slick();
    
});






