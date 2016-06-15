<!DOCTYPE html>
<html>
	<head>
    <link rel="stylesheet" href="css/list.css">
    <link rel="stylesheet" href="css/thickbox.css">
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/list.js"></script>
    <script type="text/javascript" src="js/thickbox.js"></script>
    
		<title></title>
	</head>
	<body style="width:100%;height:100%;margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 


<!-- logo start -->
 <div style="width:100%;background:#183654;height:120px;">
  <a href="/">
    <div style="padding-left:40%;height:80px;line-height:80px;"><img src="image/logo01.svg" height="80px"></div>
  </a>  
 </div>

<!-- logo end --> 


<div style="height:50px;line-height:50px;width:100%;margin:20px 10% 20px 10%;font-size:20px;">


    <table style="width:80%;border-collapse:separate; border-spacing:20px;">
    <tr>

      <td style="width:60%" class="createTableTr2Td2">
      
        <div style="width:100%">
          <div style="padding:30px 10px;color:#f89f21;">
            <div style="float:left;height:40px;">
              <img src="image/headline.svg" height="40px">
            </div>
            <div style="margin-left:15%;height:40px;line-height:40px;">
              <div>主题</div>
              <div style="font-size:13px;color:#000;">{$title}</div>
            </div>
          </div>
          
          <div style="padding:30px 10px;color:#f89f21;">
            <div style="float:left;height:40px;"><img src="image/headline.svg" height="40px"></div>
            <div style="margin-left:15%;height:40px;line-height:40px;">
              <div>内容</div>
              <div style="font-size:13px;color:#000;">{$title}</div>
            </div>
          </div>
          <div style="padding:30px 10px;color:#f89f21;">
            <div style="float:left;height:40px;"><img src="image/headline.svg" height="40px"></div>
            <div style="margin-left:15%;height:40px;line-height:40px;">
              <div>候补日期</div>
              <div style="font-size:13px;color:#000;">{$title}</div>
      <div class="createTableTr2Td2">
          <div style="float:left;">
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
              

             <!--
              <tr>
                <td>m</td>
                <td></td>
                <td></td>
                {foreach from=$voteuser item=name}
                <td>
                </td>
                {/foreach}
              </tr>
             -->

            </table>
          </div>

          <!--<div style="float:left;padding-left:-10px;">
            <form id="pollForm" method="post" action="poll.html">
              <table class="addTable">
                <tr>
                  <td>
                    <input type="text" name="username" id="username" placeholder="请输入姓名" style="width:100%;height:100%;">
                  </td>
                </tr>
                {foreach from=$pollresult item=p}
                <tr>
                   <td>
                   <div style="padding-top:5px;">
                   <img class="yesBtn" src="image/clickedyes.svg" width="30px" style="cursor:pointer">
                   <div style="display:none">
                   <input type="radio" name="poll{$p.pid}" value="1">
                   </div>
                   <img class="noBtn" src="image/no.svg" width="30px" style="cursor:pointer">
                   <div style="display:none">
                   <input type="radio" name="poll{$p.pid}" value="2">
                   </div>
                   <div>
                   </td>
                </tr>
                {/foreach}
                <tr>
                  <td style="background:#f89f21;cursor:pointer;">确认添加吗？</td>
                </tr>
              </table>
              <input id="eventid" name="eventid" type="hidden" value="{$p.eid}">
            </form>
         </div> -->
      <div>



            </div>
          </div>
         
          
        </div>

      </td>

    </tr>

    <tr>
    <td>
        <a href="poll?keepThis=true&TB_iframe=true&height=600&width=800" title="add a caption to title attribute / or leave blank" class="thickbox">
    <div class="addBtn" style="display:block;"><img src="image/ok0.svg" width="300px"></div>
    </a>
    </td>
    </tr>

    </table>



</div>


</div>
	</body>
</html>
