<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
String admin = (String)session.getAttribute("admin");
if(admin == null || !admin.equals("true")){
	response.sendRedirect("login.jsp");
}
%>