
$(document).ready(function(){
	var event = {
	param:{title: $("#title"), content:$("#content"), options:$("#options"), end:$("#end")},
	msg:{
		TITLE_ERROR: "请输入1－100位字符",
		TITLE_IS_BLANK: "请输入活动主题",
		CONTENT_ERROR: "请输入1－3000位字符",
		CONTENT_IS_BLANK: "请输入活动详细",
		OPTIONS_IS_BLANK: "请输入1－15个候补选项",
		END_IS_BLANK: "请选择投票有效期",
	},
	error:{
		title: $("#title-error-msg"),
		content: $("#content-error-msg"),
		options: $("#options-error-msg"),
		end: $("#end-error-msg"),
		titleArea: $("#title-error-area"),
		contentArea: $("#content-error-area"),
		optionsArea: $("#options-error-area"),
		endArea: $("#end-error-area"),
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
			if(!this.param.options.val()){
				this.error.options.html(this.msg.OPTIONS_IS_BLANK);
				this.error.optionsArea.show();
				flg = true;
			}
			if(!this.param.end.val()){
				this.error.end.html(this.msg.END_IS_BLANK);
				this.error.endArea.show();
				flg = true;
			}
			return flg;
		}
	};

    $("#createBtn").click(function(){
    	var flg = event.checkCreateValue();
    	if(flg) return;
        $("#createForm").submit();
    });

    $.datepicker.formatDate( "yy-mm-dd", new Date( 2007, 1 - 1, 26 ) );

    $("#end").datepicker({
    	monthNames: [ "一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月" ],
    	dateFormat: "yy-mm-dd",
    });
});


