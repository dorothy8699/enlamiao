<?php 
include_once('../smarty/Smarty.class.php');
$smarty = new Smarty(); 
$smarty -> template_dir = "../templates"; //模板存放目录 
$smarty -> compile_dir = "../templates_c"; //编译目录 
$smarty -> left_delimiter = "{"; //左定界符 
$smarty -> right_delimiter = "}"; //右定界符 
$smarty -> assign('title',$_POST['title']); 
$smarty -> assign('start',$_POST['start']); 
$smarty -> assign('content',$_POST['content']); 

$smarty -> display('confirm.html'); 
?>