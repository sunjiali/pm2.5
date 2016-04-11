<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<title>${area }PM2.5及空气质量指数(AQI)</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="${pageContext.request.contextPath}/assets/application.css"
	media="all" rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/highcharts.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/exporting.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/data.js"></script>
 <link href="${pageContext.request.contextPath}/css/common.css"
	 rel="stylesheet" type="text/css" />
 <link href="${pageContext.request.contextPath}/css/tinyscrollbar.css"
	 rel="stylesheet" type="text/css" />
	<!--   <script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/jquery1.7.2.min.js"></script>-->
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/jquery.tinyscrollbar.js"></script>
</head>
<body class="aqis_live_data">
	<!-- Navbar========================= -->
	<div class="navbar-wrapper">
		<div class="container">
			<div class="navbar navbar-inverse">
				<div class="navbar-inner">
					<a type="button" class="btn btn-navbar" data-toggle="collapse"
						data-target=".navbar-inverse-collaps"> <span class="icon-bar"></span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
					</a> <a class="brand" ></a>
					<div class="nav-collapse navbar-inverse-collaps collapse"
						style="height: 0px;">
						<ul class="nav">
							<li style="margin-top: 5px;"><a
								href="${pageContext.request.contextPath}/showCity.action">首页</a>
							</li>
							<li style="margin-top: 5px;"><a
								href="${pageContext.request.contextPath}/web/rank.jsp">排行榜</a></li>



							<li style="margin-top: 5px;"><a
								href="${pageContext.request.contextPath}/">关于</a></li>
						</ul>
					</div>
					<!-- end of .nav-collapse -->
				</div>
				<!-- end of .navbar-inner -->
			</div>
			<!-- end of .navbar -->
		</div>
		<!-- end of .container -->
	</div>
	<!-- end of .navbar-wrapper -->

	<!-- Carousel=========================== -->
	<!-- end of .carousel -->

	<div class="container">


		<!--<script type="text/javascript">
		var data = new Array();
		var cat = new Array();
		var time="";
		<c:forEach items="${list }" var="showstation">
		data.push('${showstation.positionName}');
		<c:forEach items="${showstation.aqis }" var="aqi" end="0">
		cat.push('${aqi.aqi}');
		time='${aqi.timePoint}';
		</c:forEach>
		</c:forEach>
			$(function() {
				$('#history_chart')
						.highcharts(
								{
									chart : {
										type : 'line',
										marginRight : 130,
										marginBottom : 60
									},
									title : {
										text : '${area} 最近24小时空气质量指数(AQI)趋势',
										x : -20
									//center
									},
									subtitle : {
										text : 'http://www.nxu.edu.cn/',
										x : -20
									},
									credits : {
										text : '数据更新时间:'+time,
										href : 'http://www.nxu.exu.cn/',
										position : {
											align : 'left',
											x : 20,
											y : -15,
											verticalAlign : 'bottom',
										},
										style : {
											color : '#AAA',
											font : '14px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
										}
									},
									xAxis : {
										categories :data
											/*  [ "20时", "21时", "22时",
												"23时", "00时", "01时", "02时",
												  "03时", "04时", "05时", "06时",
												"07时", "08时", "09时", "10时",
												"11时", "12时", "13时", "14时",
												"15时", "16时", "17时", "18时",
												" 19时" ] */ ,
										labels : {
											style : {
												color : '#999',
												font : '12px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
											}
										}
									},
									yAxis : {
										min : 0,
										max : 500,
										title : {
											text : '数据来源于国家环境保护部网站'
										},
										plotLines : [ {
											value : 0,
											width : 1,
											color : '#808080'
										} ]
									},
									plotOptions : {
										line : {
											dataLabels : {
												enabled : true
											}
										}
									},
									legend : {
										layout : 'vertical',
										align : 'right',
										verticalAlign : 'top',
										x : -10,
										y : 100,
										borderWidth : 0
									},
									series : [ {
										name : 'AQI',
										data : cat
										/*  [ 80, 65, 65, 66, 69, 70, 67,
												68, 74, 76, 72, 76, 78, 80, 85,
												90, 108, 112, 106, 111, null,
												122, 127, 133 ] */ , 
										color : '#99CC66'
									} ]
								});
			});
		</script>
		-->
		<script type="text/javascript">
		var time="";
		<c:forEach items="${list }" var="showstation">
		<c:forEach items="${showstation.aqis }" var="aqi" end="0">
			time='${aqi.timePoint}';
		</c:forEach>
		</c:forEach>
		$(document).ready(function(){
		
    $('#history_chart').highcharts({
        data: {
            table: document.getElementById('datatable')
        },
        chart: {
            type: 'column'
        },
        title: {
            text: '${area}空气质量实时发布'
        },
      credits : {
										text : '数据更新时间:'+time,
										href : 'http://www.nxu.exu.cn/',
										position : {
											align : 'left',
											x : 20,
											y : -1,
											verticalAlign : 'bottom',
										},
										style : {
											color : '#AAA',
											font : '13px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif'
										}
									},
        yAxis: {
            allowDecimals: true,
            title: {
                text: '各监测站点的分布情况'
            }
        },
        tooltip: {
            formatter: function() {
                return '<b>'+ this.series.name +'</b><br/>'+
                    this.y +' '+ this.x;
                   
            }
        }
    });
});			
		
		</script>

		<div class="span12 avg">
			<div class="span11">
				<div class="city_name">
					<h2 id="area">${area }</h2>
				</div>
				<!-- end of .city_name -->
			
				<div class="level">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
					<h4>${aqi.quality }</h4>
					</c:forEach>
					</c:forEach>
				</div>
				<!-- end of .level -->
			</div>
			<!-- end of .span11 -->

			<div class="span11">
				<div class="live_data_time">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
				
					<p>数据更新时间:${aqi.timePoint }</p>
					</c:forEach>
				</c:forEach>
				</div>
				<!-- end of .live_data_time -->
				<div class="live_data_unit">数值单位：μg/m3(CO为mg/m3)</div>
				<!-- end of live_data_unit -->
			</div>
			<!-- end of .span11 -->

			<div class="span12 data">
				<div class="span1">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
					<div class="value">${aqi.aqi }</div>
					<div class="caption">AQI</div>
					</c:forEach>
					</c:forEach>
				</div>
				<div class="span1">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
					<div class="value">${aqi.pm25 }</div>
					<div class="caption">PM2.5/1h</div>
					</c:forEach>
					</c:forEach>
				</div>
				<div class="span1">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
					<div class="value">${aqi.pm10 }</div>
					<div class="caption">PM10/1h</div>
					</c:forEach>
					</c:forEach>
				</div>
				<div class="span1">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
					<div class="value">${aqi.co }</div>
					<div class="caption">CO/1h</div>
					</c:forEach>
					</c:forEach>
				</div>
				<div class="span1">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
					<div class="value">${aqi.no2 }</div>
					<div class="caption">NO2/1h</div>
					</c:forEach>
					</c:forEach>
				</div>
				<div class="span1">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
					<div class="value">${aqi.o3 }</div>
					<div class="caption">O3/1h</div>
					</c:forEach>
					</c:forEach>
				</div>
				<div class="span1">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
					<div class="value">${aqi.o38h }</div>
					<div class="caption">O3/8h</div>
					</c:forEach>
					</c:forEach>
				</div>
				<div class="span1">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
					<div class="value">${aqi.so2 }</div>
					<div class="caption">SO2/1h</div>
					</c:forEach>
					</c:forEach>
				</div>
				<div class="span1 more-city">
					<div class="value">
						<a href="${pageContext.request.contextPath}/showCity.action">其他城市</a>
					</div>
				</div>
			</div>
			<!-- end of .data -->

			<div class="span12 caution">
				<div class="primary_pollutant">
				<c:forEach items="${list }" var="showstation" end="0">
				<c:forEach items="${showstation.aqis }" var="aqi" end="0">
					<p>首要污染物： ${aqi.primaryPollutant }</p>
					</c:forEach>
					</c:forEach>
				</div>
				<!-- end of .primary_pollutant -->
				<div class="affect">
					<p>对健康影响情况： 易感人群症状有轻度加剧,健康人群出现刺激症状</p>
				</div>
				<!-- end of .affect -->
				<div class="action">
					<p>建议采取的措施： 儿童、老年人及心脏病、呼吸系统疾病患者应减少长时间、高强度的户外锻炼</p>
				</div>
				<!-- end of .action -->
			</div>
			<!-- end of .caution -->
		</div>
		<!-- end of .avg -->
		<div class="">
			<div class="station">
			<c:forEach items="${list }" var="showstation" end="0">
				<h3>${fn:length(list) }个监测点</h3>
				</c:forEach>
			</div>
		<div class="table">

			<table id="datatable"
				class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<th>监测点</th>
						<th>AQI</th>
						<th>空气质量<br>指数类别
						</th>
						<th>首要污染物</th>
						<th>PM2.5<br>细颗粒物
						</th>
						<th>PM10<br>可吸入颗粒物
						</th>
						<th>CO<br>一氧化碳
						</th>
						<th>NO2<br>二氧化氮
						</th>
						<th>O3<br>臭氧1小时平均
						</th>
						<th class="O3_8h_dn">O3<br>臭氧8小时平均
						</th>
						<th>SO2<br>二氧化硫
						</th>
					</tr>
				</thead>
				<tbody>
				 <tr>
					<c:forEach items="${list }" var="showstation">
						<tr>
							<td><a
								href="${pageContext.request.contextPath}/loadAqi.action?stationCode=${showstation.stationCode}">${showstation.positionName
									}</a>
							</td>
						
					<c:forEach items="${showstation.aqis }" var="aqi" end="0">
						<td>${aqi.aqi }</td>
						<td>${aqi.quality }</td>
						<td>${aqi.primaryPollutant }</td>
						<td>${aqi.pm25 }</td>
						<td>${aqi.pm10 }</td>
						<td>${aqi.co }</td>
						<td>${aqi.no2 }</td>
						<td>${aqi.o3 }</td>
						<td>${aqi.o38h }</td>
						<td>${aqi.so2 }</td>
						</c:forEach>
						</tr>
					</c:forEach>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="span12 history">
			<div id="history_chart"></div>
		</div>

 <!--小贴士固定位置-->
<div class="mini_xiaotieshi"><a href="javascript:void(0)"></a></div>
<!--小贴士弹出框-->
<div class="xiaotieshi"  id="scrollbar2">
<div class="xiaotieshi_title"><a style="cursor:pointer" class="mt_close"><i></i></a><p><span class="xiaotieshi_title_wenzi">PM2.5小贴士</span></p></div>
<div class="scrollbar">
<div class="track">
<div class="thumb">
<div class="end">
</div>
</div>
</div>
</div>

<div class="xiaotieshi_content viewport">
<div class="overview"><p><img src="${pageContext.request.contextPath}/images/xts_title1.gif"/></p><p>PM2.5指的是空气动力学当量直径小于或等于2.5微米的颗粒物(可悬浮于空气中的固态和液态的微粒)。富含大量的有毒、有害物质且在大气中的停留时间长、输送距离远，因而对人体健康和大气环境质量的影响更大。PM2.5它的直径还不到人类头发丝的1/20。PM2.5也是阴霾天气形成的主要原因。</p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content1.jpg"/></p><p><img src="${pageContext.request.contextPath}/images/xts_title2.gif"/></p><p>PM2.5主要对呼吸系统和心血管系统造成伤害，包括呼吸道受刺激、咳嗽、呼吸困难、降低肺功能、加重哮喘、导致慢性支气管炎、心律失常、非致命性的心脏病、心肺病患者的过早死。人体的生理结构决定了对PM2.5没有任何过滤、阻拦能力，因此，小孩、孕妇、老人以及心肺疾病患者，是PM2.5污染的敏感人群。</p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content2_1.gif"/></p><p>世界卫生组织(WHO)认为，PM2.5小于10μg/m<sup>3</sup>是安全值。我国PM2.5标准采用世卫组织设定最宽限值：PM2.5年和24小时平均浓度限值分别定为35μg/m<sup>3</sup>和75μg/m<sup>3</sup>。</p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content2_2.gif"/></p><p>南开大学国家环境保护城市空气颗粒物污染防治重点实验室、中国环境科学研究院大气环境研究所专家发布的论文表示：PM2.5浓度每升高10微克/立方米，我国居民每日死亡率上升0.31%。</p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content2_3.gif"/></p> <p><img src="${pageContext.request.contextPath}/images/xts_title3.gif"/></p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content3_1.gif"/></p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content3_2.gif"/></p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content3_3.gif"/></p><p>&nbsp;</p><p>&nbsp;</p><div class="clear"></div></div></div></div>
<script type="text/javascript">
$(document).ready(function(){
var h=$(window).height()-132;if(h<0)h=0;
$(".viewport").css('height',h);
$('#scrollbar2').tinyscrollbar();
});
window.onresize=function(){
	var h=$(window).height()-132;if(h<0)h=0;
	$(".viewport").css('height',h);
	$(".scrollbar").css('height',h);
	$(".track").css('height',h);
    $('#scrollbar2').tinyscrollbar();
}
$('.mini_xiaotieshi a').click(function(){
	$('#scrollbar2').animate({right:0}, 'slow');
})
$('.xiaotieshi_title .mt_close').click(function(){
	$('#scrollbar2').animate({right:'-900px'}, 'slow');
})

$(document).click(function(e){
  if($(e.target).parents('.xiaotieshi').length == 0 && $('.xiaotieshi').css('right') != '-900px') {
    $('#scrollbar2').animate({right:'-900px'}, 'slow');
  }
})
</script>


		<div id="back-top">
			<a href="showCity.action/#top"><span></span>回到顶部</a>
		</div>
		<jsp:include page="/import/footer.jsp"></jsp:include>
	</div>
</body>
</html>
