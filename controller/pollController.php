<?php 

require './core/MySmarty.class.php';
require './model/Validator.php';
/**
 * function showTop
 *
 * @author Dorothy <koueig@gmail.com> 2015-04-22
 */ 
function init(){
	$params = array(
		"eventid"=>isset($_POST['eventid'])?$_POST['eventid']:"",
		"username"=>isset($_POST['username'])?$_POST['username']:""
	);
	$polling = array();
	foreach($_POST as $key=>$value){
		if(substr($key,0,4) === "poll"){
			$pid = substr($key, 4);
			$polling[] = array(
				'pid' => $pid,
				'eid' => $params['eventid'],
				'name' => $params['username'],
				'vote' => $value
			);
		}
	}

	$validator = new Validator();
	$error = $validator->checkPollData($polling);

	if(!empty($error)){
		echo false;
	}else{

		$db = new mysqli('localhost', 'root', '','enlamiao');
		$sql = "INSERT INTO user(pid, eid, name, vote) VALUES(?,?,?,?)";


		foreach($polling as $data){
			$stmt= $db->prepare($sql); 
			$stmt->bind_param('ssss', $data['pid'], $data['eid'], $data['name'], $data['vote']); 
			$stmt->execute();
		}

		/*$link = sprintf('http://%s/enlamiao/list?id=%s', $_SERVER['HTTP_HOST'], $data['eid']);
		header("Location: " . $link);*/
		echo true;
	}
} 



