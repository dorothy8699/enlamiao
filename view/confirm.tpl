<!DOCTYPE html>
<html>
	<head>
    <link rel="stylesheet" href="css/top.css" >
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/top.js"></script>
    
		<title></title>
	</head>
	<body style="width:100%;height:100%;margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 


<!-- logo start -->
 <div style="width:100%;background:#183654;height:120px;">
  <a href="/">
    <div style="padding-left:40%;height:80px;line-height:80px;"><img src="image/logo01.svg" height="80px"></div>
  </a>  
 </div>

<!-- logo end --> 


<div style="height:50px;line-height:50px;width:100%;margin:20px 10% 20px 10%;font-size:20px;">
<form id="confirmForm" action="finish.html" method="post">
    <table style="width:80%;border-collapse:separate; border-spacing:20px;border:1px solid #a8b9c0;">
    <tr>
      <td style="width:20%"><img src="image/step1.svg" width="200px"></td>

      <td style="width:60%" class="createTableTr2Td2">
      
        <div style="height:50px;line-height:50px;width:100%">
          {$title}
          <input type="hidden" id="title" name="title" value="{$title}">
        </div>
      </td> 

      <td style="width:20%">
      
      <td> 

    </tr>

    <tr>
      <td style="width:20%"><img src="image/step3.svg" width="200px"></td>

      <td style="width:80%" class="createTableTr2Td2">
      
        <div style="height:200px;line-height:200px;width:100%">
          {$content}
          <input type="hidden" id="content" name="content" value="{$content}">
        </div>
      </td>
      
    </tr>

    <tr>
      <td style="width:20%"><img src="image/step2.svg" width="200px"></td>

       <td style="width:80%" class="createTableTr2Td2">
       
        {$datetimes}

          <input type="hidden" id="datetimes" name="datetimes" value="{$datetimes}">
        
      </td>

    </tr>


    <tr>
      <td>
      </td> 
      <td>
      <div id="confirmBtn">
        <div class="btn" style="display:block;"><img src="image/ok0.svg" width="300px"></div>
        <div class="btn-hover" style="display:none;"><img src="image/ok3.svg" width="300px"></div>
      </div>
      </td>
      <td>
      </td>
    </tr>

    </form>
     
    </table>
</div>


</div>
	</body>
</html>
