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
	<center>ע��ɹ���
	<%
	return;
}

%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>��ְ�Ƴ���----ע��ҳ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="keywords" content="ע��ҳ��ģ��,��վע��ҳ��,ע��ģ��ҳ��,��վģ��,ע��ҳ�����֤">
<meta name="description" content="JS�������ṩ������ע��ҳ��ģ���ѧϰ������">
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
			<a href="login.jsp" title="��ְ�Ƴ���">
				<img src="resourcesR/images/logo-a.gif">
			</a>
		</div>
		<div class="login-content reg-content">
			<div class="loginbox-title">
				<h3>ע��</h3>
			</div>
			<form  name="form" action="register.jsp" method="post" 
				onsubmit="return checkdata()">
				<input type="hidden" name="action" value="register">
			<div class="login-error"></div>
			<div class="row">
				<label class="field" for="email">ע������</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="email" id="email">
			</div>
			<div class="row">
				<label class="field" for="password">�û���</label>
				<input type="text" value="" class="input-text-password noPic input-click" name="username" id="password">
			</div>
			<div class="row">
				<label class="field" for="password">����</label>
				<input type="password" value="" class="input-text-password noPic input-click" name="password1" id="qq">
			</div>
			<div class="row">
				<label class="field" for="passwordAgain">ȷ������</label>
				<input type="password" value="" class="input-text-password noPic input-click" name="password2" id="passwordAgain">
			</div>
			<div class="row">
				<label class="field" for="contact">��ϵ��</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="contact" id="contact">
			</div>
			<div class="row">
				<label class="field" for="tel">��ϵ��ʽ</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="phone" id="tel">
			</div>
			<div class="row">
				<label class="field" for="company">��ַ</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="addr" id="company">
			</div>

<!-- 			<div class="row">
				<label class="field" for="qq">QQ</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="qq" id="qq">
			</div> -->
			<div class="row tips">
				<input type="checkbox" id="checkBox">
				<label>
				�����Ķ���ͬ��
				<a href="#" target="_blank">��˽���ߡ���������</a>
				</label>
			</div>
			<div class="row btnArea">
				<input  class="login-btn"type="submit" id="submit" value="ע��"/>
			</div>
			</form>
		</div>
		<div class="go-regist">
			�����ʺ�,��<a href="login.jsp" class="link">��¼</a>
		</div>
	</div>
<div id="footer">
	<div class="dblock">
		<div class="inline-block"><img src="resourcesR/images/logo-b.gif"></div>
		<div class="inline-block copyright">
			<p><a href="#">��������</a> | <a href="#">΢��</a> | <a href="#">��˽����</a> | <a href="#">��Ա��Ƹ</a></p>
			<p> Copyright �0�8 2016 ��ְ�Ƴ���</p>
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

