<%@ page language="java" import="java.util.*,com.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="com.bean.*" %>
<jsp:useBean id="yb" scope="page" class="com.bean.TrainBean" />
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>后台操作区</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/calendar.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<script type="text/javascript">
function check()
{
	if(document.form1.train.value==""||document.form1.num.value==""||document.form1.stime.value==""||document.form1.etime.value==""
	||document.form1.sitetype.value==""||document.form1.price.value=="")
	{
		alert("所有项目必须填写！");
		return false;
	}
	
}

</script>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%> 
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
	String method=request.getParameter("method").trim();
	String id=request.getParameter("id");
	String train="";String num="";String stime="";String etime="";String sitetype="";String price="";
	if(method.equals("upTrain")){
		List list=yb.getOneTrain(id);
		train=list.get(1).toString();num=list.get(2).toString();stime=list.get(3).toString();etime=list.get(4).toString();
		sitetype=list.get(5).toString();price=list.get(6).toString();
	}
		
%>
<!-- String train,String num,String stime,String etime,String softprice,String hardprice,String sleepprice -->
<BODY >
	   <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD height=23>信息录入 所有项目必须填写</TD>
		  </TR>
		  <TR align="center" >
			<TD >
		<form name="form1" action="<%=basePath %>Job.shtml" method="post" onsubmit="return check()">
		  <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 >
		  <TBODY>	  
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>车辆路线：<input type=hidden name=method value=<%=method %>><input type=hidden name=id value=<%=id %>></TD>
			<TD align=left><input type=text size=30 maxlength=50 name=train value="<%=train %>" ></TD>
		  </TR>
		  
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>车辆车次：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=num value="<%=num %>" > </TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>开车时间：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=stime value="<%=stime %>" > </TD>
		  </TR>
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>到站时间：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=etime value="<%=etime %>" > </TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>坐位类型：</TD>
			<TD align=left><select name=sitetype>
			<option value="">请选择</option>
			<option value="硬座">硬座</option>
			<option value="软座">软座</option>
			<option value="硬卧">硬卧</option>
			<option value="软卧">软卧</option>
			<option value="包厢">包厢</option>
			</select></TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>票&nbsp;&nbsp;&nbsp;&nbsp;价：</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=price value="<%=price %>" > </TD>
		  </TR>
		 <TR  align="center" bgColor=#ffffff>
			<TD colspan=2 align=center><input type=submit value="提交"></TD>
		  </TR>
		  </TBODY>
	   </TABLE>
		  </form>
		  </TD>
		  </TR>
		  </TBODY>
	   </TABLE>
</BODY>
<%} %>

</HTML>
