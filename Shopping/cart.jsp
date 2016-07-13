<%@page import="java.sql.Timestamp"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@page import="com.bjsxt.shopping.DAO.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>


<%
Cart cart = (Cart)session.getAttribute("cart");
if(cart == null){
	cart = new Cart();
	session.setAttribute("cart", cart);
}

List<CartItem> items = cart.getCartItem();
double totalPrice = cart.getTotalPrice();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>购物车</title>
</head>
<body>
<center>您总共购买了以下商品：</center>
<form method="post" action="cartupdate.jsp">
	<table border="1" align="center">
		
		<tr>
			<td>商品ID</td>
			<td>商品名称</td>
			<td>商品价格</td>
			<td>商品数量</td>
		</tr>
		
			<%
			for(Iterator<CartItem> it = items.iterator();it.hasNext();){
				CartItem ci = it.next();
			%>
			<tr>
				<td><%= ci.getProductId() %></td>
				<td><%= ProductMgr.getInstance().loadById(ci.getProductId()).getName() %></td>
				<td><%= ci.getPrice() %></td>
				<td><input type="text" size=7 name="p<%= ci.getProductId() %>" value="<%= ci.getCount() %>"></td>
			</tr>
			<%
			}
			%>
	</table>
	<center>所有商品共计<%= Math.round(totalPrice * 100) / 100.0 %>元<br>
		<input type="submit" value="修改">
		<input type="button" value="确认订单" onclick="document.location.href='confirm.jsp'">
	</center>
</form>
</body>
</html>



