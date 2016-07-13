<%@page import="java.util.Iterator"%>
<%@page import="com.bjsxt.shopping.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="com.bjsxt.shopping.Cart"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    
<%
request.setCharacterEncoding("GB18030");

User u = (User)session.getAttribute("user");
if(u == null){
	out.println("您还未登陆，登陆后可享受会员价！<a href='confimusenormal.jsp'>继续下单</a>");
	out.println("<br><a href='register.jsp'>注册</a>        <a href='login.jsp'>登陆</a>");
}
Cart cart = (Cart)session.getAttribute("cart");
if(cart == null){
	cart = new Cart();
	session.setAttribute("cart", cart);
}

List<CartItem> items = cart.getCartItem();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<center>订单详情</center>
		<tr>
			<td>商品ID</td>
			<td>商品名称</td>
			<td>商品价格(<%= (u==null?"市场价":"会员价") %>)</td>
			<td>商品数量</td>
		</tr>
		
			<%
			for(Iterator<CartItem> it = items.iterator();it.hasNext();){
				CartItem ci = it.next();
				Product p = ProductMgr.getInstance().loadById(ci.getProductId());
			%>
			<tr>
				<td><%= ci.getProductId() %></td>
				<td><%= p.getName() %></td>
				<td><%= (u==null?p.getNormalprice():p.getMemberprice()) %></td>
				<td><%= ci.getCount() %></td>
			</tr>
			<%
			}
			%>
	</table>
	<center>所有商品共计<%= Math.round(cart.getTotalPrice() * 100) / 100.0 %>元<br><br><br>
	<form action="order.jsp" method="post">
			<%
			if(u != null){
			%>
			欢迎您  <%= u.getUsername() %>,请确认您的收货地址
			<%
			}
			%>
			<br><br><br>送货地址：
			<textarea name="addr"><%= (u==null?"":u.getAddr()) %></textarea>
			<br><br><input type="submit" value="下单">
	</form>
	</center>
</body>
</html>


