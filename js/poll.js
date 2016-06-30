
$(document).ready(function(){

    var event = {
    param:{username: $("#username")},
    msg:{
        NAME_ERROR: "请输入1－20位字符",
        NAME_IS_BLANK: "请输入姓名或昵称",
        START_ERROR: "请完整选择所有日程",
        START_WARNING: "非法输入"
    },
    error:{
        name: $("#name-error-msg"),
        start: $("#start-error-msg"),
        nameArea: $("#name-error-area"),
        startArea: $("#start-error-area"),
    },
    checkPollValue: function(){
            var flg = false;
            if(!this.param.username.val()){
                this.error.name.html(this.msg.NAME_IS_BLANK);
                this.error.nameArea.show();
                flg = true;
            }
            else if(this.param.username.val().length > 20){
                this.error.name.html(this.msg.NAME_ERROR);
                this.error.nameArea.show();
                flg = true;
            }

            $('.pollTable tr td:nth-child(2)').each(function(){
                var radio = $(this).find("input[type=radio]:checked");
                if (radio.length <1 ){
                    flg = true;
                    event.error.start.html(event.msg.START_ERROR);
                    event.error.startArea.show();
                    return false;
                }else if(!radio.val().match(/^[0-2]*$/) ){
                    flg = true;
                    event.error.start.html(event.msg.START_WARNING);
                    event.error.startArea.show();
                    return false;
                }
            });
            
            return flg;
        }
    };

	$(".btn").mouseenter(function(){
    	$(".btn").hide();
    	$(".btn-hover").show();
    });

    $(".btn-hover").mouseout(function(){
    	$(".btn").show();
    	$(".btn-hover").hide();
    });

    $("#pollBtn").click(function(){

         var flg = event.checkPollValue();
         if(flg) return;
         $.ajax({
             url: "poll",  
             type: "POST",
             data: $("#pollForm").serialize(),
             async: false,
             error: function(data){  
                 alert('Error loading XML document');  
             },  
             success: function(data,status){
                data = jQuery.parseJSON(data);
                if(data == "success"){
                   tb_remove();
                   window.parent.location.reload();
                }else{
                    if(data.nameErr){
                        event.error.name.html(data.nameErr);
                        event.error.nameArea.show();
                    }
                    if(data.voteErr){
                        event.error.start.html(data.voteErr);
                        event.error.startArea.show();
                    }
                }
             }
         });

    });

    $(".yesBtn").click(function(){
        $(this).attr("src","image/clickedyes.svg");
        $(this).next('.radioyes').attr("checked","checked");
        var noBtn = $(this).closest('td').find('.noBtn');
        noBtn.attr("src","image/no.svg");
        noBtn.next('.radiono').removeAttr("checked");
    });

    $(".noBtn").click(function(){
        $(this).attr("src","image/clickedno.svg");
        $(this).next('.radiono').attr("checked","checked");
        var yesBtn = $(this).closest('td').find('.yesBtn');
        yesBtn.attr("src","image/yes.svg");
        yesBtn.next('.radioyes').removeAttr("checked");
    });

    $(".yesBtn").mouseenter(function(){
    	if($(this).attr("src")=="image/clickedyes.svg") return;
        $(this).attr("src","image/hoveryes.svg");
    });

    $(".noBtn").mouseenter(function(){
    	if($(this).attr("src")=="image/clickedno.svg") return;
        $(this).attr("src","image/hoverno.svg");
    });

    $(".yesBtn").mouseout(function(){
    	if($(this).attr("src")=="image/clickedyes.svg") return;
        $(this).attr("src","image/yes.svg");
    });

    $(".noBtn").mouseout(function(){
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