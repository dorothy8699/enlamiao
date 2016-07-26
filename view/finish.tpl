<!DOCTYPE html>
<html lang="zh-CN">
	<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" href="css/top.css" >
    <link rel = "Shortcut Icon" href="fabicon.ico" type="image/x-icon" /> 
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/top.js"></script>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<title></title>
	</head>
	<body style="width:100%;height:100%;margin:0;padding:0;"> 
<div class="wrap">

<!-- logo start -->
{include file="include/header.inc"}
<!-- logo end -->


<div style="width:100%;background:#fafafa;padding-top:80px;padding-bottom:140px;">
<div class="container">
      <div class="row">
    <div class="col-md-5">
      <img src="image/no1.svg" width="100%">
    </div>
    <div class="col-md-6 col-md-offset-1">
      <!-- botton start -->
      <div style="padding-top:15%;color:#565656;">
        <div style="text-align:left;">
      	<h2>恭喜您！</h2>
      	<div style="line-height:30px;">
	      	成功创建活动<br>
	      	您的投票数据将在活动结束后一个月内失效</br>
	      	请及时分享以下链接并收集投票结果</br>
			<a href="{$link}" target="_blank">{$link}</a>
		</div>
		</div>
      </div>
      <!-- botton end -->
    </div>
    <div class="col-md-1">
    </div>
  </div>
</div>
</div>



<!-- footer start-->
{include file="include/footer.inc"}
<!-- footer end-->

</div>
	</body>
</html>
