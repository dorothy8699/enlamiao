<?php 
require './core/MySmarty.class.php';
/**
 * function showTop
 *
 * @author Dorothy <koueig@gmail.com> 2015-04-22
 */ 
function init(){	

	$eid = $_GET['id'];
	$db = new mysqli('localhost', 'root', '7DMKneaa','enlamiao');
	
	$sql = "SELECT * FROM event where eid=?";
	$stmt= $db->prepare($sql); 
	$stmt->bind_param('s', $eid); 
	$stmt->execute();
	$stmt->store_result();
	$stmt->bind_result($id,$eid,$title,$content,$option,$end);
	$stmt->fetch();
	$smarty = new MySmarty();

	$smarty -> assign('id',$id);
	$smarty -> assign('eid',$eid);
	$smarty -> assign('title',$title);
	$smarty -> assign('content',$content);
	$smarty -> assign('end',$end);


	$sql = "SELECT i.id as pid, i.eid as eid,i.opt as opt,u.id as uid,u.name as uname,u.vote FROM item as i left join user as u on i.id=u.pid where i.eid=?";
	$stmt= $db->prepare($sql); 
	$stmt->bind_param('s', $eid); 
	$stmt->execute();
	$stmt->store_result();
	$stmt->bind_result($pid,$eid,$opt,$uid,$uname,$vote);

	$optionArr = array();
	while($stmt->fetch()) {
		$optionArr[$pid] = array(
			'pid'=>$pid,
    		'eid'=>$eid,
    		'option'=>$opt,
    		'user' => "",
    		'yes' => isset($optionArr[$pid]['yes'])?$optionArr[$pid]['yes']:0,
    		'no' => isset($optionArr[$pid]['no'])?$optionArr[$pid]['no']:0
		);

		if($vote===1){
			$optionArr[$pid]['yes'] = $optionArr[$pid]['yes']+1;
		}elseif($vote===2){
			$optionArr[$pid]['no'] = $optionArr[$pid]['no']+1;
		}


		$image = "";
		if($vote === 1){
			$image = "image/clickedyes.svg";
		}
		elseif($vote ===2){
			$image = "image/clickedno.svg";
		}

    	$voteArr[$pid][] = array(
    		'uid'=>$uid,
    		'uname'=>$uname,
    		'voteimg'=>$image,
    	);

    	$userArr[$uname] = $uname;
    	
	}
	foreach($voteArr as $key=>$value){
		$optionArr[$key]['user'] = $value; 
	}

    $stmt->close();
    $db->close();
    $smarty -> assign('voteuser',$userArr);
	$smarty -> assign('pollresult',$optionArr);
	$smarty->display('list.tpl');
}



