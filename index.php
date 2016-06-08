<?php
$req_type = $_SERVER['REQUEST_URI'];
if(strpos($req_type, 'create')||strpos($req_type, 'confirm')||strpos($req_type, 'finish')){
	require './controller/EventController.php';
	init();
}else{
	require './controller/TopController.php';
	showTop();
}


