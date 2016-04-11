<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>AQI列表</title>
    
	<meta http-equiv="pragma" content="cache">
	<meta http-equiv="cache-control" content="cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css"> 
  </head>
  
  <body>
  ${stationCode }
 

  <div class="container">
   <table class="table table-striped table-bordered table-condensed"
		id="result">
		<thead>
			<tr>
				<th>AQI</th>
				<th>空气质量<br>指数类别</th>
				<th>首要污染物</th>
				<th>PM2.5<br>细颗粒物</th>
				<th>PM10<br>可吸入颗粒物</th>
				<th>CO<br>一氧化碳</th>
				<th>NO2<br>二氧化氮</th>
				<th>O3<br>臭氧1小时平均</th>
				<th>O3<br>臭氧8小时平均</th>
				<th>SO2<br>二氧化硫</th>
				<th>更新时间</th>
				</tr>
		</thead>
		<tbody>
    <c:forEach items="${ list}" var="a">
    
   <tr>
   <td> ${a.aqi }</td>
    <td>${a.quality }</td>
    <td>${a.primaryPollutant }</td>
    <td>${a.pm25 }</td>
   <td> ${a.pm10 }</td>
   <td> ${a.co }</td>
    <td>${a.no2 }</td>
    <td>${a.o3 }</td>
    <td>${a.o38h }</td>
    <td>${a.so2 }</td>
    <td>${a.timePoint }</td>
    </tr>
    </c:forEach>
    </tbody>
    </table>
    </div>
  </body>
</html>
