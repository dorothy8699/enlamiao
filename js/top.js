jQuery(document).ready(function(){

    jQuery("#start").mouseenter(function(){
    	jQuery("#start").hide();
    	jQuery("#start-hover").show();
    });

        jQuery("#start-hover").mouseout(function(){
    	jQuery("#start").show();
    	jQuery("#start-hover").hide();
    });
    
});

