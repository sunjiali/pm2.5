<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>PM2.5实时管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body style="margin:0;overflow:hidden;">

<TABLE border=0 cellPadding=0 cellSpacing=0 height=100% width=100%>

<TR>

<TD align=middle id=frmTitle noWrap vAlign=center>


<IFRAME frameBorder=0 name=menu scrolling=auto src=${pageContext.request.contextPath}/admin/menu.htm style=HEIGHT:100%;VISIBILITY:inherit;WIDTH:200px;Z-INDEX:2></IFRAME>


    <TD bgColor=#eeeeee> 
    
      <TABLE border=0 cellPadding=0 cellSpacing=0 height=100%>
<tr>

          <TD onclick=switchSysBar() style=HEIGHT:100%;>
          
          <font style=COLOR:#555555;CURSOR:hand;FONT-FAMILY:Webdings;FONT-SIZE:9pt> 
            <SPAN id=switchPoint>3</SPAN></font>
        </TABLE>
        
    </TD>
    <TD width=100%>
    
<IFRAME frameBorder=0 id=main name=main scrolling=auto src=${pageContext.request.contextPath}/admin/welcome.jsp style=HEIGHT:100%;VISIBILITY:inherit;WIDTH:100%;Z-INDEX:1></IFRAME>

</td>

</TR>
</TABLE>

</body>
</html>
