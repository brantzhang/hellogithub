<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
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
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
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

<!-- 订票会员 车次 发车时间 票价 是否有座号 软硬座 卧铺 自取还是送票 付款情况 -->
<BODY >
 <form action="<%=basePath %>Job.shtml?method=upPrep" method=post name=from1 onsubmit="return check()">
		 <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" >
			
			<TD height=23 colspan=2 align=left>预定车票</TD>
		  </TR>
		<%String id=request.getParameter("id");
		List list2=yb.getOnePrep(id);
		if(list2.size()!=0){		%> 
		  <TR  align="center" bgColor=#ffffff>
			<TD id=map align=right widht=50%>路&nbsp;&nbsp;&nbsp;&nbsp;线：<input type=hidden name=id value=<%=id %>></TD>
			<TD id=map align=left><%=list2.get(1).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>车&nbsp;&nbsp;&nbsp;&nbsp;次：</TD>
			<TD id=map align=left><%=list2.get(2).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>发车时间：</TD>
			<TD id=map align=left><%=list2.get(3).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>到达时间：</TD>
			<TD id=map align=left><%=list2.get(4).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>坐位类型：</TD>
			<TD id=map align=left><%=list2.get(5).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>票&nbsp;&nbsp;&nbsp;&nbsp;价：</TD>
			<TD id=map align=left><%=list2.get(6).toString() %></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			<TD id=map align=right>数&nbsp;&nbsp;&nbsp;&nbsp;量：</TD>
			<TD id=map align=left><input type=text size=10 name=numb value=<%=list2.get(7).toString() %>></TD>
		</TR>
		<TR  align="center" bgColor=#ffffff>
			
		</TR>
		<TR><TD align="center" bgColor=#ffffff colspan=2><input type=submit value="提交"></TD>
		</TR>
		<%}%>
		 </TBODY>
	   </TABLE>
</form>
<script type="text/javascript">
function check()
{
	if(document.from1.numb.value=="")
	{
		alert("请输入票数！");
		return false;
	}

	if(isNaN(document.from1.numb.value))
	{
		alert("票数只能为数字！");
		document.from1.numb.focus();
		return false;
	}
}
</script>
</BODY>
</HTML>
