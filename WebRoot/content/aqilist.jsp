<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'aqilist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
    
        function validate()
        {
            var page = document.getElementsByName("page")[0].value;
                
            if(page > <s:property value="#request.pageBean.totalPage"/>)
            {
                alert("你输入的页数大于最大页数，页面将跳转到首页！");
                
                window.document.location.href = "AqiPageAction";
                
                return false;
            }
            
            return true;
        }
    
    </script>

  </head>
  
  <body>
    <h3 align="center">AQI列表</h3>
    <hr>
     <table>
   <tr>
   <td>AQI列表</td>
   </tr>
   </table>
    <table>
    <c:forEach items="${pageBean.list }" var="a">
  
  <tr>
  <td>${a.id }</td>
   <td>${a.station.stationCode }</td>
  <td>${a.aqi }</td>
  <td>${a.so2 }</td>
  <td>${a.no2 }</td>
  <td>${a.pm10 }</td>
  <td>${a.co }</td>
  <td>${a.o3 }</td>
  <td>${a.o38h }</td>
  <td>${a.pm25 }</td>
  <td>${a.primaryPollutant }</td>
  <td>${a.quality }</td>
  <td>${a.timePoint }</td>
  
    <td>
           <a href="${pageContext.request.contextPath}/aqi/updateInput.action?id=${a.id }">编辑</a>
          </td>
          
          <td>
          <a href="${pageContext.request.contextPath}/aqi/delete.action?id=${a.id}">删除</a>
          </td>
          </tr>
   
   </c:forEach>
   </table>
   
   
   
   <center>
    
        <font size="5">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
        <font size="5">共<font color="red"><s:property value="#request.pageBean.allRows"/></font>条记录</font><br><br>
        
        <s:if test="#request.pageBean.currentPage == 1">
            首页&nbsp;&nbsp;&nbsp;上一页
        </s:if>
        
        <s:else>
            <a href="${pageContext.request.contextPath}/aqi/AqiPageAction.action">首页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/aqi/AqiPageAction.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
        </s:else>
        
        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
            <a href="${pageContext.request.contextPath}/aqi/AqiPageAction.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/aqi/AqiPageAction.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
        </s:if>
        
        <s:else>
            下一页&nbsp;&nbsp;&nbsp;尾页
        </s:else>
    
    </center><br>
    
    <center>
        
        <form action="${pageContext.request.contextPath}/aqi/AqiPageAction.action" onsubmit="return validate();">
            <font size="4">跳转至</font>
            <input type="text" size="2" name="page">页
            <input type="submit" value="跳转">
        </form>
        
    </center>
   
  </body>
</html>
