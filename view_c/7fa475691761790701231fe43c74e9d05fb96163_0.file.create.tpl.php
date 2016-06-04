<?php
/* Smarty version 3.1.29, created on 2016-06-04 12:03:38
  from "C:\xampp\htdocs\enlamiao\view\create.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5752a77a8dd434_01086575',
  'file_dependency' => 
  array (
    '7fa475691761790701231fe43c74e9d05fb96163' => 
    array (
      0 => 'C:\\xampp\\htdocs\\enlamiao\\view\\create.tpl',
      1 => 1465034615,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5752a77a8dd434_01086575 ($_smarty_tpl) {
?>
<!DOCTYPE html>
<html>
	<head>
    <?php echo '<script'; ?>
 type="text/javascript" src="../js/jquery.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="../js/top.js"><?php echo '</script'; ?>
>
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
<div style="padding:50px 10% 20px 10%;font-size:11px;">
<form action="../action/confirm.php" method="post">
    <table style="width:100%;">
    <tr><td><img src="image/step1.svg" width="100px"></td></tr> 
    <tr>
      <td style="width:20%">
        <div style="height:70px;line-height:70px;">主题:</div>
      </td>

      <td style="width:60%">
        <div style="height:50px;line-height:50px;width:100%">
          <input type="text" id="title" name="title" style="height:25px;width:100%;font-size:20px;">
        </div>
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

  <tr><td><img src="image/step2.svg" width="100px"></td></tr> 
    <tr>
      <td style="width:20%">
        <div style="height:50px;line-height:50px;">候补时间:</div>
      </td>

       <td style="width:60%">
        <input type="text" id="datepicker" name="start" style="height:25px;width:100%;font-size:20px;">
        
      </td>

      <td style="width:20%">
      
      <td> 

    </tr>


    <tr>
      <td>
      </td> 
      <td>
      <a href="?create">
  <div class="box-shadow" style="width:150px;height:60px;line-height:60px;text-align:center;background:#f89f21;margin-left:30%;margin-top:30px;padding-left:30px;padding-right:30px;">提交喵
  </div>
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
</div>
<!-- footer end-->




</div>
	</body>
</html>
<?php }
}
