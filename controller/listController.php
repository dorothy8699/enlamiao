<?php 
require './core/MySmarty.class.php';
/**
 * function showTop
 *
 * @author Dorothy <koueig@gmail.com> 2015-04-22
 */ 
function init(){	

	$eid = $_GET['id'];
	$db = new mysqli('localhost', 'root', '','enlamiao');
	
	$sql = "SELECT * FROM event where eid=?";
	$stmt= $db->prepare($sql); 
	$stmt->bind_param('s', $eid); 
	$stmt->execute();
	$stmt->store_result();
	$stmt->bind_result($id,$eid,$title,$content,$start);
	$stmt->fetch();
	$smarty = new MySmarty();

	$smarty -> assign('id',$id);
	$smarty -> assign('eid',$eid);
	$smarty -> assign('title',$title);
	$smarty -> assign('content',$content);
	$smarty -> assign('start',$start);


	$sql = "SELECT p.id as pid, p.eid,p.begin,u.id as uid,u.name as uname,u.vote FROM period as p left join user as u on p.id=u.pid where p.eid=?";
	$stmt= $db->prepare($sql); 
	$stmt->bind_param('s', $eid); 
	$stmt->execute();
	$stmt->store_result();
	$beginArr = array();
	$stmt->bind_result($pid,$eid,$begin,$uid,$uname,$vote);

	$beginArr = array();
	while($stmt->fetch()) {
		$beginArr[$pid] = array(
			'pid'=>$pid,
    		'eid'=>$eid,
    		'begin'=>$begin,
    		'user' => "",
    		'yes' => isset($beginArr[$pid]['yes'])?$beginArr[$pid]['yes']:0,
    		'no' => isset($beginArr[$pid]['no'])?$beginArr[$pid]['no']:0
		);

		if($vote===1){
			$beginArr[$pid]['yes'] = $beginArr[$pid]['yes']+1;
		}elseif($vote===2){
			$beginArr[$pid]['no'] = $beginArr[$pid]['no']+1;
		}

    	$voteArr[$pid][] = array(
    		'uid'=>$uid,
    		'uname'=>$uname,
    		'voteimg'=>$vote===1?"image/selectedyes.svg":"image/selectedno.svg",
    	);

    	$userArr[$uname] = $uname;
    	
	}
	foreach($voteArr as $key=>$value){
		$beginArr[$key]['user'] = $value; 
	}

    $stmt->close();
    $db->close();
    $smarty -> assign('voteuser',$userArr);
	$smarty -> assign('pollresult',$beginArr);
	$smarty->display('list.tpl');
}



