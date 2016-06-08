<?php
/* Smarty version 3.1.29, created on 2016-06-08 17:39:31
  from "/Applications/XAMPP/xamppfiles/htdocs/enlamiao/view/create.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_57583c33186889_20380581',
  'file_dependency' => 
  array (
    '9067cbff937ead1004cefa7ef9e8ef71d02c4fc1' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/enlamiao/view/create.tpl',
      1 => 1465400369,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_57583c33186889_20380581 ($_smarty_tpl) {
?>
<!DOCTYPE html>
<html>
	<head>

    <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/ >
   <link rel="stylesheet" href="css/top.css" >
    
   
    <!--<?php echo '<script'; ?>
 src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"><?php echo '</script'; ?>
>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/eggplant/jquery-ui.css" >
    -->
    <?php echo '<script'; ?>
 src="https://code.jquery.com/jquery-1.11.3.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="js/top.js"><?php echo '</script'; ?>
>
    
    
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
<form action="../action/confirm.php" method="post">
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
        <div><textarea id="datetimes" name="content" style="width:100%;font-size:20px;resize:none;" rows="11"></textarea></div>
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
      <a href="?create">
  <div id="start" style="display:block;"><img src="image/ok0.svg" width="300px"></div>
  <div id="start-hover" style="display:none;"><img src="image/ok3.svg" width="300px"></div>
</a>
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

    <?php echo '<script'; ?>
 src="js/jquery.datetimepicker.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
>
    $('#datetimepicker').datetimepicker({
      inline:true,
      lang:'ch',
      formatDate:'Y年m月d日',
      onSelectTime:function() {
        var datetime = $('#datetimes').val();
        var datetimes = datetime + $('#datetimepicker').val() + "\n";
        $('#datetimes').val(datetimes);
      }

    }); 
    <?php echo '</script'; ?>
>
	</body>
</html>
<?php }
}
