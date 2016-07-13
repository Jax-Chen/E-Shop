<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    
<%
String strId = request.getParameter("id");
if(strId == null || strId.trim().equals("")){
	out.println("选择的产品ID错误！");
	return;
}
int id = Integer.parseInt(strId);
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=GBK">  
        <meta http-equiv="pragma" content="no-cache" />  
        <title>书籍图片上传</title>  
    </head>  
    <body>  
                 上传单个文件
             <form action="${pageContext.request.contextPath}/UploadServlet"
               method="post" enctype="multipart/form-data">
               <input type="hidden" name="id" value="<%= id%>">
                上传文件：
                 <input type="file" name="file">
                 <br>
                 <input type="submit" value="上传">
             </form>
    </body>  
</html>