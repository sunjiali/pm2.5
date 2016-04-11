<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>更新用户</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
${record.password}
<div align="center">
	<form action="${pageContext.request.contextPath}/user/update.action" method="post">
		<input type="hidden" name="user.id"
			value="<s:property value='user.id'/>" /> 用户名:<input 
			name="user.username" value="<s:property value='user.username'/>" /><br>
		密码:<input type="password" name="user.password" 
			value="<s:property value='user.password'/>" /><br> 角色：
		<s:radio list='#{"A":"超级管理员","P":"普通管理员"}' name="user.role" 
			value="<s:property value='user.role' />"></s:radio>
		<br> <input type="submit" value="更新" />
		<s:debug></s:debug>
	</form>
	</div>
	
	
</body>
</html>
