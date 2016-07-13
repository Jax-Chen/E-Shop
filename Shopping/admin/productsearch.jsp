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
if(action != null && action.trim().equals("complexsearch")){

%>
	<jsp:forward page="complexsearch.jsp"></jsp:forward>
<%
}
if(action != null && action.trim().equals("simplesearch2")){
%>
	<jsp:forward page="simplesearch2.jsp"></jsp:forward>
<%
}
%>
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
	<form name="simple" action="productsearch.jsp" method="post">
	<input type="hidden" name="action" value="search"/>
		<center>简单搜索</center>
		<table border="1">
			<tr>
				<td>产品类别:</td>
				<td>
					<select>
					</select>
				</td>
			</tr>	
			<tr>
				<td>关键字:</td>
				<td><input type="text" name="keyword"></td>
			</tr>
		</table>
		<input type="submit" value="搜索"/>
	</form>
	
	<form name="simple" action="productsearch.jsp" method="post">
	<input type="hidden" name="action" value="simplesearch2"/>
		<center>第二种简单搜索</center>
		<table border="1">
			<tr>
				<td>产品类别:</td>
				<td>
				<%
					for(Iterator<Category> it = categories.iterator();it.hasNext();){
						Category c = it.next();
						String strPre = "";
						for(int i=1;i<c.getGrade();i++){
							strPre += "--";
						}
						if(c.isIsleaf()){
					%>
						<input type="checkbox" name=categoryid value="<%= c.getId()%>"><%= c.getName()
					%>
					<%
						}else{
					%>
						<%= c.getName() %>
					<%
						}
					}
					%>
										
				</td>
			</tr>	
			<tr>
				<td>关键字:</td>
				<td><input type="text" name="keyword"></td>
			</tr>
		</table>
		<input type="submit" value="搜索"/>
	</form>
	
	<form name="complex" action="productsearch.jsp" method="post" onsubmit="checkdata()">
	<input type="hidden" name="action" value="complexsearch"/>
		<center>复杂搜索</center>
		<table border="1">
			<tr>
				<td>产品类别:</td>
				<td>
					<select name="categoryid">
					<option value="0">所有类别</option>
					<%
					for(Iterator<Category> it = categories.iterator();it.hasNext();){
						Category c = it.next();
						String strPre = "";
						for(int i=1;i<c.getGrade();i++){
							strPre += "--";
						}
					%>
					<option value="<%= c.getId() %>">
						<%= strPre + c.getName() %>
					</option>
					<%
					}
					%>
					</select>
				</td>
			</tr>	
			<tr>
				<td>关键字:</td>
				<td><input type="text" name="keyword"></td>
			</tr>
			<tr>
				<td>市场价:</td>
				<td>
					From:<input type="text" name="lownormalprice">
					To:<input type="text" name="highnormalprice">
				</td>
			</tr>
			<tr>
				<td>会员价:</td>
				<td>
					From:<input type="text" name="lowmemberprice">
					To:<input type="text" name="highmemberprice">
				</td>
			</tr>
			<tr>
				<td>上架时间:</td>
				<td>
					From:<input type="text" name="startdate">
					To:<input type="text" name="enddate">
				</td>
			</tr>
		</table>
		<input type="submit" value="搜索"/>
	</form>
</body>
</html>




