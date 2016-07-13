<%@page import="com.bjsxt.shopping.User"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
request.setCharacterEncoding("GB18030");
String action = request.getParameter("action");
if(action != null && action.equals("register")){
	
	String username = request.getParameter("username");
	String password = request.getParameter("password1");
	String phone = request.getParameter("phone");
	String addr = request.getParameter("addr");
	
	User u = new User();
	u.setUsername(username);
	u.setPassword(password);
	u.setPhone(phone);
	u.setAddr(addr);
	u.setRdate(new java.util.Date(System.currentTimeMillis()));
	u.save();
	
	%>
	<center>注册成功！
	<%
	return;
}

%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商职云超市----注册页面</title>
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
				<h3>注册</h3>
			</div>
			<form  name="form" action="register.jsp" method="post" 
				onsubmit="return checkdata()">
				<input type="hidden" name="action" value="register">
			<div class="login-error"></div>
			<div class="row">
				<label class="field" for="email">注册邮箱</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="email" id="email">
			</div>
			<div class="row">
				<label class="field" for="password">用户名</label>
				<input type="text" value="" class="input-text-password noPic input-click" name="username" id="password">
			</div>
			<div class="row">
				<label class="field" for="password">密码</label>
				<input type="password" value="" class="input-text-password noPic input-click" name="password1" id="qq">
			</div>
			<div class="row">
				<label class="field" for="passwordAgain">确认密码</label>
				<input type="password" value="" class="input-text-password noPic input-click" name="password2" id="passwordAgain">
			</div>
			<div class="row">
				<label class="field" for="contact">联系人</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="contact" id="contact">
			</div>
			<div class="row">
				<label class="field" for="tel">联系方式</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="phone" id="tel">
			</div>
			<div class="row">
				<label class="field" for="company">地址</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="addr" id="company">
			</div>

<!-- 			<div class="row">
				<label class="field" for="qq">QQ</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="qq" id="qq">
			</div> -->
			<div class="row tips">
				<input type="checkbox" id="checkBox">
				<label>
				我已阅读并同意
				<a href="#" target="_blank">隐私政策、服务条款</a>
				</label>
			</div>
			<div class="row btnArea">
				<input  class="login-btn"type="submit" id="submit" value="注册"/>
			</div>
			</form>
		</div>
		<div class="go-regist">
			已有帐号,请<a href="login.jsp" class="link">登录</a>
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

