<%@page import="com.bjsxt.shopping.Category"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ include file="_sessioncheck.jsp" %>
<%
request.setCharacterEncoding("GB18030");

String strPid = request.getParameter("pid");
int pid = 0;
if(strPid != null && !strPid.trim().equals("")){
	pid = Integer.parseInt(strPid);
}

String action = request.getParameter("action");
if(action != null && action.trim().equals("add")){
	
	String name = request.getParameter("name");
	String descr = request.getParameter("descr");
	
	if(name == null || name.trim().equals("")){
		out.println("类别名称不能为空！");
		return;
	}
	
	if(pid == 0){
		Category.addTopCategory(name,descr);
	}else{
		Category.addChild(pid,name,descr);
	}
	
	%>
	<center>添加成功！
	<%
	return;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<form name="form" action="categoryadd.jsp" method="post">
	<input type="hidden" name="action" value="add"/>
	<input type="hidden" name="pid" value="<%= pid %>">
		<center>添加类别</center>
		<table border="1">
			<tr>
				<td>类别名称:</td>
				<td><input type="text" name="name"/></td>
			</tr>	
			<tr>
				<td>类别描述:</td>
				<td><textarea cols="40" rows="8" name="descr"></textarea></td>
			</tr>
		</table>
		<input type="submit" value="提交"/>
	</form>
</body>
</html>




