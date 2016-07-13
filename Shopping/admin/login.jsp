<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    
<%
request.setCharacterEncoding("GB18030");
boolean usernameErro = false;
boolean passwordErro = false;
String admin = request.getParameter("action");
if(admin != null && admin.equals("login")){
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if(username == null || !username.trim().equals("admin")){
		usernameErro = true;
	}else if(password == null || !password.trim().equals("admin")){
		passwordErro = true;
	}else{
		session.setAttribute("admin", "true");
		response.sendRedirect("index.jsp");
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="keywords" content="js������">
<meta name="description" content="js������">
<title>��ְ�Ƴ���-----��½����</title>
<meta name="keywords" content="��վģ��,��¼ҳ��ģ��,��½ҳ��ģ��,��¼����ģ��,��¼ҳ�����֤">
<meta name="description" content="JS�������ṩ�����ĵ�¼ҳ��ģ���ѧϰ������">
<link rel="shortcut icon" href="resources/images/favicon.ico" />
<link href="resources/style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.i18n.properties-1.0.9.js" ></script>
<script type="text/javascript" src="resources/js/jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/md5.js"></script>
<script type="text/javascript" src="resources/js/page_login.js?lang=zh"></script>
<!--[if IE]>
  <script src="resources/js/html5.js"></script>
<![endif]-->
<!--[if lte IE 6]>
	<script src="resources/js/DD_belatedPNG_0.0.8a-min.js" language="javascript"></script>
	<script>
	  DD_belatedPNG.fix('div,li,a,h3,span,img,.png_bg,ul,input,dd,dt');
	</script>
<![endif]-->
</head>
<body class="loginbody">
<div class="dataEye">
	<div class="loginbox">
		<div class="logo-a">
			<a href="http://www.zjvcc.edu.cn/" title="��ְ�Ƴ���">
				<img src="resources/images/logo-a.gif">
			</a>
		</div>
		<div class="login-content">
			<div class="loginbox-title">
				<h3>��̨��¼</h3>
			</div>
			
			
			<form name="form"  id="signupForm" action="login.jsp"  method="post">
			<input type="hidden" name="action" value="login">
			<div class="login-error"></div>
			<div class="row">
				<label class="field">�û���</label>
				<input type="text" class="input-text-user input-click" name="username" id="email">
				<% 
				if(usernameErro){
				%>
				<font color="red" size="4">* ע���û�������</font>
				<%} %>
			</div>
			<div class="row">
				<label class="field">����</label>
				<input type="password" class="input-text-password input-click" name="password" id="password">
				<% 
				if(passwordErro){
				%>
				<font color="red" size="4">* ע���������</font>
				<%} %>
			</div>
			<div class="row btnArea">
				<!-- <a class="login-btn" id="submit">��¼</a> -->
				<input type="submit" value="��¼" class="login-btn" id="submit"/>
			</div>
			<div class="row tips">
				<a href="forget.jsp" class="link">��������</a>
			</div>
			</form>
		</div>
		<div class="go-regist">
			��û���˺ţ���
			<a href="register.jsp">����ע��</a>
		</div>
	</div>
	
<div id="footer">
	<div class="dblock">
		<div class="inline-block"><img src="resources/images/logo-b.gif"></div>
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
		<img src="resources/images/loading.gif" width="31" height="31">
		</div>
	</div>
</div>
</body>
</html>