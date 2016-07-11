
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


    $("#cmt1").click(function(){
    	layer.msg('<div id="comment1" class="tal"><div class="ft15">例1:团队建设策划方案</div><div class="ft15">例2:班级活动意见收集</div><div class="ft15">例3:户外活动策划方案</div><div class="ft15">例4:员工聚餐活动策划方案</div><div class="ft13 pdt5">*活动标题不能超过100字</div></div>');
    });
    
    $("#cmt2").click(function(){
    	layer.msg('<div id="comment2" class="tal">例:2016-06-06<div class="ft13 pdt5">＊系统默认方案有效期为30天</div></div>');
    });

    $("#cmt3").click(function(){
    	layer.msg('<div id="comment3" class="tal"><div class="ft15">例:</div><div class="ft15">参加人员:全部门人员</div><div class="ft15">人均预算:300元</div><div class="ft15">活动目的:加强凝聚力与团队协作能力</div><div class="ft13 pdt5">*活动内容不能超过3000字</div></div>');
    });

    $("#cmt4").click(function(){
    	layer.msg('<div id="comment4" class="tal"><div class="ft15">例1:</div><div class="ft15">2016年6月6日〜</div><div class="ft15">2016年6月7日〜</div><div class="ft15">2016年6月8日〜</div><div class="ft15">2016年6月9日〜</div><div class="ft15 pdt5">例2:</div><div class="ft15">去烧烤</div><div class="ft15">去登山</div><div class="ft15">去农家院</div><div class="ft15">去采摘</div><div class="ft15">去K歌</div><div class="ft13 pdt5">*请注意每一个选项必须换行<br>*不能超过15个选项</div></div>');
    });

});


