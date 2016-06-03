<?php 
include_once('../smarty/Smarty.class.php');
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
exit;*/

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

$smarty -> display('finish.html'); 
?>



