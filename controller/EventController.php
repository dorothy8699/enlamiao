<?php
require './core/MySmarty.class.php';
/**
 * function showTop
 *
 * @author Dorothy <koueig@gmail.com> 2015-04-22
 */ 
function init(){		
		$smarty = new MySmarty();
		$smarty->display('create.tpl');
}