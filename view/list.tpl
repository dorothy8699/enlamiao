<!DOCTYPE html>
<html lang="zh-CN">
	<head>
    <link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" href="css/thickbox.css">
    <link rel="stylesheet" href="css/list.css">
    <link rel = "Shortcut Icon" href="fabicon.ico" type="image/x-icon" /> 
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/list.js"></script>
    <script type="text/javascript" src="js/thickbox.js"></script>
    
		<title></title>
	</head>
	<body style="width:100%;height:100%;margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 


{include file="include/header.inc"}

<div style="width:100%;">
<div style="width:70%;margin:0 15% 0 15%;color:#565656;padding:2%;">

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
                    <div style="padding-top:5px;">
                    <div class="createTableTr2Td2">
                    <div>
                      <table class="listTable">
                        <tr>
                          <td>日期和时间</td>
                          <td>OK</td>
                          <td>NG</td>
                          {foreach from=$voteuser item=name}
                            <td>{$name}</td>
                          {/foreach}

                        </tr>
                        

                        {foreach from=$pollresult item=p}
                        <tr>
                          <td>{$p.begin}</td>
                          <td>{$p.yes}人</td>
                          <td>{$p.no}人</td>
                            {foreach from=$p.user item=u}
                            <td>
                            <img src="{$u.voteimg}" width="30px">
                            </td>
                            {/foreach}
                        </tr>
                        {/foreach}
                        
                      </table>
                    </div>
                </div>
                    </div>

                </div>  
              </div>

            </div>

            <div style="clear:both;"></div>  


            <div style="width:100%;padding-top:60px;padding-left:70px;width:20%;">
            
            <div style="height:60px;line-height:60px;min-width:100px;" class="font-en ft36 color-w pointer listBtn" onclick="openBox('{$p.eid}')">
              OK
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
