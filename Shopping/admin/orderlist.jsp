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

<%!
public static final int PAGE_SIZE = 4;
%>

<%
int pageNo = 1;
int pageCounts =5;
try{
	String strpageCounts = request.getParameter("pagecounts");
	pageCounts = Integer.parseInt(strpageCounts);
}catch (NumberFormatException e){
	pageCounts = 5;
}

try{
	String strPageNo = request.getParameter("pageno");
	pageNo = Integer.parseInt(strPageNo);
}catch (NumberFormatException e){
	pageNo = 1;
}
if(pageNo<1){
	pageNo = 1;
}

if(pageNo >= pageCounts){
	pageNo = pageCounts;
}

List<SalesOrder> orders = new ArrayList<SalesOrder>();

pageCounts = OrderMgr.getInstance().getOrders(orders,pageNo,PAGE_SIZE);


%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�����б�</title>
</head>
<body>
	<table align="center" border="1">
		<tr>
			<td>����ID</td>	
			<td>�ͻ�����</td>	
			<td>�ͻ���ϵ��ʽ</td>
			<td>�ͻ���ַ</td>	
			<td>�µ�ʱ��</td>	
			<td>����״̬</td>	
			<td align="center">��ز���</td>
		</tr>
		<%
		String status = "";
		for(Iterator<SalesOrder> it = orders.iterator();it.hasNext();){
			SalesOrder so = it.next();
			if(so.getStatus()==0){
				status = "����δ����";
			}
			if(so.getStatus()==-1){
				status = "����������";
			}
			if(so.getStatus()==1){
				status = "���������";
			}
			
		%>
		<tr>
			<td><%= so.getId() %></td>	
			<td><%= so.getUser().getUsername() %></td>	
			<td><%= so.getUser().getPhone() %></td>	
			<td><%= so.getAddr() %></td>	
			<td><%= so.getoDate() %></td>	
			<td><%= status %></td>
			<td>
				<a href="orderdetailshow.jsp?id=<%= so.getId() %>"  target="detail">������ϸ</a>&nbsp;&nbsp;
				<a href="ordermodify.jsp?id=<%= so.getId() %>"  target="detail">�޸Ķ���״̬</a>
			</td>	
		</tr>
		<%
		}
		%>
	</table>
	<center>��<%= pageNo %>ҳ &nbsp;
		<a href="orderlist.jsp?pageno=<%= pageNo-1%>&pagecounts=<%= pageCounts%>">��һҳ</a> &nbsp;
		<a href="orderlist.jsp?pageno=<%= pageNo+1%>&pagecounts=<%= pageCounts%>">��һҳ</a>&nbsp;
			 ��<%= pageCounts %>ҳ
	</center>
</body>
</html>