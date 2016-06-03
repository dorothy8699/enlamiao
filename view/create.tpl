<!DOCTYPE html>
<html>
	<head>
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"></script>
    <script type="text/javascript" src="../js/top.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/eggplant/jquery-ui.css" >
     <link rel="stylesheet" href="../css/top.css" >
		<title></title>
	</head>
	<body style="margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 

 <div style="width:100%;background:#183654;height:120px;">
    <div style="padding-left:40%;height:80px;line-height:80px;"><img src="image/logo01.svg" height="80px"></div>
 </div>

<div style="margin-top:-30px;background:#e7f4f5;color:#183654;">
<div style="padding:50px 10% 20px 10%;font-size:20px;">
<form action="../action/confirm.php" method="post">
    <table style="width:100%;">
    <tr>
      <td style="width:20%">
        <div style="height:70px;line-height:70px;">主题:</div>
      </td>

      <td style="width:60%">
        <div style="height:50px;line-height:50px;width:100%">
          <input type="text" id="title" name="title" style="height:45px;width:100%;font-size:20px;">
        </div>
      </td> 

      <td style="width:20%">
      
      <td> 

    </tr>

    <tr>
      <td style="width:20%">
        <div style="height:50px;line-height:50px;">时间:</div>
      </td>

       <td style="width:60%">
        <input type="text" id="datepicker" name="start" style="height:45px;width:100%;font-size:20px;">
        
      </td>

      <td style="width:20%">
      
      <td> 

    </tr>

    <tr>
      <td style="width:20%">
        <div style="height:70px;line-height:70px;">内容:</div>
      </td>

      <td style="width:60%">
        <div style="height:200px;line-height:200px;width:100%">
          <textarea id="content" name="content" style="width:100%;font-size:20px;resize:none;" rows="8"></textarea>
        </div>
      </td>

      <td style="width:20%">
      
      <td> 
      
    </tr>


    <tr>
      <td>
      </td> 
      <td>
      <div>
          <input type="submit" value="提交喵">
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

<!-- footer end-->




</div>
	</body>
</html>
