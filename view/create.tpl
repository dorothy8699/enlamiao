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

 <div style="width:100%;background:#183654;height:120px;">
  <a href="/">
    <div style="padding-left:40%;height:80px;line-height:80px;"><img src="image/logo01.svg" height="80px"></div>
  </a>  
 </div>

<div style="margin-top:-30px;background:#e7f4f5;color:#183654;">
<div style="padding:50px 10% 20px 10%;font-size:11px;">
<form id="createForm" action="confirm.html" method="post">
    <table style="width:100%;border-collapse:separate; border-spacing:20px;border:1px solid #a8b9c0;">
    <tr>
      <td style="width:20%"><img src="image/step1.svg" width="200px"></td>
      <td class="createTableTr2Td2" style="width:80%">
        <img src="image/title.svg"  height="30px">
        <div style="height:50px;line-height:50px;width:100%">
          <input type="text" id="title" name="title" style="height:25px;width:100%;font-size:20px;">
        </div>
      </td> 

    </tr>

    

 
    <tr>
      <td style="width:20%"><img src="image/step2.svg" width="200px"></td>
      <td class="createTableTr2Td2" style="width:80%">
        <img src="image/content.svg" height="30px">
        <div style="height:200px;line-height:200px;width:100%">
          <textarea id="content" name="content" style="width:100%;font-size:20px;resize:none;" rows="8"></textarea>
        </div>
      </td>
    </tr>

 
    <tr>
      <td style="width:20%"><img src="image/step3.svg" width="200px"></td>

      <td class="createTableTr3Td2" style="width:80%;">

      <div style="float:left;width:55%;">
        <div><img src="image/time.svg" height="60px"></div>
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
      <div id="okBtn">
        <div class="btn" style="display:block;"><img src="image/ok0.svg" width="300px"></div>
        <div class="btn-hover" style="display:none;"><img src="image/ok3.svg" width="300px"></div>
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
