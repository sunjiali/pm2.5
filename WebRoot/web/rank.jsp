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


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PM25.in | 全国空气质量指数(AQI)排行榜</title>
<meta content="根据空气质量指数(AQI)计算的，全国空气质量每小时排行榜。" name="description" />
<meta content="空气质量排行榜, 城市空气质量排行榜, aqi指数排行" name="keywords" />

<meta name="author"
	content="主创：anson,Hello_蜡笔；友情支持：KevChen,铁骑Leap,koeylaoo,_幸福这一站,__JAS__,那个叫lee了个斌 ">
<link href="${pageContext.request.contextPath}/assets/application.css"
	media="all" rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/application-a0c9d2532f0dc5ba8fcba803e2a385ad.js"
	type="text/javascript"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/highchart.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/data.js"></script>
<meta content="authenticity_token" name="csrf-param" />
<meta content="MuwFmG1ZEJbbfmN6wwqhPyvsgtYeChjT/SbCqSxC9WI="
	name="csrf-token" />


<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-38933456-1' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>

<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js"
	type="text/javascript" charset="utf-8">
	
</script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$
								.ajax({
									//请求方式为get
									type : "GET",
									//json文件位置
									url : "http://www.pm25.in/api/querys/aqi_ranking.json?token=vvnKqBwFZ8wgqxpjpmJm",
									//url:"http://pm25.in/api/querys/pm2_5.json?city=shanghai&token=M5ZpvmvTpqkKiiq36SiY",
									//返回数据格式为json
									dataType : "jsonp",
									jsonp : "callback",
									//请求成功完成后要执行的方法
									success : function(data) {
										//使用$.each方法遍历返回的数据date,插入到id为#result中
										$.each(data, function(i, item) {
											var content = "<tr>" + "<td>"
													+(i+1)+ "</td>" + "<td>"
													+ item.area
													+ "</td>"
													+ "<td>"
													+ item.aqi
													+ "</td>"
													+ "<td>"
													+ item.quality
													+ "</td>"
													+ "<td>"
													+ item.primary_pollutant
													+ "</td>"
													+ "<td>"
													+ item.pm2_5
													+ "</td>"
													+ "<td>"
													+ item.pm10
													+ "</td>"
													+ "<td>"
													+ item.co
													+ "</td>"
													+ "<td>"
													+ item.no2
													+ "</td>"
													+ "<td>"
													+ item.o3
													+ "</td>"
													+ "<td>"
													+ item.o3_8h
													+ "</td>"
													+ "<td>"
													+ item.so2
													+ "</td>"
													+ "</tr>";
											$("#result").append(content);
											
											
										}
										
										
										)
									}
								})
					}

			);
</script>
</head>

<body class="sort_index">
	<!-- Navbar========================= -->
	<div class="navbar-wrapper">
		<div class="container">
			<div class="navbar navbar-inverse">
				<div class="navbar-inner">
					<a type="button" class="btn btn-navbar" data-toggle="collapse"
						data-target=".navbar-inverse-collaps"> <span class="icon-bar"></span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
					</a> <a class="brand" href="/"></a>
					<div class="nav-collapse navbar-inverse-collaps collapse"
						style="height: 0px;">
						<ul class="nav">
							<li style="margin-top: 5px;"><a href="${pageContext.request.contextPath}/showCity.action">首页</a></li>
							<li style="margin-top: 5px;"><a href="${pageContext.request.contextPath}/rank.jsp">排行榜</a></li>

							<li style="margin-top: 5px;"><a href="${pageContext.request.contextPath}/about.jsp">关于</a></li>
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
		<div class="sort ptshort">

			<script type="text/javascript">
				var draw_highChart = function(id, title, subtitle, city_names,
						aqi_data, color, chart_width) {
					$(id)
							.highcharts(
									{
										colors : [ color, "#7798BF", "#55BF3B",
												"#DF5353", "#aaeeee",
												"#ff0066", "#eeaaee",
												"#55BF3B", "#DF5353",
												"#7798BF", "#aaeeee" ],
										chart : {
											type : 'column',
											width : chart_width,
											marginBottom : 75
										},
										credits : {
											text : subtitle,
											href : 'http://www.nxu.edu.cn',
											position : {
												align : 'left',
												x : 20,
												y : -17,
												verticalAlign : 'bottom',
											},
											style : {
												color : '#AAA',
												font : '14px Lucida Grande, Lucida Sans Unicode, Verdana, Arial, Helvetica, sans-serif',
											}
										},
										title : {
											text : title,
											y : 20
										},
										subtitle : {
											text : 'http://www.nxu.edu.cn',
											y : 40
										},
										xAxis : {
											categories : city_names,
											labels : {
												y : 20
											}
										},
										yAxis : {
											min : 0,
											max : 500,
											title : {
												text : '数据来源于国家环境保护部网站'
											}
										},
										legend : {
											enabled : false
										},
										tooltip : {
											headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
											pointFormat : '<tr><td style="color:{series.color};padding:0">{series.name}: </td>'
													+ '<td style="padding:0"><b>{point.y}</b></td></tr>',
											footerFormat : '</table>',
											shared : true,
											useHTML : true
										},
										plotOptions : {
											column : {
												pointPadding : 0.2,
												borderWidth : 0,
												dataLabels : {
													enabled : true,
													color : '#BBB'
												},
												shadow : true
											}
										},
										series : [ {
											name : 'AQI',
											data : aqi_data

										} ]
									});
				};

				$(function() {

					draw_highChart("#best_highchart", "全国实时空气质量指数(AQI) 前十名",
							"2014-05-05 16:00 发布", [ "哈尔滨", "三亚", "云浮", "吉林",
									"海口", "秦皇岛", "梅州", "长春", "潮州", "佛山" ], [
									17, 21, 27, 27, 28, 29, 29, 29, 30, 31 ],
							"#A3C800");

					draw_highChart("#worst_highchart", "全国实时空气质量指数(AQI) 后十名",
							"2014-05-05 16:00 发布", [ "库尔勒", "乳山", "嘉峪关", "青岛",
									"郑州", "南京", "胶州", "菏泽", "荆州", "西安" ], [
									500, 500, 128, 106, 105, 102, 97, 96, 95,
									95 ], "#B98A00");
				});
			</script>

			<script type="text/javascript">
				$(
						function() {
							if (location.search.indexOf('width') > 0) {
								var charWidth = location.search.split('=')[1]
										+ 'px';
								$('#best_highchart, #worst_highchart').css(
										'width', charWidth);

							}
						})
			</script>

			<div id="best_highchart"></div>
			<div id="worst_highchart"></div>

			<div class="title">
				<h3>空气质量排行榜(根据AQI排序)</h3>
			</div>

			

			

			

			<div class="table">
				<table class="table table-striped table-bordered table-condensed"
					id="result">
					<thead>
						<tr>
							<th>排名</th>
							<th>城市</th>
							<th>AQI</th>
							<th>空气质量<br>指数类别
							</th>
							<th>首要污染物</th>
							<th>PM 2.5<br>细颗粒物
							</th>
							<th>PM 10<br>可吸入颗粒物
							</th>
							<th>CO<br>一氧化碳
							</th>
							<th>NO2<br>二氧化氮
							</th>
							<th>O3<br>臭氧1小时平均
							</th>
							<th class="O3_8h_dn">O3_8h<br>臭氧8小时平均
							</th>
							<th>SO2<br>二氧化硫
							</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="footer">
		<p>
			Copyright © 2013-2014<a href="http://www.bestapp.us" target="_blank">
				宁夏大学</a> All Rights Reserved.
		</p>
		<p id="show_request_time">2014-05-05 17:07:25</p>
	</div>
	<div id="back-top">
		<a href="#top"><span></span>回到顶部</a>
	</div>
	</div>

</body>
</html>