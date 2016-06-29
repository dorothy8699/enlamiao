
$(document).ready(function(){
	var event = {
	param:{title: jQuery("#title"), content:jQuery("#content"), start:jQuery("#datetimes")},
	msg:{
		TITLE_ERROR: "请输入1－100位字符",
		TITLE_IS_BLANK: "请输入活动主题",
		CONTENT_ERROR: "请输入1－3000位字符",
		CONTENT_IS_BLANK: "请输入活动详细",
		START_ERROR: "请选择1－15个候补时间",
		START_OUT_FORTMAT: "候补时间格式不正确，请重新输入"
	},
	error:{
		title: jQuery("#title-error-msg"),
		content: jQuery("#content-error-msg"),
		start: jQuery("#start-error-msg"),
		titleArea: jQuery("#title-error-area"),
		contentArea: jQuery("#content-error-area"),
		startArea: jQuery("#start-error-area"),
	},
	checkCreateValue: function(){
			var flg = false;
			if(!this.param.title.val()){
				this.error.title.html(this.msg.TITLE_IS_BLANK);
				this.error.titleArea.show();
				flg = true;
			}
			else if(this.param.title.val().length > 100){
				this.error.title.html(this.msg.TITLE_ERROR);
				this.error.titleArea.show();
				flg = true;
			}
			if(!this.param.content.val()){
				this.error.content.html(this.msg.CONTENT_IS_BLANK);
				this.error.contentArea.show();
				flg = true;
			}
			else if(this.param.content.val().length > 3000){
				this.error.content.html(this.msg.CONTENT_ERROR);
				this.error.contentArea.show();
				flg = true;
			}
			if(!this.param.start.val()){
				this.error.start.html(this.msg.START_IS_BLANK);
				this.error.startArea.show();
				flg = true;
			}
			return flg;
		}
	};

    jQuery("#createBtn").click(function(){
    	var flg = event.checkCreateValue();
    	if(flg) return;
        $("#createForm").submit();
    });
});


