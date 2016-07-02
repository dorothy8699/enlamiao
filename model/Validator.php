<?php

class Validator{
	public function checkCreateData($params){
		$error = array();
		if(empty($params['title'])){
			$error['title'] = "活动标题不能为空";
		}elseif(mb_strlen($params['title']) > 10){
			$error['title'] = "请输入1－100位字符";
		}

		if(empty($params['content'])){
			$error['content'] = "活动详细内容不能为空";
		}elseif(mb_strlen($params['content']) > 10){
			$error['content'] = "请输入1－3000位字符";
		}

		if(empty($params['start'])){
			$error['start'] = "活动标题不能为空";
		}else{
			$rows = explode("\r\n", trim($params['start']));
			if(count($rows) > 15){
				$error['start'] = "候补时间不能超过15行";
			}
			/*else{
				$preg = "/^20[0-9]{2}\/[0-1]{1}[0-9]{1}\/[0-3]{1}[0-9]{1} [0-2]{1}[0-9]{1}:[0-5]{1}[0-9]{1}〜$/";
				foreach($rows as $start){
					if(!preg_match($preg, $start)){
						$error['start'] = "请按照每行××××/××/×× ××:××〜格式输入日程";
						break;
					}
				}
			}*/
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
				$error['voteErr'] = "请完整选择所有日程";
			}
		}
		return $error;
	}

}