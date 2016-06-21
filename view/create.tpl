<!DOCTYPE html>
<html>
	<head>

    <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/ >
    <link rel="stylesheet" href="css/top.css" >
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/top.js"></script>
    
    
		<title></title>

	</head>
	<body style="margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 


<div class="wrap"> 

 <div style="width:100%;background:#565656;height:120px;">
  <a href="/">
    <div style="padding-left:40%;height:80px;line-height:80px;"><img src="image/logo01.svg" height="80px"></div>
  </a>  
 </div>

<div style="margin-top:-30px;background:#e7f4f5;color:#183654;">
<div style="padding:50px 10% 20px 10%;font-size:11px;">
<form id="createForm" action="confirm.html" method="post">
    <table style="width:100%;border-spacing:10px;">
    <tr>
      <td style="width:10%"><img src="image/no1.svg" width="100px"></td>
      <td class="createTableTr2Td2" style="width:90%">
        <div class="title-info">请输入活动主题</div>
        <div class="title-info">团队建设、聚餐卡拉OK、旅行、登山、足球、游戏等</div>
        <div style="height:50px;line-height:50px;width:100%">
          <input type="text" id="title" name="title" style="height:25px;width:100%;font-size:20px;">
        </div>
      </td> 

    </tr>

    

 
    <tr>
      <td style="width:20%"><img src="image/no2.svg" width="100px"></td>
      <td class="createTableTr2Td2" style="width:80%">
        <div class="title-info">请输入活动详细</div>
        <div class="title-info">地点、参加者、费用等</div>
        <div style="height:200px;line-height:200px;width:100%">
          <textarea id="content" name="content" style="width:100%;font-size:20px;resize:none;" rows="8"></textarea>
        </div>
      </td>
    </tr>

 
    <tr>
      <td style="width:20%"><img src="image/no3.svg" width="100px"></td>

      <td class="createTableTr3Td2" style="width:80%;">

      <div style="float:left;width:55%;">
        <div class="title-info">请输入候补时间。例：</div>
        <div class="title-info">6/7(星期一) 9：00～</div>
        <div class="title-info">6/8(星期二) 9：00～</div>
        <div class="title-info">6/9(星期三) 9：00～</div>
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


<!-- footer start-->
<div style="height:400px;background:#183654;color:#FFF;text-align:center;padding-top:30px;">
Copyright © 2016 enlamiao All Rights Reserved.
<img src="image/footer.svg">
</div>
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
