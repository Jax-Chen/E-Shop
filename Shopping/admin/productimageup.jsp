<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    
<%
String strId = request.getParameter("id");
if(strId == null || strId.trim().equals("")){
	out.println("ѡ��Ĳ�ƷID����");
	return;
}
int id = Integer.parseInt(strId);
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=GBK">  
        <meta http-equiv="pragma" content="no-cache" />  
        <title>�鼮ͼƬ�ϴ�</title>  
    </head>  
    <body>  
                 �ϴ������ļ�
             <form action="${pageContext.request.contextPath}/UploadServlet"
               method="post" enctype="multipart/form-data">
               <input type="hidden" name="id" value="<%= id%>">
                �ϴ��ļ���
                 <input type="file" name="file">
                 <br>
                 <input type="submit" value="�ϴ�">
             </form>
    </body>  
</html>