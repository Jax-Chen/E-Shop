<%@page import="com.bjsxt.shopping.SalesOrder"%>
<%@page import="com.bjsxt.shopping.Product"%>
<%@page import="com.bjsxt.shopping.ProductMgr"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ include file="_sessioncheck.jsp" %>

<%
int id = Integer.parseInt(request.getParameter("id"));
SalesOrder so = OrderMgr.getInstance().loadById(id);
int status = so.getStatus();

String action = request.getParameter("action");
if(action !=null && action.trim().equals("modify")){
	String strStatus = request.getParameter("status");
	status = Integer.parseInt(strStatus);
	so.setStatus(status);
	so.updateStatus(so);
	
	out.println("<center>�ύ�ɹ���</center>");
%>
<script type="text/javascript">
	parent.main.location.reload();
	</script>

<%
	return;
}

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�޸Ķ���</title>
</head>
<body>
<center>
�޸Ķ���״̬��
<form action="ordermodify.jsp" method="post">
	<input type="hidden" name="action" value="modify">
	<input type="hidden" name="id" value="<%= id %>" >
	<select name="status">
		<option value="-1" <%=(status==-1?"selected":"") %>>��������</option>
		<option value="0" <%=(status==0?"selected":"") %>>����δ����</option>
		<option value="1" <%=(status==1?"selected":"") %>>�������</option>
	</select> 
	<input type="submit" value="�ύ">
</form>
</center>
</body>
</html>










