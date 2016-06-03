<?php
require '/core/MySmarty.class.php';
/**
 * function showTop
 *
 * @author Dorothy <koueig@gmail.com> 2015-04-22
 */ 
function showTop(){		
		$smarty = new MySmarty();
		$smarty->display('top.tpl');
}