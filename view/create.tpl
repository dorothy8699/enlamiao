<!DOCTYPE html>
<html lang="zh-CN">
	<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
     <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/ >
    <link href='https://fonts.googleapis.com/css?family=Changa+One' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/create.css" >
    <link rel = "Shortcut Icon" href="fabicon.ico" type="image/x-icon" /> 
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/create.js"></script>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<title></title>
	</head>
	<body style="margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 

{include file="include/header.inc"}


<div style="width:100%;background:#fafafa;padding-top:40px;">
<form id="createForm" action="finish.html" method="post">
<div class="container">
    <div class="row">
      <div class="col-md-1 col-md-offset-1">
          <img src="image/no1.svg" height="50px">
      </div>
      <div class="col-md-8">
        <!-- error message start -->
            <div id="title-error-area" class="error-area" style="{if isset($error['title'])}display:block;{else}display:none;{/if}">
              <div style="height:30px;line-height:30px;float:left;">
                    <img src="image/warning.svg" height="20px" class="pdt5">
              </div>
              <div id="title-error-msg" class="error-msg">
                  {$error['title']}
              </div>
              <div style="clear:both;"></div>
            </div>
            <!-- error message end -->

            <div class="title-up">请输入活动主题</div>
            <div class="title-down">团队建设、聚餐卡拉OK、旅行、登山、足球、游戏等</div>
            <div style="padding-top:5px;">
              <input type="text" id="title" class="title" name="title" style="height:30px;width:100%;" maxlength="100" alue="{$title}">
            </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-1 col-md-offset-1">
         <img src="image/no1.svg" height="50px">
      </div>
      <div class="col-md-8">
              <!-- error message start -->
              <div id="content-error-area" class="error-area" style="{if isset($error['content'])}display:block;{else}display:none;{/if}">
                <div style="height:30px;line-height:30px;float:left;">
                      <img src="image/warning.svg" height="20px" class="pdt5">
                </div>
                <div id="content-error-msg" class="error-msg">
                  {$error['content']}
                </div>
                <div style="clear:both;"></div>
              </div>
              <!-- error message end -->


              <div class="title-up">请输入活动详细</div>
              <div class="title-down">地点、参加者、费用等</div>
              <div style="padding-top:5px;">
                <textarea id="content" class="content" name="content" style="width:100%;resize:none;" rows="10" maxlength="3000">{if isset($content)}{$content|nl2br}{/if}</textarea>
                
              </div>
      </div>
      </div>


      <div class="row">
        <div class="col-md-1 col-md-offset-1">
          <img src="image/no1.svg" height="50px">
        </div>
        <div class="col-md-8">
                <!-- error message start -->
                <div id="start-error-area" class="error-area" style="{if isset($error['start'])}display:block;{else}display:none;{/if}">
                  <div style="height:30px;line-height:30px;float:left;">
                        <img src="image/warning.svg" height="20px" class="pdt5">
                  </div>
                  <div id="start-error-msg" class="error-msg">
                    {if isset($error['start'])}{$error['start']}{/if}
                  </div>
                  <div style="clear:both;"></div>
                </div>
                <!-- error message end -->
                <div class="title-up">发起投票</div>
                <div class="title-down">我要选时间</div>
                <div class="title-down">我要选地点</div>
                <div class="title-down">请换行输入每一个选项</div>
                <textarea id="datetimes" class="datetimes" name="datetimes" style="width:100%;resize:none;" rows="10">{if isset($start)}{$start}{/if}</textarea>
        </div>
      </div>

      <div class="row">
        <div class="col-md-1 col-md-offset-1">
        </div>
        <div class="col-md-8">
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



















<!--

<div style="margin-top:-30px;background:#e7f4f5;color:#183654;">
<div style="padding:50px 10% 20px 10%;font-size:11px;">
<form id="createForm" action="confirm.html" method="post">
    <table style="width:100%;border-spacing:10px;">
    <tr>
      <td style="width:10%"><img src="image/no1.svg" width="100px"></td>
      <td class="createTableTr2Td2" style="width:90%">
        <div class="title-up">请输入活动主题</div>
        <div class="title-down">团队建设、聚餐卡拉OK、旅行、登山、足球、游戏等</div>
        <div style="height:50px;line-height:50px;width:100%">
          <input type="text" id="title" name="title" style="height:25px;width:100%;font-size:20px;">
        </div>
      </td> 

    </tr>

    

 
    <tr>
      <td style="width:20%"><img src="image/no2.svg" width="100px"></td>
      <td class="createTableTr2Td2" style="width:80%">
        <div class="title-up">请输入活动详细</div>
        <div class="title-down">地点、参加者、费用等</div>
        <div style="height:200px;line-height:200px;width:100%">
          <textarea id="content" name="content" style="width:100%;font-size:20px;resize:none;" rows="8"></textarea>
        </div>
      </td>
    </tr>

 
    <tr>
      <td style="width:20%"><img src="image/no3.svg" width="100px"></td>

      <td class="createTableTr3Td2" style="width:80%;">

      <div style="float:left;width:55%;">
        <div class="title-up">请输入候补时间。例：</div>
        <div class="title-down">6/7(星期一) 9：00～</div>
        <div class="title-down">6/8(星期二) 9：00～</div>
        <div class="title-down">6/9(星期三) 9：00～</div>
        <div><textarea id="datetimes" name="datetimes" style="width:100%;font-size:20px;resize:none;" rows="11"></textarea></div>
      </div>

      <div style="float:right;margin-top:70px;height:100px;">
          <input type="text" id="datetimepicker" style="display: none;">
      </div>  
      </td>

    </tr>


    <tr>
      <td>
      </td> 
      <td>

      <div style="margin-top:30px;">
          <p id="okBtn" class="createBtn">
                  <span>嗯啦喵</span>
          </p>
      </div>

      </td>
      <td>
      </td>
    </tr>
     
    </table>
 </form>    
</div>
</div>
-->



</div>




<!-- footer start-->
{include file="include/footer.inc"}
<!-- footer end-->



    <script src="js/jquery.datetimepicker.js"></script>
    <script>
    $('#datetimepicker').datetimepicker({
      inline:true,
      lang:'ch',
      formatDate:'Y年m月d日',
      format:'Y/m/d H:s〜',
      onSelectTime:function() {
        var datetime = $('#datetimes').val();
        var datetimes = datetime + $('#datetimepicker').val() + "\n";
        $('#datetimes').val(datetimes);
      }

    }); 
    </script>
	</body>
</html>
