/*$ = jQuery.noConflict();
J = jQuery.noConflict();
$(document).ready(function(){

    jQuery("#start").mouseenter(function(){
    	jQuery("#start").hide();
    	$("#start-hover").show();
    });

        jQuery("#start-hover").mouseout(function(){
    	jQuery("#start").show();
    	jQuery("#start-hover").hide();
    });

    //jQuery("#datepicker").datepicker();    
    $('#datetimepicker').datetimepicker();
    
});*/


(function($) {

$("#start").mouseenter(function(){
    	$("#start").hide();
    	$("#start-hover").show();
    });

        $("#start-hover").mouseout(function(){
    	$("#start").show();
    	$("#start-hover").hide();
    });

   // jQuery.datetimepicker.setLocale('ch');

//jQuery('#datetimepicker').datetimepicker();

});

