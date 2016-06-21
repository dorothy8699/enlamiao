
$(document).ready(function(){
	jQuery(".btn").mouseenter(function(){
    	jQuery(".btn").hide();
    	$(".btn-hover").show();
    });

    jQuery(".btn-hover").mouseout(function(){
    	jQuery(".btn").show();
    	jQuery(".btn-hover").hide();
    });

    jQuery("#pollBtn").click(function(){
        //$("#pollForm").submit();
         $.ajax({
             url: "poll",  
             type: "POST",
             data: $("#pollForm").serialize(),
             async: false,
             error: function(){  
                 alert('Error loading XML document');  
             },  
             success: function(data,status){
                 tb_remove();
                 window.parent.location.reload();
             }
         });

    });

    jQuery(".yesBtn").click(function(){
        $(this).attr("src","image/clickedyes.svg");
        $(this).next('.radioyes').attr("checked","checked");
        var noBtn = $(this).closest('td').find('.noBtn');
        noBtn.attr("src","image/no.svg");
        noBtn.next('.radiono').removeAttr("checked");
    });

    jQuery(".noBtn").click(function(){
        $(this).attr("src","image/clickedno.svg");
        $(this).next('.radiono').attr("checked","checked");
        var yesBtn = $(this).closest('td').find('.yesBtn');
        yesBtn.attr("src","image/yes.svg");
        yesBtn.next('.radioyes').removeAttr("checked");
    });

    jQuery(".yesBtn").mouseenter(function(){
    	if($(this).attr("src")=="image/clickedyes.svg") return;
        $(this).attr("src","image/hoveryes.svg");
    });

    jQuery(".noBtn").mouseenter(function(){
    	if($(this).attr("src")=="image/clickedno.svg") return;
        $(this).attr("src","image/hoverno.svg");
    });

    jQuery(".yesBtn").mouseout(function(){
    	if($(this).attr("src")=="image/clickedyes.svg") return;
        $(this).attr("src","image/yes.svg");
    });

    jQuery(".noBtn").mouseout(function(){
    	if($(this).attr("src")=="image/clickedno.svg") return;
        $(this).attr("src","image/no.svg");
    });

});

function tb_remove() {
    var document = window.parent.document;
    $("#TB_imageOff",window.parent.document).unbind("click");
    $("#TB_closeWindowButton",window.parent.document).unbind("click");
    $("#TB_window",window.parent.document).fadeOut("fast",function(){$('#TB_window,#TB_overlay,#TB_HideSelect',window.parent.document).trigger("unload").unbind().remove();});
    $("#TB_load",window.parent.document).remove();
    if (typeof window.parent.document.body.style.maxHeight == "undefined") {//if IE 6
        $("body","html",window.parent.document).css({height: "auto", width: "auto"});
        $("html",window.parent.document).css("overflow","");
    }
    window.parent.document.onkeydown = "";
    window.parent.document.onkeyup = "";
    return false;
}