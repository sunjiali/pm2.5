<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����û�</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	body {
	z-index: inherit;
}
	</style>

  </head>
  
  <body>
  <div align="center">
  <h2>����û�</h2>
  <hr>
  
    <s:form action="user/add.action" method="post">
    <s:textfield name="user.username" label="�û���"></s:textfield>
    <s:password name="user.password" label="����"></s:password>
    <s:radio list='#{"A":"��������Ա","P":"��ͨ����Ա"}' name="user.role"></s:radio>
    <s:submit value="���"></s:submit>
    </s:form>
    </div>
  </body>
</html>
