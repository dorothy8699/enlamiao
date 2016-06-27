<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" href="css/comm.css" >
    <link rel="stylesheet" href="css/poll.css">
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="js/poll.js"></script>
    
		<title></title>
	</head>
	<body>
 		          
              
	
	<div style="margin-top:30px;padding-top:20px;padding-bottom:20px;padding-left:10%;padding-right:10%;">
	          <form id="pollForm" method="post">
	            <div>	
              <div style="float:left"><img src="image/no1.svg" height="40px"></div>
              <div style="float:left;height:40px;line-height:40px;padding-left:20px;" class="title-up">请输入姓名或昵称</div>
              <div style="clear:both;"></div>
              </div>

              <div style="margin-top:10px;margin-left:70px;width:50%;">
              <input type="text" name="username" id="username" style="height:25px;">
              </div>
              

              <div style="margin-top:20px;">	
              <div style="float:left"><img src="image/no1.svg" height="40px"></div>
              <div style="float:left;height:40px;line-height:40px;padding-left:20px;" class="title-up">请选择日程	</div>
              <div style="clear:both;"></div>
              </div>

              <div style="margin-top:10px;max-height:500px;overflow-y:auto;">
              <table class="pollTable">
                {foreach from=$pollresult item=p}
               
                   <tr>
                   <td>{$p.begin}</td>
                   <td>
	                   	
	                   <div>
		                   <div style="float:left">
                       <img class="yesBtn" src="image/yes.svg" height="30px" style="cursor:pointer">
                        <input type="radio" name="poll{$p.pid}" class="radioyes" value="1" style="display:none">
                       </div>
		                   <div style="float:left;height:30px;line-height:30px;padding-left:10px;">我要参加</div>
		                   <div style="float:left;padding-left:20px;">
                         <img class="noBtn" src="image/no.svg" height="30px" style="cursor:pointer">
                         <input type="radio" name="poll{$p.pid}" class="radiono" value="2"  style="display:none">
                       </div>
		                   <div style="float:left;height:30px;line-height:30px;padding-left:10px;">下次么么哒</div>
	                   </div> 
	                   
	                   

	                 
	                </td>   
                   <tr>
                
                {/foreach}

                </table>
               </div>

              <!--<div style="margin-top:20px;">	
              <div style="float:left"><img src="image/step3.svg" height="80px"></div>
              <div style="float:left;height:80px;line-height:80px;padding-left:20px;">请点击确认	</div>
              <div style="clear:both;"></div>
              </div>

          <div id="okBtn" style="margin-top:30px;margin-left:70px;">
		        <div class="btn" style="display:block;"><img src="image/ok0.svg" width="300px"></div>
		        <div class="btn-hover" style="display:none;"><img src="image/ok3.svg" width="300px"></div>
		      </div>

          <div style="margin-top:30px;margin-left:70px;">
          <p id="pollBtn" class="pollBtn">
                  <span>嗯啦喵</span>
          </p>
          </div>-->

          <div id="pollBtn" style="width:100%;padding-top:60px;padding-left:10%;width:20%;">
            <div style="height:60px;line-height:60px;min-width:100px;" class="font-en ft36 color-w pointer pollBtn">
              OK
            </div>
            
          </div>  
                
          <input id="eventid" name="eventid" type="hidden" value="{$p.eid}">
          </form>

      </div>  
	</body>
</html>
