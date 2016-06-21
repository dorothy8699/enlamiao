<?php 

require './core/MySmarty.class.php';
/**
 * function showTop
 *
 * @author Dorothy <koueig@gmail.com> 2015-04-22
 */ 
function init(){	
	$username = $_POST['username'];
	$eventid = $_POST['eventid'];
	$pollArr = array();
	foreach($_POST as $key=>$param){
		if(substr($key,0,4) === "poll"){
			$pid = substr($key, 4);
			$pollArr[] = array(
				'pid' => $pid,
				'eid' => $eventid,
				'name' => $username,
				'vote' => $param
			);
		}
	}



	$db = new mysqli('localhost', 'root', '','enlamiao');
	$sql = "INSERT INTO user(pid, eid, name, vote) VALUES(?,?,?,?)";


	foreach($pollArr as $data){
		$stmt= $db->prepare($sql); 
		$stmt->bind_param('ssss', $data['pid'], $data['eid'], $data['name'], $data['vote']); 
		$stmt->execute();
	}

	/*$link = sprintf('http://%s/enlamiao/list?id=%s', $_SERVER['HTTP_HOST'], $data['eid']);

	header("Location: " . $link);*/
	echo true;
} 



