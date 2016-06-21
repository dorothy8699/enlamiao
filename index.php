<?php

$req_type = $_SERVER['REQUEST_URI'];

if(strpos($req_type, 'create')){
	require './controller/EventController.php';
}
else if(strpos($req_type, 'confirm')){
	require './controller/confirmController.php';
	
}
else if(strpos($req_type, 'finish')){
	require './controller/finishController.php';
}
else if(strpos($req_type, 'list')){
	require './controller/listController.php';
}
else if(strpos($req_type, 'box')){
	require './controller/boxController.php';
}
else if(strpos($req_type, 'poll')){
	require './controller/pollController.php';
}
else{
	require './controller/TopController.php';
};
init();