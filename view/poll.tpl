<!DOCTYPE html>
<html lang="zh-CN">
	<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" href="css/poll.css">
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="js/poll.js"></script>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<title></title>
	</head>
	<body>

	<div style="margin-top:30px;padding-top:20px;padding-bottom:20px;padding-left:10%;padding-right:10%;">
	          <form id="pollForm" method="post">
	            <div>	
                <div style="float:left"><img src="image/no1.svg" height="40px"></div>
                <div style="float:left;height:40px;line-height:40px;padding-left:20px;" class="title-up">请输入姓名或昵称</div>
                <div style="clear:both;"></div>
              </div>

              <div style="margin-top:10px;margin-left:60px;width:50%;">
              <!-- error message start -->
              <div id="name-error-area" class="error-area" style="display:none">
                <div style="height:30px;line-height:30px;float:left;">
                      <img src="image/warning.svg" height="25px">
                </div>
                <div id="name-error-msg" class="error-msg">
                  请输入姓名或昵称
                </div>
                <div style="clear:both;"></div>
              </div>
              <!-- error message end -->
              <input type="text" name="username" id="username" style="height:25px;">
              </div>
              

              <div style="margin-top:20px;">	
              <div style="float:left"><img src="image/no1.svg" height="40px"></div>
              <div style="float:left;height:40px;line-height:40px;padding-left:20px;" class="title-up">请选择日程	</div>
              <div style="clear:both;"></div>
              </div>

              <div style="margin-top:10px;max-height:500px;overflow-y:auto;margin-left:60px;">
                <!-- error message start -->
                <div id="start-error-area" class="error-area" style="display:none">
                  <div style="height:30px;line-height:30px;float:left;">
                        <img src="image/warning.svg" height="25px">
                  </div>
                  <div id="start-error-msg" class="error-msg">
                    请完整选择所有日程
                  </div>
                  <div style="clear:both;"></div>
                </div>
                <!-- error message end -->
                <div class="table-responsive">
                <table class="table table-bordered">
                {foreach from=$pollresult item=p}
                   <tr>
                   <td>{$p.begin}</td>
                   <td>
	                   <div>
		                   <div style="float:left">
                       <img class="yesBtn" src="image/yes.svg" height="30px" style="cursor:pointer">
                        <input type="radio" name="poll{$p.pid}" class="radioyes" value="1" style="display:none">
                       </div>
		                   <div style="float:left;height:30px;line-height:30px;padding-left:5px;padding-right:10px;">我要参加</div>
		                   <div style="float:left;">
                         <img class="noBtn" src="image/no.svg" height="30px" style="cursor:pointer">
                         <input type="radio" name="poll{$p.pid}" class="radiono" value="2"  style="display:none">
                       </div>
		                   <div style="float:left;height:30px;line-height:30px;padding-left:5px;">下次么么哒</div>
	                   </div> 
	                </td>   
                   <tr>
                {/foreach}
                </table>
                </div>
               </div>

          <div id="pollBtn" style="width:100%;padding-top:60px;padding-left:60px;width:20%;">
            <div style="height:60px;line-height:60px;min-width:100px;" class="font-en ft36 color-w pointer pollBtn">
              OK
            </div>
            
          </div>  
                
          <input id="eventid" name="eventid" type="hidden" value="{$p.eid}">
          </form>

      </div>  
	</body>
</html>
