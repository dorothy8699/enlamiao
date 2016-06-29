<!DOCTYPE html>
<html>
	<head>
    <link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/ >
    <link href='https://fonts.googleapis.com/css?family=Changa+One' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/create.css" >
    <link rel = "Shortcut Icon" href="fabicon.ico" type="image/x-icon" /> 
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/event.js"></script>
    
    
		<title></title>

	</head>
	<body style="margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 


<div class="wrap"> 

{include file="include/header.inc"}

<div style="width:100%;">
<div style="width:70%;margin:0 15% 0 15%;color:#565656;padding:2%;/*border-radius:20px;-moz-box-shadow:7px 7px 30px #008080; -webkit-box-shadow:7px 7px 16px #008080; box-shadow:7px 7px 16px #008080;*/">

    <form id="createForm" action="finish.html" method="post">
          <div style="padding:15px 10px;">
            <div style="float:left;" class="title-step">
             <img src="image/no1.svg" height="50px">

            </div>

            <div style="float:left;padding-left:20px;width:80%;">
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

            <div style="clear:both;"></div>
          </div>
          <div style="padding:15px 10px;">
            <div style="float:left;" class="title-step">
             <img src="image/no1.svg" height="50px">
            </div>

            <div style="float:left;padding-left:20px;width:80%;">
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
                <textarea id="content" class="content" name="content" style="width:100%;resize:none;" rows="20" maxlength="3000" value="{$content}"></textarea>
                
              </div>
            </div>
            <div style="clear:both;"></div>
          </div>
          

          <div style="padding:15px 10px;">
            <div style="float:left;" class="title-step">
             <img src="image/no1.svg" height="50px">
            </div>

            <div style="float:left;padding-left:20px;width:80%;">
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
                <div style="width:100%;">
                  
                    <div class="title-up">请从日历中选择候补时间</div>
                    <div class="title-down">6/7(星期一) 9：00～</div>
                    <div class="title-down">6/8(星期二) 9：00～</div>
                    <div class="title-down">6/9(星期三) 9：00～</div>
                    
               
                  <div style="width:100%;">  
                    <div style="padding-top:5px;">

                    <!--<div style="height:250px;background:#FFF;position:relative;">
                        <div class="circle" style="position:absolute;right:5px;bottom:0;cursor:pointer;opacity:0.7;"><img src="image/calendar.svg"></div>
                    </div>-->
                    <div style="float:left;width:50%;">
                    <textarea id="datetimes" class="datetimes" name="datetimes" style="width:100%;resize:none;" rows="15" value="{$start|nl2br}"></textarea>
                    </div>
  
                     <div style="float:left;margin-left:10px;">
                      <input type="text" id="datetimepicker" style="display: none;">
                      </div> 
                    </div>
                   </div>

                </div>  
            </div>
            
            



            
            </div>

            <div style="clear:both;"></div>  

            <div style="width:100%;padding-top:60px;padding-left:40%;width:20%;">
            <div id="createBtn" style="height:60px;line-height:60px;min-width:100px;" class="font-en ft36 color-w pointer createBtn">
              OK
            </div>
            </div>
    </form>      
</div>
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
