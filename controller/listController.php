<?php 
require './core/MySmarty.class.php';
require './model/MyDB.php';
require './model/Validator.php';
require './controller/errorController.php';

/**
 * function init
 *
 * @author Dorothy <koueig@gmail.com> 2016-06-06
 */ 
function init(){	
	$smarty = new MySmarty();
	$Error = new errorController();
	$validator = new Validator();

	$eid = isset($_GET['id'])?$_GET['id']:"";
	if($validator->checkEID($eid)) $Error->gotoError($smarty, "EXIST_ERROR");

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
    		'yesCnt' => 0,
    		'noCnt' => 0
    	);

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
    		'vote'=>$res['vote'],
    		'voteimg'=>$image,
    	);

    	$userArr[$res['uid']] = $res['uname'];
    	
	}

	foreach($voteArr as $key=>$value){
		$optionArr[$key]['user'] = $value; 
	}


	foreach($optionArr as $options){
		$pid = $options['pid'];
		foreach($options['user'] as $user){
			if($user['vote']===1){
				$optionArr[$pid]['yesCnt'] = $optionArr[$pid]['yesCnt'] + 1;
			}elseif($user['vote']===2){
				$optionArr[$pid]['noCnt'] = $optionArr[$pid]['noCnt'] + 1;
			}
		}
		$count[] = $optionArr[$pid]['yesCnt'];
	}

    $smarty -> assign('voteuser',$userArr);
	$smarty -> assign('pollresult',$optionArr);
	$smarty -> assign('highlight',max($count));
	$smarty->display('list.tpl');
}



