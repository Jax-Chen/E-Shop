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

int categoryId = -1;
String action = request.getParameter("action");
if(action != null && action.trim().equals("category")){
	categoryId = Integer.parseInt(request.getParameter("categoryid"));
}
List<Category> categories = Category.getCategories();
if(action != null && action.trim().equals("add")){
	
	String name = request.getParameter("name");
	String descr = request.getParameter("descr");
	double normalPrice = Double.parseDouble(request.getParameter("normalprice"));
	double memberPrice = Double.parseDouble(request.getParameter("memberprice"));
	categoryId = Integer.parseInt(request.getParameter("categoryid"));
	System.out.println(categoryId);
	
	Product p = new Product();
	p.setId(-1);
	p.setName(name);
	p.setDescr(descr);
	p.setNormalprice(normalPrice);
	p.setMemberprice(memberPrice);
	p.setPdate(new Timestamp(System.currentTimeMillis()));
	p.setCategoryid(categoryId);
	
	Category c = Category.loadCategoryById(categoryId);
	if(!c.isIsleaf()){
		out.println("��Ҷ�ӽڵ㲻���������Ʒ��");
		return;
	}
	
	if(!ProductMgr.getInstance().addProduct(p)){
		out.println("���ʧ��");
		return;
	}
	
	if(name == null || name.trim().equals("")){
		out.println("��Ʒ���Ʋ���Ϊ�գ�");
		return;
	}
	
	/* if(pid == 0){
		Category.addTopCategory(name,descr);
	}else{
		Category.addChild(pid,name,descr);
	} */
	
	%>
	<center>��ӳɹ���
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
	<form name="form" action="productadd.jsp" method="post">
	<input type="hidden" name="action" value="add"/>
		<center>��Ӳ�Ʒ</center>
		<table border="1">
			<tr>
				<td>��Ʒ����:</td>
				<td><input type="text" name="name"/></td>
			</tr>	
			<tr>
				<td>��Ʒ����:</td>
				<td><textarea cols="19" rows="3" name="descr"></textarea></td>
			</tr>
			<tr>
				<td>�г��۸�:</td>
				<td><input type="text" name="normalprice"/></td>
			</tr>	
			<tr>
				<td>��Ա�۸�:</td>
				<td><input type="text" name="memberprice"/></td>
			</tr>	
			<tr>
				<td>�������</td>
				<td>
				<select name="categoryid">
					<option value="0">�������</option>
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
					<option value="<%= c.getId() %>" <%= c.getId() == categoryId ? "selected":""%>>
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
		<input type="submit" value="�ύ"/>
	</form>
</body>
</html>




