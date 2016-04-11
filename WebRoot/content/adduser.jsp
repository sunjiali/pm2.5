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
    
    <title>添加用户</title>
    
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
  <h2>添加用户</h2>
  <hr>
  
    <s:form action="user/add.action" method="post">
    <s:textfield name="user.username" label="用户名"></s:textfield>
    <s:password name="user.password" label="密码"></s:password>
    <s:radio list='#{"A":"超级管理员","P":"普通管理员"}' name="user.role"></s:radio>
    <s:submit value="添加"></s:submit>
    </s:form>
    </div>
  </body>
</html>
