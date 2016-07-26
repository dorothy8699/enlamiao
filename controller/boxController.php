<?php 

require './core/MySmarty.class.php';
require './model/MyDB.php';
require './controller/errorController.php';
/**
 * function init
 *
 * @author Dorothy <koueig@gmail.com> 2016-07-02
 */ 
function init(){
	$smarty = new MySmarty();
	$Error = new errorController();
	$eid = $_GET['id'];
	try{
		$mydb = new MyDB();
		$result = $mydb->selectEventByID($eid);
	}catch(Exception $e){
		$Error->gotoIframeError($smarty, "SERVER_IERROR");
	}
	if(!$result) $Error->gotoIframeError($smarty, "EXIST_IERROR");
	
	
	$smarty -> assign('id',$result['id']);
	$smarty -> assign('eid',$result['eid']);
	$smarty -> assign('title',$result['title']);
	$smarty -> assign('content',$result['content']);
	$smarty -> assign('start',$result['option']);
	$smarty -> assign('end',$result['end']);


	try{
		$mydb = new MyDB();
		$result = $mydb->selectVoteByID($eid);
	}catch(Exception $e){
		$Error->gotoIframeError($smarty, "SERVER_IERROR");
	}
	if(!$result) $Error->gotoIframeError($smarty, "EXIST_IERROR");

	$optionArr = array();
	foreach($result as $res) {
		$pid = $res['pid'];
		$eid = $res['eid'];
		$opt = $res['opt'];
		$optionArr[$pid] = array(
			'pid'=>$pid,
    		'eid'=>$eid,
    		'option'=>$opt,
    		'user' => "",
    		'yes' => isset($optionArr[$pid]['yes'])?$optionArr[$pid]['yes']:0,
    		'no' => isset($optionArr[$pid]['no'])?$optionArr[$pid]['no']:0
		);
    	
	}
	$smarty -> assign('pollresult',$optionArr);
	$smarty->display('poll.tpl');

} 



