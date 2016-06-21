<!DOCTYPE html>
<html>
	<head>
    <link rel="stylesheet" href="css/top.css" >
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/top.js"></script>
    
		<title></title>
	</head>
	<body style="width:100%;height:100%;margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 


{include file="include/header.inc"}


<div style="width:100%;margin:20px 10% 20px 10%;font-size:13px;">
<form id="confirmForm" action="finish.html" method="post">
    <div style="padding:20px 10px;color:#565656;"> 
      <div style="float:left;"><img src="image/no1.svg" height="80px"></div>
      <div style="float:left;padding-left:20px;">
        <div class="ttl">活动主题</div>
        <div>{$title}</div>
      </div>
      <div style="clear:both;"></div>
    </div>

    <div style="padding:20px 10px;color:#565656;"> 
    <div style="float:left"><img src="image/no2.svg" height="80px"></div>
    <div style="float:left;padding-left:20px;">
      <div class="ttl">活动内容</div>
      <div>{$content|nl2br}</div>
    </div>
    <div style="clear:both;"></div>
    </div>

    <div style="padding:20px 10px;color:#565656;"> 
    <div style="float:left"><img src="image/no3.svg" height="80px"></div>
    <div style="float:left;padding-left:20px;">
      <div class="ttl">候选时间</div>
      <div>{$datetimes|nl2br}</div>
    </div>
    <div style="clear:both;"></div>
    </div>

    <input type="hidden" id="title" name="title" value="{$title}">
    <input type="hidden" id="content" name="content" value="{$content}">
    <input type="hidden" id="datetimes" name="datetimes" value="{$datetimes}">

    <div id="confirmBtn" style="color:#565656;margin-left:100px;margin-top:30px;">
      <p class="confirmBtn">
        <span>嗯啦喵</span>
      </p>
    </div>
    </form>
</div>


</div>
	</body>
</html>
