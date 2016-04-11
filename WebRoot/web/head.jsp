<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'head.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/application.css">
	

  </head>
  
  <body>
    <div class="navbar-inner">
          <a type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collaps">
            <span class="icon-bar"/>
            <span class="icon-bar"/>
            <span class="icon-bar"/>
          </a>
          <a class="brand" href="/"/>
          <div class="nav-collapse navbar-inverse-collaps collapse" style="height: 0px;">
            <ul class="nav">
              <li style="margin-top: 5px;">
                <a href="${pageContext.request.contextPath}/">首页</a>
              </li>
              <li style="margin-top: 5px;">
                <a href="${pageContext.request.contextPath}/web/rank.jsp">排行榜</a>
              </li>
            
             
              <li style="margin-top: 5px;">
                <a href="/about">关于</a>
              </li>
            </ul>
          </div> 
        </div>
  </body>
</html>
