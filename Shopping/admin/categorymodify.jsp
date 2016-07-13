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

String strId = request.getParameter("id");
int id = Integer.parseInt(strId);

String name = Category.loadNameForId(id);
String descr = Category.loadDescrForId(id);

String action = request.getParameter("action");
if(action != null && action.equals("modify")){
	
	name = request.getParameter("name");
	descr = request.getParameter("descr");
	
	Category.modifyCategory(id,name,descr);
	
	%>
	<center>修改成功！
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
	<form name="form" action="categorymodify.jsp" method="post">
	<input type="hidden" name="action" value="modify">
	<input type="hidden" name="id" value="<%= id %>">
		<center>修改类别</center>
		<table border="1">
			<tr>
				<td>类别名称:</td>
				<td><input type="text" name="name" value=<%= name %>></td>
			</tr>	
			<tr>
				<td>类别描述:</td>
				<td><textarea cols="40" rows="8" name="descr"><%= descr %></textarea></td>
			</tr>
		</table>
		<input type="submit" value="修改"/>
	</form>
</body>
</html>




