<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="tb" scope="page" class="com.bean.TrainBean" />
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>打印车票</title>
		<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
}

#ticketcontent {
	height: 220px;
	width: 460px;
	margin: auto;
	position: relative;
	top: 25px;
	border: 1px solid #FBC7C6;
	background-color: #FEEEE7;
}

#content1 {
	position: relative;
	height: 60px;
	width: 400px;
	line-height: 30px;
	margin-left: 25px;
	margin-top: 25px;
}

#content2 {
	height: 200px;
	width: 440px;
	border: 1px solid #F9C8B3;
	position: absolute;
	top: 10px;
	left: 10px;
	background-color: #F9C8B3;
}

.c1 {
	display: block;
	width: 120px;
	text-align: center;
	color: #000;
	font-family: "隶书";
	font-size: 20px;
	float: left;
}

.c2 {
	display: block;
	width: 159px;
	text-align: center;
	color: #000;
	font-family: "隶书";
	font-size: 20px;
	float: left;
}

.c3 {
	font-size: 12px;
	width: 250px;
	display: block;
	font-family: "新宋体", sans-serif, serif;
	line-height: 23px;
	float: left;
	color: #3E3E3E;
}

.c4 {
	display: block;
	float: left;
	font-size: 12px;
	font-family: "新宋体", sans-serif, serif;
	width: 120px;
	text-align: center;
	margin-left: 28px;
	color: #3E3E3E;
}
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
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
		List list2=tb.getAllPrep();
%>

	<body>
		<%
		for(int i = 0; i<list2.size(); i++){
				List list3 = (List)list2.get(i);
		 %>
		 <div id="ticketcontent">
			<div id="content2">
				<div id="content1">

					<span class="c1"><%=list3.get(1).toString().substring(0,list3.get(1).toString().indexOf('-')) %><br>&nbsp;</span>
					<span class="c2"><%=list3.get(2).toString() %>
						<hr> </span>
					<span class="c1"><%=list3.get(1).toString().substring(list3.get(1).toString().indexOf('-')+1) %><br>&nbsp; </span>

				</div>

				<div id="content1">
					<span class="c3"><%=list3.get(3).toString() %> <br> $<%=list3.get(6).toString() %>元 <br>
						限乘当日当日车 在2日内到有效 </span>
					<span class="c4">&nbsp;<br><%=list3.get(5).toString() %></span>
				</div>
			</div>
		 </div> 
		 <br/>
		<%}} %>
	</body>
</html>
