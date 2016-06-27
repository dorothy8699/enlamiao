<!DOCTYPE html>
<html>
	<head>
    <link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" href="css/confirm.css" >
    <link rel = "Shortcut Icon" href="fabicon.ico" type="image/x-icon" /> 
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/top.js"></script>
    
		<title></title>
	</head>
	<body style="width:100%;height:100%;margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 


{include file="include/header.inc"}

<div style="width:100%;">
<div style="width:70%;margin:0 15% 0 15%;color:#565656;padding:2%;/*border-radius:20px;-moz-box-shadow:7px 7px 30px #008080; -webkit-box-shadow:7px 7px 16px #008080; box-shadow:7px 7px 16px #008080;*/">

    <form id="confirmForm" action="finish.html" method="post">
          <div style="padding:15px 10px;">
            <div style="float:left;" class="title-step">
             <img src="image/no1.svg" height="50px">

            </div>

            <div style="float:left;padding-left:20px;width:80%;">
              <div class="title-up">活动主题</div>
              <div style="padding-top:5px;" class="title-down">
                {$title}
              </div>
            </div>

            <div style="clear:both;"></div>
          </div>
          <div style="padding:15px 10px;">
            <div style="float:left;" class="title-step">
             <img src="image/no1.svg" height="50px">
            </div>

            <div style="float:left;padding-left:20px;width:80%;">
              <div class="title-up">活动详细</div>
              <div style="padding-top:5px;" class="title-down">
                {$content}
              </div>
            </div>
            <div style="clear:both;"></div>
          </div>
          

          <div style="padding:15px 10px;">
            <div style="float:left;" class="title-step">
             <img src="image/no1.svg" height="50px">
            </div>

            <div style="float:left;padding-left:20px;width:80%;">
                <div style="width:100%;">
                  
                  <div class="title-up">候选时间</div>
                  <div style="width:100%;">  
                    <div style="padding-top:5px;" class="title-down">
                        {$datetimes|nl2br}
                    </div>

                </div>  
              </div>

            </div>

            <div style="clear:both;"></div>  

             <input type="hidden" id="title" name="title" value="{$title}">
            <input type="hidden" id="content" name="content" value="{$content}">
            <input type="hidden" id="datetimes" name="datetimes" value="{$datetimes}">

            <div style="width:100%;padding-top:60px;padding-left:40%;width:20%;">
            <div id="confirmBtn" style="height:60px;line-height:60px;min-width:100px;" class="font-en ft36 color-w pointer confirmBtn">
              OK
            </div>
            </div>
    </form>      
</div>
</div>

<!-- footer start-->
{include file="include/footer.inc"}
<!-- footer end-->

</div>
	</body>
</html>
