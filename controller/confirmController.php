<?php 

require './core/MySmarty.class.php';
/**
 * function showTop
 *
 * @author Dorothy <koueig@gmail.com> 2015-04-22
 */ 
function init(){		
		$smarty = new MySmarty();
		$smarty -> left_delimiter = "{";
		$smarty -> right_delimiter = "}"; 
		$smarty -> assign('title',$_POST['title']); 
		$smarty -> assign('datetimes',$_POST['datetimes']); 
		$smarty -> assign('content',$_POST['content']); 
		$smarty->display('confirm.tpl');
}