<?php
require './core/MySmarty.class.php';
/**
 * function init
 *
 * @author Dorothy <koueig@gmail.com> 2016-06-06
 */ 
function init(){
		$ua = mb_strtolower($_SERVER['HTTP_USER_AGENT']);
		$smFlg = false;
		if(strpos($ua,'iphone') == true || strpos($ua,'iPod') == true || strpos($ua,'Android') == true || strpos($ua,'ios') == true ){
			$smFlg = true;
		}
		$smarty = new MySmarty();
		$smarty -> assign('smFlg',$smFlg);
		$smarty->display('top.tpl');
}