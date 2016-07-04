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
			$polling[$pid] = array(
				'pid' => $pid,
				'eid' => $params['eventid'],
				'name' => $params['username'],
				'vote' => $value
			);
		}
	}

	$Options = getItems($params["eventid"]);
	foreach($Options as $option){
		if(!isset($polling[$option])){
			$polling[$option] = array(
				'pid' => "",
				'eid' => "",
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

		$db = new mysqli('localhost', 'root', '','enlamiao');
		$sql = "INSERT INTO user(pid, eid, name, vote) VALUES(?,?,?,?)";

		foreach($polling as $data){
			$stmt= $db->prepare($sql); 
			$stmt->bind_param('ssss', $data['pid'], $data['eid'], $data['name'], $data['vote']); 
			$stmt->execute();
		}

		echo json_encode("success");
	}
}

function getItems($eid){
		$db = new mysqli('localhost', 'root', '','enlamiao');
		$sql = "SELECT id from item where eid=?";
		$stmt= $db->prepare($sql); 
		$stmt->bind_param('s', $eid); 
		$stmt->execute();
		$stmt->store_result();
		$stmt->bind_result($id);
		$items = array();
		while($stmt->fetch()) {
			$items[] = $id;
		}
		return $items;
}





