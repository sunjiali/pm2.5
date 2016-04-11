<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>PM25���а�</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery.js"></script>
		<!-- �����������ݻ�ȡ -->
<script type="text/javascript">
    $(document).ready(function() {
        $.ajax({
            //����ʽΪget
            type:"GET",
            //json�ļ�λ��
            url:"http://www.pm25.in/api/querys/aqi_ranking.json?token=vvnKqBwFZ8wgqxpjpmJm",
            //url:"http://pm25.in/api/querys/pm2_5.json?city=shanghai&token=M5ZpvmvTpqkKiiq36SiY",
            //�������ݸ�ʽΪjson
            dataType: "jsonp",
            jsonp: "callback",
            //����ɹ���ɺ�Ҫִ�еķ���
            success: function(data){
                //ʹ��$.each�����������ص�����date,���뵽idΪ#result��
                $.each(data,function(i,item){
                    var content="<tr>"+"<td style='border-left: none;'>"+item.area+"</td>"+"<td>"+item.pm2_5+"</td>"+"<td>"+item.aqi+"</td>"+"<td>"+item.quality+"</td>"+"</tr>";
                    $("#result").append(content);
                    
                })              
            }
        })
    });
</script>
	</head>
	<body>
		<table id="result" cellspacing="0" cellpadding="0" width="250" height="266" align="center">
                <tbody><tr>
                    <td style="background: #FEF8DF; border-left: none;"><strong>����</strong></td>
                    <td style="background: #FEF8DF;"><strong>PM2.5</strong></td>
                    <td style="background: #FEF8DF;"><strong>AQI</strong></td>
                    <td style="background: #FEF8DF;"><strong>��������</strong></td>
                </tr>
            </tbody>
    </table> 
	</body>
</html>
  