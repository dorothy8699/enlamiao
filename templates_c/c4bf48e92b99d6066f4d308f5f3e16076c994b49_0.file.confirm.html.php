<?php
/* Smarty version 3.1.29, created on 2016-05-30 11:35:59
  from "/Applications/XAMPP/xamppfiles/htdocs/enlamiao/templates/confirm.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_574c097f548177_20736190',
  'file_dependency' => 
  array (
    'c4bf48e92b99d6066f4d308f5f3e16076c994b49' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/enlamiao/templates/confirm.html',
      1 => 1464600911,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_574c097f548177_20736190 ($_smarty_tpl) {
?>
<!DOCTYPE html>
<html>
	<head>
    <?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="js/top.js"><?php echo '</script'; ?>
>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/eggplant/jquery-ui.css" >
		<title></title>
	</head>
	<body style="width:100%;height:100%;margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 

<div style="background:#273547;height:600px;position:relative;">

<!-- logo start -->
 <div style="background:#000000;height:100px;color:#FFF;filter:alpha(opacity=40);-moz-opacity: 0.4;opacity: 0.4;">
 </div>

 <div style="position:absolute;top:0;width:100%;">
    <div style="float:left;height:50px;"><img src="image/logo4.svg" height="100px"></div>
    <div style="float:left;font-size:40px;color:#FFF;margin-left:20%;">enlamiao</div>
 </div>
<!-- logo end --> 


<div style="height:50px;line-height:50px;width:100%;margin:20px 10% 20px 10%;font-size:20px;">
<form action="finish.php" method="post">
    <table style="width:80%;">
    <tr>
      <td style="width:20%">
        <div style="height:70px;line-height:70px;">Title：</div>
      </td>

      <td style="width:60%">
      
        <div style="height:50px;line-height:50px;width:100%">
          <?php echo $_smarty_tpl->tpl_vars['title']->value;?>

          <input type="hidden" id="title" name="title" value="<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
">
        </div>
      </td> 

      <td style="width:20%">
      
      <td> 

    </tr>

    <tr>
      <td style="width:20%">
        <div style="height:50px;line-height:50px;">Date：</div>
      </td>

       <td style="width:60%">
       
        <?php echo $_smarty_tpl->tpl_vars['start']->value;?>


          <input type="hidden" id="start" name="start" value="<?php echo $_smarty_tpl->tpl_vars['start']->value;?>
">
        
      </td>

      <td style="width:20%">
      
      <td> 

    </tr>

    <tr>
      <td style="width:20%">
        <div style="height:70px;line-height:70px;">Content：</div>
      </td>

      <td style="width:60%">
      
        <div style="height:200px;line-height:200px;width:100%">
          <?php echo $_smarty_tpl->tpl_vars['content']->value;?>


          <input type="hidden" id="content" name="content" value="<?php echo $_smarty_tpl->tpl_vars['content']->value;?>
">
        </div>
      </td>

      <td style="width:20%">
      
      <td> 
      
    </tr>


    <tr>
      <td>
      </td> 
      <td>
      <div style="width:120px;background:#cb3837;">
          <div style="text-align:center;color:#FFF;">Send</div>
          <input type="submit" value="submit">
        </div>
      </td>
      <td>
      </td>
    </tr>

    </form>
     
    </table>
</div>


    </div>
</div>
	</body>
</html>
<?php }
}
