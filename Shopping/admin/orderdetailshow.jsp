<%@page import="com.bjsxt.shopping.SalesOrder"%>
<%@page import="com.bjsxt.shopping.Product"%>
<%@page import="com.bjsxt.shopping.ProductMgr"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ include file="_sessioncheck.jsp" %>

<%
int id = Integer.parseInt(request.getParameter("id"));
SalesOrder so = OrderMgr.getInstance().loadById(id);

SalesItem si = so.getItem();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>订单详情</title>
</head>
<body>
<center>
订单明细：
	<table border="1">
		<tr>
			<td>产品ID</td>
			<td>购买单价</td>
			<td>购买数量</td>
			<td>订单ID</td>
		</tr>
		<tr>
			<td><%= si.getProduct().getId() %></td>
			<td><%= si.getUnitPrice() %></td>
			<td><%= si.getpCount() %></td>
			<td><%= si.getOrder().getId() %></td>
		</tr>
	</table>
</center>
</body>
</html>










