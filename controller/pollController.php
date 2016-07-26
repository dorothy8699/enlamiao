<?php 
require './core/MySmarty.class.php';
require './model/MyDB.php';
require './model/Validator.php';
require './controller/errorController.php';
/**
 * function init
 *
 * @author Dorothy <koueig@gmail.com> 2016-06-20
 */ 
function init(){
	$smarty = new MySmarty();
	$Error = new errorController();
	$validator = new Validator();
	$mydb = new MyDB();

	$params = array(
		"eventid"=>isset($_POST['eventid'])?$_POST['eventid']:"",
		"username"=>isset($_POST['username'])?$_POST['username']:""
	);


	$polling = array();
	$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
	$chars = str_shuffle($chars);
	$uid = substr($chars,0,10) . strtotime(date("Y-m-d H:i:s",time()));
	foreach($_POST as $key=>$value){
		if(substr($key,0,4) === "poll"){
			$pid = substr($key, 4);
			$polling[$pid] = array(
				'pid' => $pid,
				'eid' => $params['eventid'],
				'uid' => $uid,
				'name' => $params['username'],
				'vote' => $value
			);
		}
	}

	try{
		$Options = $mydb->selectItemByID($params["eventid"]);
	}catch(Exception $e){
		$Error->gotoError($smarty, "SERVER_ERROR");
	}
	if(!$Options) $Error->gotoError($smarty, "EXIST_ERROR");
	
	foreach($Options as $option){
		if(!isset($polling[$option])){
			$polling[$option] = array(
				'pid' => "",
				'eid' => "",
				'uid' => "",
				'name' => "",
				'vote' => ""
			);
		}
	}

	$validator = new Validator();
	$error = $validator->checkPollData($polling);
	
	if(!empty($error)){
		echo json_encode($error);
	}else{
		try{
			$result = $mydb->insertUser($polling);
			echo json_encode("success");
		}catch(Exception $e){
			echo json_encode($error);
		}
	}
}





