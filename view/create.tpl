<!DOCTYPE html>
<html>
	<head>
    <link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/ >
    <link rel="stylesheet" href="css/create.css" >
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/top.js"></script>
    
    
		<title></title>

	</head>
	<body style="margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 


<div class="wrap"> 

{include file="include/header.inc"}


<div style="width:100%;margin:20px 10% 20px 10%;">
    
          <div style="padding:15px 10px;color:#565656;">
            <div style="float:left;height:80px;">
              <img src="image/no1.svg" height="80px">
            </div>

            <div style="float:left;padding-left:15px;width:70%;">
              <div class="title-up">请输入活动主题</div>
              <div class="title-down">团队建设、聚餐卡拉OK、旅行、登山、足球、游戏等</div>
              <div style="height:50px;line-height:50px;width:100%">
                <input type="text" id="title" class="title" name="title" style="height:25px;width:100%;">
              </div>
            </div>

            <div style="clear:both;"></div>
          </div>

          
          <div style="padding:15px 10px;color:#565656;">
            <div style="float:left;height:80px;">
              <img src="image/no2.svg" height="80px">
            </div>

            <div style="float:left;padding-left:15px;width:70%;">
              <div class="title-up">请输入活动详细</div>
              <div class="title-down">地点、参加者、费用等</div>
              <div style="height:200px;line-height:200px;width:100%">
                <textarea id="content" class="content" name="content" style="width:100%;resize:none;" rows="8"></textarea>
              </div>
            </div>
            <div style="clear:both;"></div>
          </div>

          <div style="padding:15px 10px;color:#565656;">
            <div style="float:left;height:80px;">
              <img src="image/no3.svg" height="80px">
            </div>

            <div style="float:left;padding-left:15px;width:40%;">
                
                  <div style="width:90%;">
                  <div class="title-up">请输入候补时间。例：</div>
                  <div class="title-down">6/7(星期一) 9：00～</div>
                  <div class="title-down">6/8(星期二) 9：00～</div>
                  <div class="title-down">6/9(星期三) 9：00～</div>
                  <div><textarea id="datetimes" class="datetimes" name="datetimes" style="width:100%;font-size:20px;resize:none;" rows="11"></textarea></div>
                  </div>
            </div>
            
            <div style="float:left;margin-top:70px;height:100px;width:40%;">
              <input type="text" id="datetimepicker" style="display: none;">
            </div>



            
            </div>

            <div style="clear:both;"></div>  

            <!--<div style="padding-top:40px;margin-left:20%;color:#565656;">
              <p id="createBtn" class="okBtn">
                <span>嗯啦喵</span>
              </p>
            </div>-->

            <div style="width:100%;margin-top:50px;padding-left:20%;width:20%;">
            <div id="createBtn" style="height:60px;line-height:60px;border-radius:60px;width:100%;text-align:center;padding-bottom:5px;min-width:100px;" class="font-en ft36 color-w color-bg-r pointer">
              OK
            </div>
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



<!-- footer start-->
{include file="include/footer.inc"}
<!-- footer end-->




</div>

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
