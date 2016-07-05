
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
    var w65 = 0.65, h9 = 0.90;
    var w95 = 0.95;
    if (window.innerWidth)
        w = window.innerWidth;
    else if ((document.body) && (document.body.clientWidth))
        w = document.body.clientWidth;
    if (window.innerHeight)
        h = window.innerHeight;
    else if ((document.body) && (document.body.clientHeight))
        h = document.body.clientHeight;
    
    w = w < 500? w * w95 + 'px' : w * w65 + 'px';
    h = h * h9 + 'px';
    
    var url = "box?id=" + eid;
    var index=layer.open({
            type: 2,
            title: '请投票选择',
            shadeClose: true,
            shade: 0.8,
            area: [w, h],
            content: url
        }); 
    layer.iframeAuto(index); 
}