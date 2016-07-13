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
<link rel="StyleSheet" href="dtree/dtree.css" type="text/css" />
<script type="text/javascript" src="dtree/dtree.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		d = new dTree('d');

		d.add(0,-1,'商品类别(点击类别名称进行相关操作)');
		<%
		for(Iterator<Category> it = categories.iterator();it.hasNext();){
			Category c = it.next();
		%>
		d.add(<%= c.getId() %>,<%= c.getPid() %>,'<%= c.getName() %>' , "categorylistupdate.jsp?pid=<%= c.getId() %>&name=<%= c.getName() %>");
		<%
		}
		%>
		document.write(d);
	</script>
</body>
</html>



