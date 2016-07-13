<!DOCTYPE html>
<html lang="zh-CN">
	<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
     <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/comm.css" >
    <link href='https://fonts.googleapis.com/css?family=Changa+One' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/eggplant/jquery-ui.css" >
    <link rel="stylesheet" href="css/create.css" >
    <link rel = "Shortcut Icon" href="fabicon.ico" type="image/x-icon" /> 
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script><script type="text/javascript" src="js/event.js"></script>
    <script type="text/javascript" src="js/create.js"></script>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script type="text/javascript" src="js/layer.js"></script>
    <link rel="stylesheet" type="text/css" href="http://csshake.surge.sh/csshake.min.css">
		<title></title>
	</head>
	<body style="margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 

{include file="include/header.inc"}

<div style="width:100%;background:#e5e5e5;padding-top:40px;">
<form id="createForm" action="finish.html" method="post">
<div class="container">
    <div class="row">
      <div class="col-md-1 col-md-offset-1">
          <img src="image/no1.svg" height="80px">
      </div>
      <div class="col-md-8">
        <!-- error message start -->
            <div id="title-error-area" class="error-area" style="{if isset($error['title'])}display:block;{else}display:none;{/if}">
              <div style="height:30px;line-height:30px;float:left;">
                    <img src="image/warning.svg" height="20px">
              </div>
              <div id="title-error-msg" class="error-msg">
                  {$error['title']}
              </div>
              <div style="clear:both;"></div>
            </div>
            <!-- error message end -->

            <div class="title-up">请输入活动主题</div>
            <div class="row mt5">
                <div class="col-md-11">
                  <div style="padding-top:5px;">
                    <input type="text" id="title" class="title" name="title" style="height:40px;width:100%;" maxlength="100" value="{if isset($title)}{$title}{/if}" placeholder="活动主题不能超过100字。如：团队建设">
                  </div>
                </div>
                <div class="col-md-1 tar">
                  <div id="cmt1" class="pointer ball">
                  {include file="image/comment.svg"}
                  </div>
                </div>
            </div>

      </div>
    </div>

    <div class="row mt10">
        <div class="col-md-1 col-md-offset-1">
          <img src="image/no1.svg" height="80px">
        </div>
        <div class="col-md-8">
                <!-- error message start -->
                <div id="end-error-area" class="error-area" style="{if isset($error['end'])}display:block;{else}display:none;{/if}">
                  <div style="height:30px;line-height:30px;float:left;">
                        <img src="image/warning.svg" height="20px">
                  </div>
                  <div id="end-error-msg" class="error-msg">
                    {if isset($error['end'])}{$error['end']}{/if}
                  </div>
                  <div style="clear:both;"></div>
                </div>
                <!-- error message end -->
                <div class="title-up">请选择有效期</div>
                
                <div class="row mt5">
                  <div class="col-md-11">
                  <input type="text" id="end" class="end" name="end" maxlength="20" style="height:40px;width:100%;" value="{if isset($end)}{$end}{/if}" placeholder="有效期格式××××-××-××"></input>
                  </div>
                  <div class="col-md-1 tar">
                  <div id="cmt2" class="pointer ball"><img src="image/comment.svg"></div>
                  </div>
                </div>
        </div>
      </div>

    <div class="row mt10">
      <div class="col-md-1 col-md-offset-1">
         <img src="image/no1.svg" height="80px">
      </div>
      <div class="col-md-8">
              <!-- error message start -->
              <div id="content-error-area" class="error-area" style="{if isset($error['content'])}display:block;{else}display:none;{/if}">
                <div style="height:30px;line-height:30px;float:left;">
                      <img src="image/warning.svg" height="20px">
                </div>
                <div id="content-error-msg" class="error-msg">
                  {$error['content']}
                </div>
                <div style="clear:both;"></div>
              </div>
              <!-- error message end -->


              <div class="title-up">请输入活动详细</div>

              <div class="row mt5">
                  <div class="col-md-11">
                    <div style="padding-top:5px;">
                    <textarea id="content" class="content" name="content" style="width:100%;resize:none;" rows="10" maxlength="3000" placeholder="活动内容不能超过3000字">{if isset($content)}{$content|nl2br}{/if}</textarea>
                    </div>
                  </div>
                  <div class="col-md-1 tar">
                  <div id="cmt3" class="pointer ball"><img src="image/comment.svg"></div>
                  </div>
              </div>
              
      </div>
      </div>


      <div class="row mt10">
        <div class="col-md-1 col-md-offset-1">
          <img src="image/no1.svg" height="80px">
        </div>
        <div class="col-md-8">
                <!-- error message start -->
                <div id="options-error-area" class="error-area" style="{if isset($error['options'])}display:block;{else}display:none;{/if}">
                  <div style="height:30px;line-height:30px;float:left;">
                        <img src="image/warning.svg" height="20px">
                  </div>
                  <div id="options-error-msg" class="error-msg">
                    {if isset($error['options'])}{$error['options']}{/if}
                  </div>
                  <div style="clear:both;"></div>
                </div>
                <!-- error message end -->
                <div class="title-up">发起投票</div>
                <!--<div class="title-down">请注意每输入一个选项必须换一行</div>-->

                <div class="row mt5">
                  <div class="col-md-11">
                    <div style="padding-top:5px;">
                    <textarea id="options" class="options" name="options" style="width:100%;resize:none;" rows="10" placeholder="请注意每输入一个选项必须换一行">{if isset($options)}{$options}{/if}</textarea>
                    </div>
                  </div>
                  <div class="col-md-1 tar">
                  <div id="cmt4" class="pointer ball"><img src="image/comment.svg"></div>
                  </div>
                </div>  
                
        </div>
      </div>

      <div class="row">
        <div class="col-md-8 col-md-offset-2">
          <div style="width:100%;padding-top:60px;padding-bottom:150px;width:20%;">
            <div id="createBtn" style="height:60px;line-height:60px;min-width:100px;" class="font-en ft36 color-w pointer createBtn">
              OK
            </div>
            </div>
        </div>
      </div>

    </div>
</div>
</form>
</div>

</div>

<!-- footer start-->
{include file="include/footer.inc"}
<!-- footer end-->

	</body>
</html>
