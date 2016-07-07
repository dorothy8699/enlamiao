function createEvent(){
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
        },
    poll: function(){
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
                   if ((navigator.userAgent.match(/(iPhone|iPod|Android|ios)/i))) {
                    window.location.reload();
                   }else{
                    tb_remove();
                    window.parent.location.reload();
                   }
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
        }
};
return event;
}

