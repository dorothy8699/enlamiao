<!DOCTYPE html>
<html lang="zh-CN">
	<head>
    <link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" href="css/top.css" >
    <link rel = "Shortcut Icon" href="fabicon.ico" type="image/x-icon" /> 
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/top.js"></script>
	<title></title>
	</head>
	<body style="width:100%;height:100%;margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap" style="height:100vh;">

<!-- logo start -->
{include file="include/header.inc"}
<!-- logo end --> 

<div style="width:100%;height:60%;">
<div style="width:70%;margin:0 15% 0 15%;color:#565656;padding:2%;">
恭喜你成功创建活动<br>
请复制链接并分享</br>
<a href="{$link}" target="_blank">{$link}</a>
</div>
</div>

<!-- footer start-->
{include file="include/footer.inc"}
<!-- footer end-->

</div>
	</body>
</html>
