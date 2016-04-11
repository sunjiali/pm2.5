<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更新监测站点</title>
    
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
    <h3 align="center">更新监测站点</h3>
    <hr>
   <form action="${pageContext.request.contextPath}/station/update.action" method="post">
 监测站点编号:<input name="station.stationCode" value="<s:property value="station.stationCode"/>"/><br/>
 监测站点名称：<input name="station.positionName" value="<s:property value="station.positionName"/>"/><br/>
  城市名称<input name="station.area" value="<s:property value="station.area"/>"/><br/>
  <input type="submit" value="修改">
  </form>
  </body>
</html>
