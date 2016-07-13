<%@page import="com.bjsxt.shopping.User"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="com.bjsxt.shopping.*" %>
<%
User u = (User)session.getAttribute("user");
if(u == null){
	out.println("请重新登录！");
%>
<a href="login.jsp">前往登陆页面</a>
<%
	return;
}
%>

<%
request.setCharacterEncoding("GB18030");
String action = request.getParameter("action");
if(action != null && action.equals("update")){
	
	String username = request.getParameter("username");
	String password = request.getParameter("password1");
	String phone = request.getParameter("phone");
	String addr = request.getParameter("addr");
	
	u.setUsername(username);
	u.setPassword(password);
	u.setPhone(phone);
	u.setAddr(addr);
	u.setRdate(new java.util.Date(System.currentTimeMillis()));
	u.update();
	
	%>
	<center>修改成功！
	<%
	return;
}

%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商职云超市----个人信息修改页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="keywords" content="注册页面模板,网站注册页面,注册模板页面,网站模板,注册页面表单验证">
<meta name="description" content="JS代码网提供大量的注册页面模板的学习和下载">
<link rel="shortcut icon" href="resourcesRR/images/favicon.ico" />
<link href="resourcesR/style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resourcesR/js/jquery.js"></script>
<script type="text/javascript" src="resourcesR/js/jquery.i18n.properties-1.0.9.js" ></script>
<script type="text/javascript" src="resourcesR/js/jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="resourcesR/js/jquery.validate.js"></script>
<script type="text/javascript" src="resourcesR/js/md5.js"></script>
<script type="text/javascript" src="resourcesR/js/page_regist.js?lang=zh"></script>
<script type="text/javascript" src="script/regcheckdata.js"></script>
<script language="javascript" src="regcheckdata.js"> </script>
<!--[if IE]>
  <script src="resourcesR/js/html5.js"></script>
<![endif]-->
<!--[if lte IE 6]>
	<script src="resourcesR/js/DD_belatedPNG_0.0.8a-min.js" language="javascript"></script>
	<script>
	  DD_belatedPNG.fix('div,li,a,h3,span,img,.png_bg,ul,input,dd,dt');
	</script>
<![endif]-->
</head>
<body class="loginbody">
<div class="dataEye">
	<div class="loginbox registbox">
		<div class="logo-a">
			<a href="login.jsp" title="商职云超市">
				<img src="resourcesR/images/logo-a.gif">
			</a>
		</div>
		<div class="login-content reg-content">
			<div class="loginbox-title">
				<h3>修改会员个人信息</h3>
			</div>
			<form  name="form" action="usermodify.jsp" method="post" 
				onsubmit="return checkdata()">
				<input type="hidden" name="action" value="update">
			<div class="login-error"></div>
			<div class="row">
				<label class="field" for="password"></label>
				用户名：<input type="text" value="<%= u.getUsername() %>" class="input-text-password noPic input-click" name="username" id="password">
			</div>
			<div class="row">
				<label class="field" for="tel"></label>
				联系方式：<input type="text" value="<%= u.getPhone() %>" class="input-text-user noPic input-click" name="phone" id="tel">
			</div>
			<div class="row">
				<label class="field" for="company"></label>
				地址：<input type="text" value="<%= u.getAddr() %>" class="input-text-user noPic input-click" name="addr" id="company">
			</div>

<!-- 			<div class="row">
				<label class="field" for="qq">QQ</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="qq" id="qq">
			</div> -->

			<div class="row btnArea">
				<input  class="login-btn"type="submit" id="submit" value="修改"/>
			</div>
			</form>
		</div>
	</div>
<div id="footer">
	<div class="dblock">
		<div class="inline-block"><img src="resourcesR/images/logo-b.gif"></div>
		<div class="inline-block copyright">
			<p><a href="#">关于我们</a> | <a href="#">微博</a> | <a href="#">隐私政策</a> | <a href="#">人员招聘</a></p>
			<p> Copyright © 2016 商职云超市</p>
		</div>
	</div>
</div>
</div>
<div class="loading">
	<div class="mask">
		<div class="loading-img">
		<img src="resourcesR/images/loading.gif" width="31" height="31">
		</div>
	</div>
</div>
</body>
</html>

