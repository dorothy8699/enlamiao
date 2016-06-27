
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
        $("#pollForm").submit();
    });

    jQuery(".yesBtn").click(function(){
        $(this).attr("src","image/clickedyes.svg");
        var noBtn = $(this).parent().find('.noBtn');
        noBtn.attr("src","image/no.svg");
    });

    jQuery(".noBtn").click(function(){
        $(this).attr("src","image/clickedno.svg");
        var yesBtn = $(this).parent().find('.yesBtn');
        yesBtn.attr("src","image/yes.svg");
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

function openBox(eid){
    var w = 900,h = 500;
    if (window.innerWidth)
        w = window.innerWidth * 0.65;
    else if ((document.body) && (document.body.clientWidth))
        w = document.body.clientWidth * 0.65;
    if (window.innerHeight)
        h = window.innerHeight * 0.8;
    else if ((document.body) && (document.body.clientHeight))
        h = document.body.clientHeight * 0.8;
    var url = "box?id=" + eid + "&keepThis=true&TB_iframe=true&height=" + h + "&width=" + w;
    tb_show(null,url);
}