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
	out.println("����δ��½����½������ܻ�Ա�ۣ�<a href='confimusenormal.jsp'>�����µ�</a>");
	out.println("<br><a href='register.jsp'>ע��</a>        <a href='login.jsp'>��½</a>");
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
		<center>��������</center>
		<tr>
			<td>��ƷID</td>
			<td>��Ʒ����</td>
			<td>��Ʒ�۸�(<%= (u==null?"�г���":"��Ա��") %>)</td>
			<td>��Ʒ����</td>
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
	<center>������Ʒ����<%= Math.round(cart.getTotalPrice() * 100) / 100.0 %>Ԫ<br><br><br>
	<form action="order.jsp" method="post">
			<%
			if(u != null){
			%>
			��ӭ��  <%= u.getUsername() %>,��ȷ�������ջ���ַ
			<%
			}
			%>
			<br><br><br>�ͻ���ַ��
			<textarea name="addr"><%= (u==null?"":u.getAddr()) %></textarea>
			<br><br><input type="submit" value="�µ�">
	</form>
	</center>
</body>
</html>


