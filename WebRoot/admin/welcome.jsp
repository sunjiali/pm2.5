<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
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

<title>My JSP 'welcome.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/style.css" type="text/css" rel="stylesheet">
<style>
td {
	font-size: 20px;
	font-family: 微软雅黑, 黑体, 宋体;
	line-height: 20px;
}

a {
	color: #ff6600;
}
</style>
</head>

<body>
	<table border="0" cellpadding="0" cellspacing="0" width="100%"
		height="100%" id="table1">
		<tr>
			<td align=center valign=top style="padding-top:100;"><br>
			<br> 欢迎您!使用PM2.5实时管理后台</td>
		</tr>
	</table>

</body>
</body>
</html>
