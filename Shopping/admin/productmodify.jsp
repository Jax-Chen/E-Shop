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
<%
request.setCharacterEncoding("GB18030");

Product p = new Product();
int id = 0;
String strId = request.getParameter("id");
if(strId != null && !strId.trim().equals("")){
	id = Integer.parseInt(strId);
	p = ProductMgr.getInstance().loadById(id);
	System.out.println(p.getCategoryid());
}


int categoryId = -1;
String action = request.getParameter("action");
/* if(action != null && action.trim().equals("category")){
	categoryId = Integer.parseInt(request.getParameter("categoryid"));
} */
List<Category> categories = Category.getCategories(); 

if(action != null && action.trim().equals("modify")){
	
	String name = request.getParameter("name");
	String descr = request.getParameter("descr");
	double normalPrice = Double.parseDouble(request.getParameter("normalprice"));
	double memberPrice = Double.parseDouble(request.getParameter("memberprice"));
	categoryId = Integer.parseInt(request.getParameter("categoryid"));
	
	System.out.println("名字：" + name);
	p.setName(name);
	p.setDescr(descr);
	p.setNormalprice(normalPrice);
	p.setMemberprice(memberPrice);
	p.setCategoryid(categoryId);
	
	if(!ProductMgr.getInstance().updateProduct(p)){
		out.println("修改失败！");
		return;
	}
	
	Category c = Category.loadCategoryById(categoryId);
	if(!c.isIsleaf()){
		out.println("非叶子节点不允许添加商品！");
		return;
	}
	
	if(name == null || name.trim().equals("")){
		out.println("产品名称不能为空！");
		return;
	}
	
	%>
	<script type="text/javascript">
		window.parent.main.location.reload();
	</script>
	<center>修改成功！
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
	<form name="form" action="productmodify.jsp" method="post">
	<input type="hidden" name="action" value="modify"/>
	<input type="hidden" name="id" value="<%= id%>"/>
		<center>修改产品</center>
		<table border="1">
			<tr>
				<td>产品名称:</td>
				<td><input type="text" name="name" value="<%= p.getName() %>"/></td>
			</tr>	
			<tr>
				<td>产品描述:</td>
				<td><textarea cols="19" rows="3" name="descr"><%= p.getDescr() %></textarea></td>
			</tr>
			<tr>
				<td>市场价格:</td>
				<td><input type="text" name="normalprice" value="<%= p.getNormalprice() %>"/></td>
			</tr>	
			<tr>
				<td>会员价格:</td>
				<td><input type="text" name="memberprice" value="<%= p.getMemberprice() %>"/></td>
			</tr>	
			<tr>
				<td>所属类别：</td>
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
					<%
					if(c.isIsleaf()){
					%>
					<option value="<%= c.getId() %>" <%= c.getId() == p.getCategoryid() ? "selected":""%>>
						<%= strPre + c.getName() %>
					</option>
					<%
					}
					%>
					<%
					}
					%>
				</select>
				</td>	
			</tr>	
		</table>
		<input type="submit" value="修改"/>
	</form>
</body>
</html>




