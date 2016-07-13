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

for(int i=0;i<items.size();i++){
	CartItem ci = items.get(i);
	String str = request.getParameter("p" + ci.getProductId());
	int count = Integer.parseInt(str);
	ci.setCount(count);
}

%>

<script type="text/JavaScript">
        var duration = 2000;
        var timer = null;
        var endTime = new Date().getTime() + duration;
        function interval() {
            var n = (endTime - new Date().getTime()) / 1000;
            if (n < 0) return;
            document.getElementById("timeout").innerHTML = n.toFixed(0);
            setTimeout(interval, 2);
        }
        function stopJump() {
            clearTimeout(timer);
            document.getElementById("jumphint").style.display = "none";
        }
        window.onload = function() {
            timer = setTimeout("window.location.href='cart.jsp'", duration);
            interval();
        }

      </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<center>修改成功！<br><span id="jumphint">系统在 <span id="timeout"></span> 秒后 将自动跳转到购物车！</span></center>
</body>
</html>