<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.util.*,com.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<jsp:useBean id="sdir" scope="page" class="com.bean.SystemBean"/>
<%
List list = sdir.getSiteInfo();
String str = list.get(0).toString();
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>网站后台管理登录---<%=str %></title>
<style type="text/css">
<!--
.font1 {  font-family: "宋体"; font-size: 12px; line-height: 130%}
a {  font-family: "宋体"; font-size: 12px}
a:link {  font-family: "宋体"; font-size: 12px; color: #CFD1E8; text-decoration: underline}
a:hover {  font-family: "宋体"; font-size: 12px; color: #FFCC00; text-decoration: none}
a:visited {  font-family: "宋体"; font-size: 12px; color: #CFD1E8; text-decoration: underline}
.input {  font-family: "宋体"; font-size: 12px; color: #FFFFFF; border: #4047A4; border-style: solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; background-color: #000077}
-->
</style>
</head>
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
 	//String code=yzm.getCheckCode();
 	String dir=sdir.getDir();
%>
<BODY bgColor=#006599 leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD height=600 align="center"><BR><BR><BR><BR>
	<h2><font color="#FF0000"><%=str %></font></h2>
	<br>
      <TABLE class=tableborder cellSpacing=0 cellPadding=0 width=427 
      align=center border=0>
        <TBODY>
        
        <TR>
          <TD style="FONT-SIZE: 1px; LINE-HEIGHT: 1px" width=3 ></TD>
          <TD style="BORDER-TOP: #666666 1px double" vAlign=top height=162><BR><BR><!--
-->
            <TABLE id=adminlogin cellSpacing=0 cellPadding=0 width="100%" 
            align=center border=1>
        <form action="<%=basePath %>Admin.shtml" name=form1 method=post onSubmit="return checkform(form1)" autocomplete="off">
              <TBODY>
              <TR>
                <TD class=td align=right width="33%">帐&nbsp;&nbsp;&nbsp;&nbsp;号:</TD>
                <TD class=td width="67%"><INPUT 
                  style="BORDER-RIGHT: #0d5c95 1px solid; BORDER-TOP: #0d5c95 1px solid; BACKGROUND: #fff; BORDER-LEFT: #0d5c95 1px solid; WIDTH: 140px; BORDER-BOTTOM: #0d5c95 1px solid; HEIGHT: 21px" 
                  name=username> </TD></TR>
              <TR>
                <TD class=td align=right width="33%">密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type=hidden name=method value="one" /></TD>
                <TD class=td width="67%"><INPUT 
                  style="BORDER-RIGHT: #0d5c95 1px solid; BORDER-TOP: #0d5c95 1px solid; BACKGROUND: #fff; BORDER-LEFT: #0d5c95 1px solid; WIDTH: 140px; BORDER-BOTTOM: #0d5c95 1px solid; HEIGHT: 21px" 
                  type=password size=21 name=password> </TD></TR><!---->
              <!---->
              <TR>
                <TD class=td width="33%">&nbsp;</TD>
                <TD class=td width="67%"><INPUT type=submit  value="登录"> 
              </TD></TR></FORM></TBODY></TABLE><!----></TD>
          <TD style="FONT-SIZE: 1px; LINE-HEIGHT: 1px" width=3 ></TD></TR>
        <TR>
          <TD colSpan=3 
            height=127>&nbsp; 
</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
<script language=Javascript>
	
	form1.username.focus()	

	function checkform(form)
	{
		var flag=true;
		if(form("username").value==""){alert("请输入用户名!");form("username").focus();return false};
		if(form("password").value==""){alert("请输入口令!");form("password").focus();return false};
		return flag;
	}
</script>