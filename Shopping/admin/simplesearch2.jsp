<%@page import="java.sql.Timestamp"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@page import="com.bjsxt.shopping.DAO.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ include file="_sessioncheck.jsp" %>
<%!
private static final int PAGE_SIZE = 4;
%>
<%
List<Category> categories = Category.getCategories();
%>
<%
request.setCharacterEncoding("GB18030");

int pageNo = 1;
String strPageNo =request.getParameter("pageno");
try{
	pageNo = Integer.parseInt(strPageNo);
}catch(NumberFormatException e){
	pageNo = 1;
}

if(pageNo < 1){
	pageNo = 1;
}

String action = request.getParameter("action");
	
String[] strCategoryIds = request.getParameterValues("categoryid");
int[] categoryId = new int[strCategoryIds.length];
for(int i=0;i<strCategoryIds.length;i++){
	categoryId[i] = Integer.parseInt(strCategoryIds[i]);
}
String strCategoryId = "";
for(int i=0;i<strCategoryIds.length;i++){
	strCategoryId += "&categoryid=" + strCategoryIds[i];
	System.out.println(strCategoryId);
}
	
	String keyword = request.getParameter("keyword");
	
	List<Product> productAllCount = ProductMgr.getInstance().findProducts(categoryId, keyword, 
																		   -1, -1, 
																		   -1, -1, 
																		   null, null);
	int productCount = productAllCount.size();
	
	int pageCount = productCount % PAGE_SIZE == 0? productCount / PAGE_SIZE:productCount / PAGE_SIZE + 1;
	
	if(pageNo > pageCount){
		pageNo = pageCount;
	}
	List<Product> products = ProductMgr.getInstance().findProducts(categoryId, keyword, 
																   -1, -1, 
																   -1, -1, 
																   null, null, 
																   pageNo, PAGE_SIZE);
	
	
	
	out.println(products.size());
	out.println(productAllCount.size());
	out.println(pageCount);
	
	%>
	<center>�������:��������<%= productCount %>����¼��</center><br>
	<table align="center" border="1">
		<tr>
			<td>ID</td>	
			<td>��Ʒ����</td>	
			<td>��Ʒ����</td>	
			<td>�г��۸�</td>	
			<td>��Ա�۸�</td>	
			<td>����ʱ��</td>	
			<td>�������ID</td>	
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
			<td><%= p.getCategoryid() %></td>
			<td>
				<a href="productdelete.jsp?id=<%= p.getId() %>"  >ɾ��</a>&nbsp;&nbsp;
				<a href="productmodify.jsp?id=<%= p.getId() %>"  >�޸�</a>
			</td>	
		</tr>
		<%
		}
		%>
	</table>
	<center>��<%= pageNo %>ҳ   <a href="productsearch.jsp?action=<%= action %>&pageno=<%= pageNo-1%><%= strCategoryId %>&keyword=<%= keyword%>">��һҳ</a>
		&nbsp;<a href="productsearch.jsp?action=<%= action %>&pageno=<%= pageNo+1%><%= strCategoryId %>&keyword=<%= keyword%> ">��һҳ</a>
		&nbsp;��<%= pageCount %>ҳ
	</center>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<script type="text/javascript">
<!--
function checkdata(){
	with(document.forms["complex"]){
		if(lownormalprice.value == null || lownormalprice.value == ""){
			lownormalprice.value = -1;
		}
		if(highnormalprice.value == null || highnormalprice.value == ""){
			highnormalprice.value = -1;
		}
		if(lowmemberprice.value == null || lowmemberprice.value == ""){
			lowmemberprice.value = -1;
		}
		if(highmemberprice.value == null || highmemberprice.value == ""){
			highmemberprice.value = -1;
		}
	}
}
-->
</script>
</head>
<body>
	
</body>
</html>




