<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ include file="_sessioncheck.jsp" %>
<%
List<User> users = User.getUsers();

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
			<td>ID</td>	
			<td>�û���</td>	
			<td>����</td>	
			<td>��ϵ��ʽ</td>	
			<td>��ϵ��ַ</td>	
			<td>����ʱ��</td>	
			<td>����</td>
		</tr>
		<%
		for(Iterator<User> it = users.iterator();it.hasNext();){
			User u = it.next();
		%>
		<tr>
			<td><%= u.getId() %></td>	
			<td><%= u.getUsername() %></td>	
			<td><%= u.getPassword() %></td>	
			<td><%= u.getPhone() %></td>	
			<td><%= u.getAddr() %></td>	
			<td><%= u.getRdate() %></td>
			<td><a href="deleteUser.jsp?id=<%= u.getId() %>" target="detail" >ɾ��</a></td>	
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>