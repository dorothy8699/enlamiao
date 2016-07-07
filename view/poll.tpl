<!DOCTYPE html>
<html lang="zh-CN">
	<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" href="css/poll.css">
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="js/event.js"></script>
    <script src="js/poll.js"></script>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<title></title>
	</head>
	<body>

  <div style="margin-top:30px;padding-top:20px;padding-bottom:20px;">
   <form id="pollForm" method="post">
        <div class="container">
            <div class="row">
              <div  class="col-md-8 col-md-offset-2">
                  <div class="title-up" style="padding-bottom:10px;">请输入姓名或昵称</div>
              </div>
            </div>  

            <div class="row">
              <div class="col-md-8 col-md-offset-2">
                <!-- error message start -->
                <div id="name-error-area" class="error-area" style="display:none">
                  <div style="height:30px;line-height:30px;float:left;">
                        <img src="image/warning.svg" height="25px">
                  </div>
                  <div id="name-error-msg" class="error-msg">
                    请输入姓名或昵称
                  </div>
                </div>
                <!-- error message end -->
                <input type="text" name="username" id="username" style="height:25px;">
              </div>
            </div>

            <div class="row">
              <div  class="col-md-8 col-md-offset-2">
                  <div class="title-up" style="padding-top:20px;padding-bottom:10px;">请投票选择</div>
              </div>
            </div>  

            <div class="row">
              <div class="col-md-8 col-md-offset-2">
                  <!-- error message start -->
                  <div id="start-error-area" class="error-area" style="display:none">
                    <div style="height:30px;line-height:30px;float:left;">
                          <img src="image/warning.svg" height="25px">
                    </div>
                    <div id="start-error-msg" class="error-msg">
                      每一项都必须投票
                    </div>
                    <div style="clear:both;"></div>
                  </div>
                  <!-- error message end -->
                <div class="table-responsive">
                  <table class="table table-bordered">
                    {foreach from=$pollresult item=p}
                       <tr>
                       <td>{$p.option}</td>
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
                           <div style="float:left;height:30px;line-height:30px;padding-left:5px;">暂不考虑</div>
                         </div> 
                      </td>   
                       <tr>
                    {/foreach}
                  </table>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-8 col-md-offset-2">
                <div style="width:100%;padding-top:20px;padding-bottom:20px;width:20%;">
                  <div id="pollBtn" style="height:60px;line-height:60px;min-width:100px;" class="font-en ft36 color-w pointer pollBtn">
                      OK
                  </div>
                </div>
                <input id="eventid" name="eventid" type="hidden" value="{$p.eid}">
              </div>
            </div>               
       </div>
 </form>      
</div>

	</body>
</html>
