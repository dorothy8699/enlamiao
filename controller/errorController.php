<?php
/**
 * class errorController
 *
 * @author Dorothy <koueig@gmail.com> 2016-07-13
 */


class errorController{

	private static $errors = array(
		"SERVER_ERROR" => "服务器内部错误，请返回首页！",
		"EXIST_ERROR" => "事件不存在，请返回首页！",
		"SERVER_IERROR" => "服务器内部错误，请返回上一页！",
		"EXIST_IERROR" => "事件不存在，请返回上一页！"

	);

	public function gotoError($smarty, $msg){
		$smarty -> assign('error_msg',self::$errors[$msg]);
		$smarty->display('error.tpl');
		exit;
	}

	public function gotoIframeError($smarty,$msg){
		$smarty -> assign('error_msg',self::$errors[$msg]);
		$smarty->display('ierror.tpl');
		exit;
	}
}