<%@page import="com.bjsxt.shopping.Category"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ include file="_sessioncheck.jsp" %>
<%
List<Category> categories = Category.getCategories();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<table align="center" border="1">
		<tr>
			<td>id</td>	
			<td>类别名称</td>	
			<td>pid</td>	
			<td>几级类别</td>
			<td></td><td></td>
		</tr>
		<%
		for(Iterator<Category> it = categories.iterator();it.hasNext();){
			Category c = it.next();
			String preString = "";
			for(int i=1;i<c.getGrade();i++){
				preString += "----";
			}
		%>
		<tr>
			<td><%= c.getId() %></td>	
			<td><%= preString + c.getName() %></td>	
			<td><%= c.getPid() %></td>	
			<td><%= c.getGrade() %></td>	
			<td><a href="categoryadd.jsp?pid=<%= c.getId() %>" >添加子类别</a></td>	
			<td>
			<%
			if(c.isIsleaf()){
			%>
			<a href="productadd.jsp?categoryid=<%= c.getId() %>&action=category" >在子类别下添加商品</a>	
			<%
			}
			%>
			</td>	
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>