<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="com.bjsxt.shopping.*" %>
<%
User u = (User)session.getAttribute("user");
if(u == null){
	out.println("�����µ�¼��");
%>
<a href="login.jsp">ǰ����½ҳ��</a>
<%
	return;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<a href="usermodify.jsp">�޸���Ϣ</a>
</body>
</html>