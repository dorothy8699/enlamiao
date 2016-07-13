<?php 

require './core/MySmarty.class.php';
require './model/MyDB.php';
require './model/Validator.php';
require './controller/errorController.php';

/**
 * function showTop
 *
 * @author Dorothy <koueig@gmail.com> 2015-04-22
 */ 
function init(){	

	$smarty = new MySmarty();
	$smarty->caching = false;

	$validator = new Validator();

	$data = array(
		"title"=>$validator->filter($_POST['title']),
		"content"=>$validator->filter($_POST['content']),
		"options"=>$validator->filter($_POST['options']),
		"end"=>$_POST['end']
	);

	if(empty($data['end'])) $data['end'] = date("Y-m-d",strtotime("+1 month"));

	$error = $validator->checkCreateData($data);
	if(!empty($error)) {
		$smarty -> assign('error',$error); 
		$smarty -> assign('title',$data['title']);
		$smarty -> assign('content',$data['content']); 
		$smarty -> assign('options',$data['options']);
		$smarty -> assign('end',$data['end']); 
		$smarty->display('create.tpl');
	}else{
		$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
		$chars = str_shuffle($chars);
		$data['eid'] = substr($chars,0,10) . strtotime(date("Y-m-d H:i:s",time()));
		$optArr= explode("\r\n", trim($data['options']));
		$mydb = new MyDB();
		$mydb->begin();
		$Error = new errorController();
		try{
            $result = $mydb->insertEvent($data);
            if(!$result) $Error->gotoError($smarty, "SERVER_ERROR");
        } catch(Exception $e) {
        	  $mydb->rollback();
        	  $Error->gotoError($smarty, "SERVER_ERROR");
        }
		
		try{
            $result = $mydb->insertItem($data['eid'],$optArr);
            if(!$result) {
				$Error->gotoError($smarty, "SERVER_ERROR");	
			}
        } catch(Exception $e) {
        	  $mydb->rollback();
        	  $Error->gotoError($smarty, "SERVER_ERROR");
        }
        $mydb->commit();
		$link = sprintf('http://%s/list?id=%s', $_SERVER['HTTP_HOST'], $data['eid']);
		$smarty = new MySmarty();
		$smarty -> assign('link',$link);
		$smarty->display('finish.tpl');
	}
}



