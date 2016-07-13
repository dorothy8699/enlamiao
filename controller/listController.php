<?php 
require './core/MySmarty.class.php';
require './model/MyDB.php';
require './controller/errorController.php';

/**
 * function init
 *
 * @author Dorothy <koueig@gmail.com> 2016-06-06
 */ 
function init(){	
	$smarty = new MySmarty();
	$eid = $_GET['id'];
	$Error = new errorController();

	try{
		$mydb = new MyDB();
		$result = $mydb->selectEventByID($eid);
	}catch(Exception $e){
		$Error->gotoError($smarty, "SERVER_ERROR");
	}

	if(!$result) $Error->gotoError($smarty, "EXIST_ERROR");
	

	$smarty -> assign('id',$result['id']);
	$smarty -> assign('eid',$result['eid']);
	$smarty -> assign('title',$result['title']);
	$smarty -> assign('content',$result['content']);
	$smarty -> assign('end',$result['end']);

	try{
		$mydb = new MyDB();
		$result = $mydb->selectVoteByID($eid);
	}catch(Exception $e){
		$Error->gotoError($smarty, "SERVER_ERROR");
	}
	if(!$result) $Error->gotoError($smarty, "EXIST_ERROR");
	

	$optionArr = array();
	foreach($result as $res) {
		$optionArr[$res['pid']] = array(
			'pid'=>$res['pid'],
    		'eid'=>$res['eid'],
    		'option'=>$res['opt'],
    		'user' => $res['uname'],
    		'yes' => isset($optionArr[$res['pid']]['yes'])?$optionArr[$res['pid']]['yes']:0,
    		'no' => isset($optionArr[$res['pid']]['no'])?$optionArr[$res['pid']]['no']:0
		);

		if($res['vote']===1){
			$optionArr[$res['pid']]['yes'] = $optionArr[$res['pid']]['yes'] + 1;
		}elseif($res['vote']===2){
			$optionArr[$res['pid']]['no'] = $optionArr[$res['pid']]['no']+1;
		}


		$image = "";
		if($res['vote'] === 1){
			$image = "image/clickedyes.svg";
		}
		elseif($res['vote'] ===2){
			$image = "image/clickedno.svg";
		}

    	$voteArr[$res['pid']][] = array(
    		'uid'=>$res['uid'],
    		'uname'=>$res['uname'],
    		'voteimg'=>$image,
    	);

    	$userArr[$res['uname']] = $res['uname'];
    	
	}
	foreach($voteArr as $key=>$value){
		$optionArr[$key]['user'] = $value; 
	}

    $smarty -> assign('voteuser',$userArr);
	$smarty -> assign('pollresult',$optionArr);
	$smarty->display('list.tpl');
}



