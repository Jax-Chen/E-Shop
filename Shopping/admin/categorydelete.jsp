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

if(strId == null || strId.trim().equals("")){
	response.sendRedirect("index.jsp");
	return;
}

int id = Integer.parseInt(strId);
int pid  = Category.loadPidForId(id);

Category.deleteCategory(id,pid);

%>
	<center>删除成功！

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>删除成功</title>
</head>
<body>

</body>
</html>




