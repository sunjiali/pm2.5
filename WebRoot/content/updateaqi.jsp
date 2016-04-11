<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateaqi.jsp' starting page</title>
    
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
    <h3 align="center">更新AQI</h3>
    <hr>
   <form action="${pageContext.request.contextPath}/aqi/update.action" method="post">
 AQI:<input name="aqi.aqi" value="<s:property value="aqi.aqi"/>"/><br/>
 so2：<input name="aqi.so2" value="<s:property value="aqi.so2"/>"/><br/>
  no2:<input name="aqi.no2" value="<s:property value="aqi.no2"/>"/><br/>
  pm10:<input name="aqi.pm10" value="<s:property value="aqi.pm10"/>"/><br/>
  城市名称<input name="aqi.co" value="<s:property value="aqi.co"/>"/><br/>
  o3<input name="aqi.o3" value="<s:property value="aqi.o3"/>"/><br/>
  o38h<input name="aqi.o38h" value="<s:property value="aqi.o38h"/>"/><br/>
  pm25:<input name="aqi.pm25" value="<s:property value="aqi.pm25"/>"/><br/>
  主要污染物：<input name="aqi.primaryPollutant" value="<s:property value="aqi.primaryPollutant"/>"/><br/>
  空气质量：<input name="aqi.quality" value="<s:property value="aqi.quality"/>"/><br/>
  更新时间：<input name="aqi.timePoint" value="<s:property value="aqi.timePoint"/>"/><br/>
  监测站点编码：<input name="aqi.stationCode" value="<s:property value="aqi.station.stationCode"/>"/><br/>
  <input type="submit" value="修改">
  </form>
  </body>
</html>
