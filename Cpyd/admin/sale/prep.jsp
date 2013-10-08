<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="tb" scope="page" class="com.bean.TrainBean" />
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
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
		List list2=tb.getAllPrep();
%>
<BODY>
<TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD height=23>序号</TD>
			<TD>车辆路线</TD>
			<TD>车次</TD>
			<TD>开车时间</TD>
			<TD>到站时间</TD>
			<TD>车票类型</TD>
			<TD>票价</TD>
			<TD>数量</TD>
		
			<TD>订票会员</TD>
			<TD>订票时间</TD>		
			<TD>删除</TD>
		  </TR>
		<%
		if(list2.size()!=0){
			for(int i = 0; i<list2.size(); i++){
				List list3 = (List)list2.get(i);
		%>
		  <TR  align="center" bgColor=#ffffff>
			<TD width="30" id=map><%=i+1 %></TD>
			<TD id=map><%=list3.get(1).toString() %></TD>
			<TD id=map><%=list3.get(2).toString() %></TD>
			<TD id=map><%=list3.get(3).toString() %></TD>
			<TD id=map><%=list3.get(4).toString() %></TD>
			<TD id=map><%=list3.get(5).toString() %></TD>
			<TD id=map><%=list3.get(6).toString() %></TD>
			<TD id=map><%=list3.get(7).toString() %></TD>
			<TD id=map><%=list3.get(9).toString() %></TD>
			<TD id=map><%=list3.get(10).toString() %></TD>
			<TD id=map><a href="<%=basePath %>Job.shtml?method=mdelPrep&id=<%=list3.get(0).toString()%>">删除</a></TD>
		  </TR>
		<%}}%>
		 </TBODY>
	   </TABLE>
</BODY>
<%} %>
</HTML>
