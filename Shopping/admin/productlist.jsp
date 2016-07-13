<%@page import="com.bjsxt.shopping.Product"%>
<%@page import="com.bjsxt.shopping.ProductMgr"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ include file="_sessioncheck.jsp" %>

<%!
public static final int PAGE_SIZE = 4;
%>

<%
int pageNo = 1;
try{
	String strPageNo = request.getParameter("pageno");
	pageNo = Integer.parseInt(strPageNo);
}catch (NumberFormatException e){
	pageNo = 1;
}
if(pageNo<1){
	pageNo = 1;
}

int productCounts = ProductMgr.getInstance().getProductCounts();

//System.out.println(productCounts);

int pageCounts = productCounts % PAGE_SIZE == 0 ? productCounts / PAGE_SIZE:productCounts / PAGE_SIZE + 1;

if(pageNo >= pageCounts){
	pageNo = pageCounts;
}

List<Product> products = ProductMgr.getInstance().getProducts(pageNo,PAGE_SIZE);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��Ʒ�б�</title>
</head>
<body>
	<table align="center" border="1">
		<tr>
			<td>ID</td>	
			<td>��Ʒ����</td>	
			<td>��Ʒ����</td>	
			<td>�г��۸�</td>	
			<td>��Ա�۸�</td>	
			<td>����ʱ��</td>	
			<td>�������</td>	
			<td>����</td>
		</tr>
		<%
		for(Iterator<Product> it = products.iterator();it.hasNext();){
			Product p = it.next();
		%>
		<tr>
			<td><%= p.getId() %></td>	
			<td><%= p.getName() %></td>	
			<td><%= p.getDescr() %></td>	
			<td><%= p.getNormalprice() %></td>	
			<td><%= p.getMemberprice() %></td>	
			<td><%= p.getPdate() %></td>
			<td><%= p.getCategory().getName() %></td>
			<td>
				<a href="productdelete.jsp?id=<%= p.getId() %>"  target="detail">ɾ��</a>&nbsp;&nbsp;
				<a href="productmodify.jsp?id=<%= p.getId() %>"  target="detail">�޸�</a>
				&nbsp;&nbsp;
				<a href="productimageup.jsp?id=<%= p.getId() %>"  target="detail">ͼƬ�ϴ�</a>
			</td>	
		</tr>
		<%
		}
		%>
	</table>
	<center>��<%= pageNo %>ҳ &nbsp;
		<a href="productlist.jsp?pageno=<%= pageNo-1%>">��һҳ</a> &nbsp;
		<a href="productlist.jsp?pageno=<%= pageNo+1%>">��һҳ</a>&nbsp;
			 ��<%= pageCounts %>ҳ
	</center>
</body>
</html>