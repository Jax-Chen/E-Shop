<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*" %>
<%@ include file="_sessioncheck.jsp" %>
<%
request.setCharacterEncoding("gbk");
String strPid = request.getParameter("pid");
int pid = Integer.parseInt(strPid);
String name = Category.loadNameForId(pid);
Category c = Category.loadCategoryById(pid);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>

<body>
<frame target="detail">
	<form action="categoryadd.jsp" method="post" id=ttt target=main>
	<input type="hidden" name="pid" value="<%= pid %>">
		<table border="1">
			<tr>
				<td>������ƣ�</td>
				<td><%= name %></td>
				<td><input type="submit" value="��������"/></td>
				<%
				if(c.isIsleaf()){
				%>
				<td><a href="categorydelete.jsp?id=<%= pid %>">ɾ�������</a></td>
				<%
				}
				%>
				<td><a href="categorymodify.jsp?id=<%= pid %>">�޸ĸ����</a></td>
			</tr>
			<tr>
			
			</tr>
		</table>
	</form>
	</frame>
</body>
</html>