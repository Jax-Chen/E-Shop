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
	
	int categoryId = Integer.parseInt(request.getParameter("categoryid"));
	int[] idArray = new int[1];
	if(categoryId == 0){
		idArray = null;
	}else{
		idArray[0] = categoryId;
	}
	
	String keyword = request.getParameter("keyword");
	double lowNormalPrice = Double.parseDouble(request.getParameter("lownormalprice"));
	double highNormalPrice = Double.parseDouble(request.getParameter("highnormalprice"));
	double lowMemberPrice = Double.parseDouble(request.getParameter("lowmemberprice"));
	double highMemberPrice = Double.parseDouble(request.getParameter("highmemberprice"));
	
	Timestamp startDate = null;
	String strStartDate = request.getParameter("startdate");
	if(strStartDate == null || strStartDate.trim().equals("")){
		startDate = null;
	}else{
		startDate = Timestamp.valueOf(request.getParameter("startdate"));
	}
	
	Timestamp endDate = null;
	String strEndDate = request.getParameter("startdate");
	if(strEndDate == null || strEndDate.trim().equals("")){
		endDate = null;
	}else{
		endDate = Timestamp.valueOf(request.getParameter("enddate"));
	}
	
	List<Product> productAllCount = ProductMgr.getInstance().findProducts(idArray, keyword, 
																		   lowNormalPrice, highNormalPrice, 
																		   lowMemberPrice, highMemberPrice, 
																		   startDate, endDate);
	int productCount = productAllCount.size();
	
	int pageCount = productCount % PAGE_SIZE == 0? productCount / PAGE_SIZE:productCount / PAGE_SIZE + 1;
	
	if(pageNo > pageCount){
		pageNo = pageCount;
	}
	List<Product> products = ProductMgr.getInstance().findProducts(idArray, keyword, 
																   lowNormalPrice, highNormalPrice, 
																   lowMemberPrice, highMemberPrice, 
																   startDate, endDate, 
																   pageNo, PAGE_SIZE);
	
	
	
	out.println(products.size());
	out.println(productAllCount.size());
	out.println(pageCount);
	
	%>
	<center>搜索结果:共搜索到<%= productCount %>条记录。</center><br>
	<table align="center" border="1">
		<tr>
			<td>ID</td>	
			<td>产品名称</td>	
			<td>产品描述</td>	
			<td>市场价格</td>	
			<td>会员价格</td>	
			<td>创建时间</td>	
			<td>所属类别ID</td>	
			<td>操作</td>
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
				<a href="productdelete.jsp?id=<%= p.getId() %>"  >删除</a>&nbsp;&nbsp;
				<a href="productmodify.jsp?id=<%= p.getId() %>"  >修改</a>
			</td>	
		</tr>
		<%
		}
		%>
	</table>
	<center>第<%= pageNo %>页   <a href="productsearch.jsp?action=<%= action %>&pageno=<%= pageNo-1%>&categoryid=<%= categoryId%>&keyword=<%= keyword%>&lownormalprice=<%= lowNormalPrice%>&highnormalprice=<%= highNormalPrice%>&lowmemberprice=<%= lowMemberPrice%>&highmemberprice=<%= highMemberPrice%>&startdate=<%= strStartDate%>&enddate<%= strEndDate%> ">上一页</a>
		&nbsp;<a href="productsearch.jsp?action=<%= action %>&pageno=<%= pageNo+1%>&categoryid=<%= categoryId%>&keyword=<%= keyword%>&lownormalprice=<%= lowNormalPrice%>&highnormalprice=<%= highNormalPrice%>&lowmemberprice=<%= lowMemberPrice%>&highmemberprice=<%= highMemberPrice%>&startdate=<%= strStartDate%>&enddate<%= strEndDate%> ">下一页</a>
		&nbsp;共<%= pageCount %>页
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




