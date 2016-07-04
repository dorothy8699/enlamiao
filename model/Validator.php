<?php

class Validator{
	public function checkCreateData($params){
		$error = array();
		if(empty($params['title'])){
			$error['title'] = "活动标题不能为空";
		}elseif(mb_strlen($params['title']) > 100){
			$error['title'] = "请输入1－100位字符";
		}

		if(empty($params['content'])){
			$error['content'] = "活动详细内容不能为空";
		}elseif(mb_strlen($params['content']) > 3000){
			$error['content'] = "请输入1－3000位字符";
		}

		if(empty($params['options'])){
			$error['options'] = "选项不能为空";
		}else{
			$rows = explode("\r\n", trim($params['options']));
			if(count($rows) > 15) $error['options'] = "不能超过15项";
		}

		
		$preg = "/^20[0-9]{2}-[0-1]{1}[0-9]{1}-[0-3]{1}[0-9]{1}$/";
		if(!preg_match($preg, $params['end'])){
			$error['end'] = "请××××-××-××格式输入有效期";	
		}

		
		return $error;
	}

	public function checkPollData($params){
		$error = array();
		foreach($params as $param){
			if(empty($param['name'])){
				$error['nameErr'] = "姓名不能为空";
			}elseif(mb_strlen($param['name']) > 10){
				$error['nameErr'] = "请输入1－20位字符";
			}
			if(!preg_match("/^[1-2]{1}$/", $param['vote'])){
				$error['voteErr'] = "每一项都必须投票";
			}
		}
		return $error;
	}

}