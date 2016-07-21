<!DOCTYPE html>
<html lang="zh-CN">
	<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
     <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link rel="stylesheet" href="css/comm.css" >
     <link rel="stylesheet" href="css/top.css" >
     <link rel="stylesheet" href="css/slick.css" >
     <link href='https://fonts.googleapis.com/css?family=Changa+One' rel='stylesheet' type='text/css'>
     <link rel = "Shortcut Icon" href="fabicon.ico" type="image/x-icon" />
    <script type="text/javascript" src="js/slick.js"></script>
    <script type="text/javascript" src="js/top.js"></script>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<title></title>
	</head>
	<body style="margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap" style="position:relative;"> 

<nav class="navbar navbar-inverse site-navbar" style="position:fixed;left:0;right:0;z-index:99;">
  <div class="container">
      <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="./"><img src="image/logo.svg" width="50px"></a>
      </div>
      <div id="navbar" class="collapse navbar-collapse" style="padding-top:10px;padding-bottom:10px;">
          <ul class="nav navbar-nav">
              <li><a href="./">首页</a>
              </li>
              <li><a href="docs/">关于嗯啦喵</a>
              </li>
              <li><a href="docs/getting-started/">使用方法</a>
              </li>
              <li><a href="docs/faq/">常见问题</a>
              </li>
              <li><a href="docs/recipes/">联系我</a>
              </li>
          </ul>
      </div>
  </div>
</nav>


<div style="background-color:#e5e5e5;width:100%;position:absolute;top:70px;">
<div class="container" style="padding-top:5%;position:relative;">
{if $smFlg}
  <div class="row">
    <div class="col-md-6">
      <div style="margin:auto 18%;">
      <img src="image/smno.svg" width="100%">
      </div>
    </div>
    <div class="col-md-5">
      <!-- botton start -->
      <div class="smpreInfo">
          <div style="font-size:18px;line-height:26px;">嗯啦喵是一款调查<br>团队活动参与意向的小工具</div>
          <div class="pdt15 ft13">您只需一键<span class="color-r">发布</span>活动计划</div>
          <div class="ft13">嗯啦喵可以帮您<span class="color-r">收集</span>活动参加者意向</div>
          <a href="create.html">
          <div id="startBtn" class="font-en ft36 color-w pointer smstartBtn mt10">
            start
          </div>
          </a>
      </div>
      <!-- botton end -->
    </div>
  </div>
{else}
    <div class="row">
      <div class="col-md-6">
        <div style="padding-left:10%;">
        <img id="preImg" class="preImg" src="image/no1.svg" width="100%">
        </div>
      </div>
      <div class="col-md-5">
        <!-- botton start -->
        <div id="preInfo" class="preInfo">
            <div style="font-size:22px;line-height:28px;">嗯啦喵是一款调查团队活动参与意向的小工具</div>
            <div id="preIntr" class="pdt40 ft15">您只需一键<span class="color-r">发布</span>活动计划</div>
            <div id="preDes" class="ft15 pdt10">嗯啦喵可以帮您<span class="color-r">收集</span>活动参加者意向</div>
            <a href="create.html">
            <div id="startBtn" style="margin-top:50px;" class="font-en ft36 color-w pointer startBtn mt50">
              start
            </div>
            </a>
        </div>
        <!-- botton end -->
      </div>
    </div>
{/if}  
  <div class="row" style="position:absolute;bottom:0;left:48%">
    <div class="col-md-12">
    <div class="arrow">
      <a href="#how"><span></span></a>
    </div>
  </div>
</div>
</div>

<div style="background-color:#fafafa;width:100%;">
<div class="container" style="padding-top:5%;padding-bottom:5%;">


  <div class="row">
    <div class="col-md-8 col-md-offset-2">
        <ul style="list-style:none;border-top:2px solid #e5e5e5;margin-top:60px;margin-bottom:20px;">
          <li style="float:left;padding-left:20%;"><div class="min-circle-select"></div></li>
          <li style="float:left;padding-left:15%;"><div class="min-circle"></div></li>
          <li style="float:left;padding-left:15%;"><div class="min-circle"></div></li>
        </ul>
     </div> 
  </div> 

  <div class="row">
    <div class="col-md-4">
      <!-- botton start -->
      <div style="padding-top:20%;color:#565656;text-align:center;">
          <div style="font-size:22px;line-height:28px;">嗯啦喵是一款调查团队活动参与意向的小工具</div>
          <div style="font-size:15px;padding-top:40px;">您只需一键<span class="color-r">发布</span>活动计划</div>
          <div style="font-size:15px;padding-top:10px;">嗯啦喵可以帮您<span class="color-r">收集</span>活动参加者意向</div>
      </div>
      <!-- botton end -->
    </div>
    <div class="col-md-8">
      <div>
      <img src="image/example1.svg" width="100%">
      </div>
    </div>
  </div>

  <!--<div class="row">
    <div class="col-md-8 col-md-offset-2">
      <div style="border-top:2px solid #e5e5e5;margin-top:40px;margin-bottom:40px;"></div>
    </div>
  </div>-->

    <div class="row">
    <div class="col-md-8 col-md-offset-2">
        <ul style="list-style:none;border-top:2px solid #e5e5e5;margin-top:60px;margin-bottom:20px;">
          <li style="float:left;padding-left:20%;"><div class="min-circle"></div></li>
          <li style="float:left;padding-left:15%;"><div class="min-circle-select"></div></li>
          <li style="float:left;padding-left:15%;"><div class="min-circle"></div></li>
        </ul>
     </div> 
  </div> 


    <div class="row">
    <div class="col-md-4">
      <!-- botton start -->
      <div style="padding-top:20%;color:#565656;text-align:center;">
          <div style="font-size:22px;line-height:28px;">嗯啦喵是一款调查团队活动参与意向的小工具</div>
          <div style="font-size:15px;padding-top:40px;">您只需一键<span class="color-r">发布</span>活动计划</div>
          <div style="font-size:15px;padding-top:10px;">嗯啦喵可以帮您<span class="color-r">收集</span>活动参加者意向</div>
      </div>
      <!-- botton end -->
    </div>
    <div class="col-md-8">
      <div>
      <img src="image/example1.svg" width="100%">
      </div>
    </div>
    </div>

    <!--<div class="row">
      <div class="col-md-8 col-md-offset-2">
        <div style="border-top:2px solid #e5e5e5;margin-top:40px;margin-bottom:40px;"></div>
      </div>
    </div>-->
      <div class="row">
    <div class="col-md-8 col-md-offset-2">
        <ul style="list-style:none;border-top:2px solid #e5e5e5;margin-top:60px;margin-bottom:20px;">
          <li style="float:left;padding-left:20%;"><div class="min-circle"></div></li>
          <li style="float:left;padding-left:15%;"><div class="min-circle"></div></li>
          <li style="float:left;padding-left:15%;"><div class="min-circle-select"></div></li>
        </ul>
     </div> 
  </div> 


    <div class="row">
    <div class="col-md-4">
      <!-- botton start -->
      <div style="padding-top:20%;color:#565656;text-align:center;">
          <div style="font-size:22px;line-height:28px;">嗯啦喵是一款调查团队活动参与意向的小工具</div>
          <div style="font-size:15px;padding-top:40px;">您只需一键<span class="color-r">发布</span>活动计划</div>
          <div style="font-size:15px;padding-top:10px;">嗯啦喵可以帮您<span class="color-r">收集</span>活动参加者意向</div>
      </div>
      <!-- botton end -->
    </div>
    <div class="col-md-8">
      <div>
      <img src="image/example1.svg" width="100%">
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


