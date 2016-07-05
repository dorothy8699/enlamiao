<!DOCTYPE html>
<html lang="zh-CN">
	<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
     <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" href="css/list.css">
    <link rel = "Shortcut Icon" href="fabicon.ico" type="image/x-icon" /> 
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/list.js"></script>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/layer.js"></script>
		<title></title>
	</head>
	<body style="width:100%;height:100%;margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 


{include file="include/header.inc"}

<div style="width:100%;background:#fafafa;padding-top:40px;">
<div class="container">
    <div class="row">
      <div class="col-md-1 col-md-offset-1">
          <img src="image/no1.svg" height="50px">
      </div>
      <div class="col-md-8">
          <div class="title-up">活动主题</div>
          <div style="padding-top:5px;" class="title-down">
                  {$title}
          </div>
      </div>
    </div>

    <div class="row mt30">
      <div class="col-md-1 col-md-offset-1">
          <img src="image/no1.svg" height="50px">
      </div>
      <div class="col-md-8">
          <div class="title-up">活动详细</div>
          <div style="padding-top:5px;" class="title-down">{$content}</div>
      </div>
    </div>

    <div class="row mt30">
      <div class="col-md-1 col-md-offset-1">
          <img src="image/no1.svg" height="50px">
      </div>
      <div class="col-md-8">
          <div class="title-up">投票截止</div>
          <div style="padding-top:5px;" class="title-down">{$end}</div>
      </div>
    </div>


    <div class="row mt30">
      <div class="col-md-1 col-md-offset-1">
          <img src="image/no1.svg" height="50px">
      </div>
      <div class="col-md-8">
          <div class="title-up">候选项目</div>
          <div style="padding-top:5px;" class="table-responsive">
              <table class="table table-hover">
                <thead>
                  <tr>
                      <th>我要选</th>
                      <th>OK</th>
                      <th>NG</th>
                      {foreach from=$voteuser item=name}
                        <th>{$name}</th>
                      {/foreach}
                  </tr>
                </thead>
                <tbody>
                  {foreach from=$pollresult item=p}
                  <tr>
                    <td>{$p.option}</td>
                    <td>{$p.yes}人</td>
                    <td>{$p.no}人</td>
                      {foreach from=$p.user item=u}
                        {if !empty($u.voteimg)}
                        <td>
                          <img src="{$u.voteimg}" width="30px">
                        </td>
                        {/if}
                      {/foreach}
                  </tr>
                  {/foreach} 
                </tbody>
              </table>
          </div>
      </div>
    </div>

    <div class="row mt30">
        <div class="col-md-1 col-md-offset-1">
        </div>
        <div class="col-md-8">
          <div style="width:100%;padding-top:20px;padding-bottom:150px;width:20%;">
            <div id="listBtn" style="height:60px;line-height:60px;min-width:100px;" class="font-en ft36 color-w pointer listBtn" onclick="openBox('{$p.eid}')">
              OK
            </div>
            </div>
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
