<!DOCTYPE html>
<html>
	<head>
    <link rel="stylesheet" href="css/thickbox.css">
    <link rel="stylesheet" href="css/list.css">
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/list.js"></script>
    <script type="text/javascript" src="js/thickbox.js"></script>
    
		<title></title>
	</head>
	<body style="width:100%;height:100%;margin:0;padding:0;font-family:Consolas,Monaco,Lucida Console,monospace;"> 
<div class="wrap"> 


{include file="include/header.inc"}


<div style="width:100%;margin:20px 10% 20px 10%;">
    
          <div style="padding:30px 10px;color:#565656;">
            <div style="float:left;height:80px;">
              <img src="image/no1.svg" height="80px">
            </div>

            <div style="float:left;padding-left:15px;height:80px;line-height:80px;">
              <div>主题</div>
              <div style="font-size:13px;color:#000;">{$title}</div>
            </div>

            <div style="clear:both;"></div>
          </div>

          
          <div style="padding:30px 10px;color:#565656;">
            <div style="float:left;height:80px;">
              <img src="image/no2.svg" height="80px">
            </div>

            <div style="float:left;padding-left:15px;height:80px;line-height:80px;">
              <div>内容</div>
              <div style="font-size:13px;color:#000;">{$content}</div>
            </div>

            <div style="clear:both;"></div>
          </div>

          <div style="padding:30px 10px;color:#565656;">
            <div style="float:left;height:80px;">
              <img src="image/no3.svg" height="80px">
            </div>

            <div style="float:left;padding-left:15px;height:80px;line-height:80px;">
                <div>候补日期</div>
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

                <div style="padding-top:40px;color:#565656;">
                <a href="box?id={$p.eid}&keepThis=true&TB_iframe=true&height=500&width=900" title="活动标题" class="thickbox" style="text-decoration: none;cursor:pointer;">
                  <p class="okBtn">
                    <span>嗯啦喵</span>
                  </p>
                </a>
                </div>
            </div>

            <div style="clear:both;"></div>  
          </div>


<!--
    <table style="width:80%;border-collapse:separate; border-spacing:20px;">
    <tr>

      <td style="width:60%" class="createTableTr2Td2">
  
        <div style="width:100%">
          <div style="padding:30px 10px;color:#565656;">
            <div style="float:left;height:80px;">
              <img src="image/no1.svg" height="80px">
            </div>
            <div style="float:left;padding-left:15px;height:80px;line-height:80px;">
              <div>主题</div>
              <div style="font-size:13px;color:#000;">{$title}</div>
            </div>
            <div style="clear:both;"></div>
          </div>

            
          
          <div style="padding:30px 10px;color:#565656;">
            <div style="float:left;height:80px;"><img src="image/no2.svg" height="80px"></div>
            <div style="float:left;padding-left:15px;height:80px;line-height:80px;">
              <div>内容</div>
              <div style="font-size:13px;color:#000;">{$title}</div>
            </div>
            <div style="clear:both;"></div>
          </div>

          <div style="padding:30px 10px;color:#565656;">
            <div style="float:left;height:80px;">
              <img src="image/no3.svg" height="80px">
            </div>
            <div style="float:left;padding-left:15px;height:80px;line-height:80px;">
              <div>
                <div>候补日期</div>
                <div style="font-size:13px;color:#000;">{$title}</div>
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
                       
                      </table>
                    </div>
                </div>
              </div>
            </div>
            <div style="clear:both;"></div>  
          </div>


          

          <!--<div style="padding:30px 10px;color:#f89f21;">
            <div style="float:left;height:40px;"><img src="image/headline.svg" height="40px"></div>
            <div style="margin-left:15%;height:40px;line-height:40px;">
              <a href="box?id={$p.eid}&keepThis=true&TB_iframe=true&height=500&width=900" title="活动标题" class="thickbox">
                <div class="addBtn" style="display:block;"><img src="image/ok0.svg" width="300px"></div>
              </a>
            </div>
          </div>

        </div>
      </td>

    </tr>

    <tr>
    <td>
        <div style="padding:30px 10px;color:#565656;">
            <a href="box?id={$p.eid}&keepThis=true&TB_iframe=true&height=500&width=900" title="活动标题" class="thickbox" style="text-decoration: none;cursor:pointer;">
              <p class="okBtn">
                      <span>嗯啦喵</span>
              </p>
            </a>
          </div>
    </td>      
    </tr>

    </table>-->



</div>


</div>
	</body>
</html>
