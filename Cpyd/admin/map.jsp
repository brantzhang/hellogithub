<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312" 
pageEncoding="gb2312"%>
<%@ page import="com.bean.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../images/wicketstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="../images/wicketjs.js"></script>
<script type="text/javascript" src="../images/jquery.js"></script>
<link href="../images/citywicket.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function f1()
{

 form1.submit();
}
</script>
</head>

<body>
<div id="homecontent"> 
<div id="pane1">
<div id="leftchoose">
<form action="<%=basePath %>member/info/searchinfo.jsp" method="post" name="form1" >
<span id="textbox_start"></span><span id="textbox_city_name"><span class="chooseitem">按下你想到的地方：

<input name="final_city" type="text" id="city_name"  size="8"  />
</span></span>

<br><span class="map_search">
<a onclick="f1()" >确定</a>

<a onclick="clear_textbox();" style="cursor:pointer;">清空</a>
</span>
</form>
</div>

<!-- 城市ID布局开始-->
 <div id="cityname">
 
 
 <div id="guangzhou"><a href="#" onclick="cg_dity('广州');">广州</a></div>
 <div id="shenzhen"><a href="#" onclick="cg_dity('广州-深圳');">深圳</a></div>
 <div id="zhanjiang"><a href="#" onclick="cg_dity('广州-湛江');">湛江</a></div>
 <div id="xianggan"><a href="#" onclick="cg_dity('广州-香港');">香港</a></div>
 <div id="shantou"><a href="#" onclick="cg_dity('广州-汕头');">汕头</a></div>
 <div id="hainan"><a href="#" onclick="cg_dity('广州-海南');">海南</a></div>
 <div id="aomen"><a href="#" onclick="cg_dity('广州-澳门');">澳门</a></div>
 
<div id="liuzhou"><a href="#" onclick="cg_dity('广州-柳州');">柳州</a></div>
 <div id="nanning"><a href="#" onclick="cg_dity('广州-南宁');">南宁</a></div>
 
 
 <div id="kunming"><a href="#" onclick="cg_dity('广州-昆明');">昆明</a></div>
 
 <div id="xiamen"><a href="#" onclick="cg_dity('广州-厦门');">厦门</a></div>
 <div id="fuzhou"><a href="#" onclick="cg_dity('广州-福州');">福州</a></div>
 <div id="wenzhou"><a href="#" onclick="cg_dity('广州-温州');">温州</a></div>
 
<div id="hangzhou"><a href="#" onclick="cg_dity('广州-杭州');">杭州</a></div>
 <div id="shanghai"><a href="#" onclick="cg_dity('广州-上海');">上海</a></div>
 <div id="nanjing"><a href="#" onclick="cg_dity('广州-南京');">南京</a></div>
 <div id="xuzhou"><a href="#" onclick="cg_dity('广州-徐州');">徐州</a></div>
 
<div id="jinan"><a href="#" onclick="cg_dity('广州-济南');">济南</a></div>
 <div id="tianjin"><a href="#" onclick="cg_dity('广州-天津');">天津</a></div>
 <div id="shijiazhuang"><a href="#" onclick="cg_dity('广州-石家庄');">石家庄</a></div>
 <div id="beijing"><a href="#" onclick="cg_dity('广州-北京');">北京</a></div>

 <div id="daliang"><a href="#" onclick="cg_dity('广州-大连');">大连</a></div>
 <div id="shenyang"><a href="#" onclick="cg_dity('广州-沈阳');">沈阳</a></div>
 <div id="jilin"><a href="#" onclick="cg_dity('广州-吉林');">吉林</a></div>
 
 
 <div id="haerbin"><a href="#" onclick="cg_dity('广州-哈尔滨');">哈尔滨</a></div>
 <div id="qiqihaer"><a href="#" onclick="cg_dity('广州-齐齐哈尔');">齐齐哈尔</a></div>
 <div id="changchun"><a href="#" onclick="cg_dity('广州-长春');">长春</a></div>
 
 <div id="changsha"><a href="#" onclick="cg_dity('广州-长沙');">长沙</a></div>
 <div id="zhuzhou"><a href="#" onclick="cg_dity('广州-株洲');">株洲</a></div>
 <div id="nanchang"><a href="#" onclick="cg_dity('广州-南昌');">南昌</a></div>
 
 <div id="wuhan"><a href="#" onclick="cg_dity('广州-武汉');">武汉</a></div>
 <div id="xiangfan"><a href="#" onclick="cg_dity('广州-襄樊');">襄樊</a></div>
 
 
 
 <div id="zhengzhou"><a href="#" onclick="cg_dity('广州-郑州');">郑州</a></div>
 <div id="luoyang"><a href="#" onclick="cg_dity('广州-洛阳');">洛阳</a></div>
 
 <div id="xian"><a href="#" onclick="cg_dity('广州-西安');">西安</a></div>
 <div id="ankang"><a href="#" onclick="cg_dity('广州-安康');">安康</a></div>
 
 <div id="taiyuan"><a href="#" onclick="cg_dity('广州-太原');">太原</a></div>
 <div id="huhehaote"><a href="#" onclick="cg_dity('广州-呼和浩特');">呼和浩特</a></div>
 
 <div id="baotou"><a href="#" onclick="cg_dity('广州-包头');">包头</a></div>
 <div id="yinchuan"><a href="#" onclick="cg_dity('广州-银川');">银川</a></div>
 
 
 <div id="lanzhou"><a href="#" onclick="cg_dity('广州-兰州');">兰州</a></div>
 <div id="chengdu"><a href="#" onclick="cg_dity('广州-成都');">成都</a></div>
 
 <div id="xining"><a href="#" onclick="cg_dity('广州-西宁');">西宁</a></div>
 <div id="yumen"><a href="#" onclick="cg_dity('广州-玉门');">玉门</a></div>
 <div id="geermu"><a href="#" onclick="cg_dity('广州-格尔木');">格尔木</a></div>
 <div id="hami"><a href="#" onclick="cg_dity('广州-哈密');">哈密</a></div>
 <div id="wulumuqi"><a href="#" onclick="cg_dity('广州-乌鲁木齐');">乌鲁木齐</a></div>
 
 
 
  </div>
<!-- 城市ID布局结束-->

</div>
  
</div> 

</div>
</body>
</html>
