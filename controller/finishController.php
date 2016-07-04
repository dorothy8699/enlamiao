<?php 
/*include_once('../smarty/Smarty.class.php');
$smarty = new Smarty(); 
$smarty -> template_dir = "../templates"; 
$smarty -> compile_dir = "../templates_c"; 
$smarty -> left_delimiter = "{"; 
$smarty -> right_delimiter = "}"; 


$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
$chars = str_shuffle($chars);
$subchars = substr($chars,0,10) . strtotime(date("Y-m-d H:i:s",time()));

/*$conn = @ mysql_connect("localhost","root","") or die ("connect db error");
mysql_select_db("enlamiao",$conn);
$sql = "INSERT INTO event(eid, title, start, content)VALUES()";
$result = mysql_query($sql);
 while ( $row  =  mysql_fetch_array ($result )) {
         echo  $row [ 'id' ]."||".$row [ 'eid' ];
    }
exit;

$data = array(
	"eid"=>$subchars,
	"title"=>$_POST['title'],
	"start"=>$_POST['start'],
	"content"=>$_POST['content']
	);
$db = new mysqli('localhost', 'root', '','enlamiao');
$sql = "INSERT INTO event(eid, title, start, content) VALUES(?,?,?,?)";
$stmt= $db->prepare($sql); 
$stmt->bind_param('ssss', $data['eid'], $data['title'], $data['start'], $data['content']); 
$stmt->execute();
echo $stmt->affected_rows;

$smarty -> display('finish.html'); */




require './core/MySmarty.class.php';
require './model/Validator.php';
/**
 * function showTop
 *
 * @author Dorothy <koueig@gmail.com> 2015-04-22
 */ 
function init(){	

	$smarty = new MySmarty();
	$smarty->caching = false;

	$data = array(
		"title"=>$_POST['title'],
		"content"=>$_POST['content'],
		"options"=>$_POST['options'],
		"end"=>$_POST['end']
	);

	if(empty($data['end'])) $data['end'] = date("Y-m-d",strtotime("+1 month"));

	$validator = new Validator($data);
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
		$optionArr = explode("\r\n", trim($data['options']));

		$db = new mysqli('localhost', 'root', '','enlamiao');
		$sql = "INSERT INTO event(eid, title, content, options, end) VALUES(?,?,?,?,?)";
		$stmt= $db->prepare($sql); 
		$stmt->bind_param('sssss', $data['eid'], $data['title'],$data['content'], $data['options'], $data['end']); 
		$stmt->execute();

		$sql = "INSERT INTO item(eid, option) VALUES(?,?)";
		foreach($optionArr as $option){
			$stmt= $db->prepare($sql); 
			$stmt->bind_param('ss', $data['eid'], $option); 
			$stmt->execute();
		}

		$link = sprintf('http://%s/enlamiao/list?id=%s', $_SERVER['HTTP_HOST'], $data['eid']);
		$smarty = new MySmarty();
		
		$smarty -> assign('link',$link);
		$smarty->display('finish.tpl');
	}
}



