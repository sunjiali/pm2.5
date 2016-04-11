<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>用户列表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	table {
    background-color: rgba(0, 0, 0, 0);
    border-collapse: collapse;
    border-spacing: 0;
    max-width: 100%;
}
.table {
    margin-bottom: 20px;
    width: 100%;
}
.table th, .table td {
    border-top: 1px solid #DDDDDD;
    line-height: 20px;
    padding: 8px;
    text-align: left;
    vertical-align: top;
}
.table th {
    font-weight: bold;
}
.table thead th {
    vertical-align: bottom;
}
.table caption + thead tr:first-child th, .table caption + thead tr:first-child td, .table colgroup + thead tr:first-child th, .table colgroup + thead tr:first-child td, .table thead:first-child tr:first-child th, .table thead:first-child tr:first-child td {
    border-top: 0 none;
}
.table tbody + tbody {
    border-top: 2px solid #DDDDDD;
}
.table .table {
    background-color: #FFFFFF;
}
.table-condensed th, .table-condensed td {
    padding: 4px 5px;
}
.table-bordered {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-collapse: separate;
    border-color: #DDDDDD #DDDDDD #DDDDDD -moz-use-text-color;
    border-image: none;
    border-radius: 4px;
    border-style: solid solid solid none;
    border-width: 1px 1px 1px 0;
}
.table-bordered th, .table-bordered td {
    border-left: 1px solid #DDDDDD;
}
.table-bordered caption + thead tr:first-child th, .table-bordered caption + tbody tr:first-child th, .table-bordered caption + tbody tr:first-child td, .table-bordered colgroup + thead tr:first-child th, .table-bordered colgroup + tbody tr:first-child th, .table-bordered colgroup + tbody tr:first-child td, .table-bordered thead:first-child tr:first-child th, .table-bordered tbody:first-child tr:first-child th, .table-bordered tbody:first-child tr:first-child td {
    border-top: 0 none;
}
.table-bordered thead:first-child tr:first-child > th:first-child, .table-bordered tbody:first-child tr:first-child > td:first-child, .table-bordered tbody:first-child tr:first-child > th:first-child {
    border-top-left-radius: 4px;
}
.table-bordered thead:first-child tr:first-child > th:last-child, .table-bordered tbody:first-child tr:first-child > td:last-child, .table-bordered tbody:first-child tr:first-child > th:last-child {
    border-top-right-radius: 4px;
}
.table-bordered thead:last-child tr:last-child > th:first-child, .table-bordered tbody:last-child tr:last-child > td:first-child, .table-bordered tbody:last-child tr:last-child > th:first-child, .table-bordered tfoot:last-child tr:last-child > td:first-child, .table-bordered tfoot:last-child tr:last-child > th:first-child {
    border-bottom-left-radius: 4px;
}
.table-bordered thead:last-child tr:last-child > th:last-child, .table-bordered tbody:last-child tr:last-child > td:last-child, .table-bordered tbody:last-child tr:last-child > th:last-child, .table-bordered tfoot:last-child tr:last-child > td:last-child, .table-bordered tfoot:last-child tr:last-child > th:last-child {
    border-bottom-right-radius: 4px;
}
.table-bordered tfoot + tbody:last-child tr:last-child td:first-child {
    border-bottom-left-radius: 0;
}
.table-bordered tfoot + tbody:last-child tr:last-child td:last-child {
    border-bottom-right-radius: 0;
}
.table-bordered caption + thead tr:first-child th:first-child, .table-bordered caption + tbody tr:first-child td:first-child, .table-bordered colgroup + thead tr:first-child th:first-child, .table-bordered colgroup + tbody tr:first-child td:first-child {
    border-top-left-radius: 4px;
}
.table-bordered caption + thead tr:first-child th:last-child, .table-bordered caption + tbody tr:first-child td:last-child, .table-bordered colgroup + thead tr:first-child th:last-child, .table-bordered colgroup + tbody tr:first-child td:last-child {
    border-top-right-radius: 4px;
}
.table-striped tbody > tr:nth-child(2n+1) > td, .table-striped tbody > tr:nth-child(2n+1) > th {
    background-color: #F9F9F9;
}
.table-hover tbody tr:hover > td, .table-hover tbody tr:hover > th {
    background-color: #F5F5F5;
}
table td[class*="span"], table th[class*="span"], .row-fluid table td[class*="span"], .row-fluid table th[class*="span"] {
    display: table-cell;
    float: none;
    margin-left: 0;
}
.table td.span1, .table th.span1 {
    float: none;
    margin-left: 0;
    width: 44px;
}
.table td.span2, .table th.span2 {
    float: none;
    margin-left: 0;
    width: 124px;
}
.table td.span3, .table th.span3 {
    float: none;
    margin-left: 0;
    width: 204px;
}
.table td.span4, .table th.span4 {
    float: none;
    margin-left: 0;
    width: 284px;
}
.table td.span5, .table th.span5 {
    float: none;
    margin-left: 0;
    width: 364px;
}
.table td.span6, .table th.span6 {
    float: none;
    margin-left: 0;
    width: 444px;
}
.table td.span7, .table th.span7 {
    float: none;
    margin-left: 0;
    width: 524px;
}
.table td.span8, .table th.span8 {
    float: none;
    margin-left: 0;
    width: 604px;
}
.table td.span9, .table th.span9 {
    float: none;
    margin-left: 0;
    width: 684px;
}
.table td.span10, .table th.span10 {
    float: none;
    margin-left: 0;
    width: 764px;
}
.table td.span11, .table th.span11 {
    float: none;
    margin-left: 0;
    width: 844px;
}
.table td.span12, .table th.span12 {
    float: none;
    margin-left: 0;
    width: 924px;
}
.table tbody tr.success > td {
    background-color: #DFF0D8;
}
.table tbody tr.error > td {
    background-color: #F2DEDE;
}
.table tbody tr.warning > td {
    background-color: #FCF8E3;
}
.table tbody tr.info > td {
    background-color: #D9EDF7;
}
.table-hover tbody tr.success:hover > td {
    background-color: #D0E9C6;
}
.table-hover tbody tr.error:hover > td {
    background-color: #EBCCCC;
}
.table-hover tbody tr.warning:hover > td {
    background-color: #FAF2CC;
}
.table-hover tbody tr.info:hover > td {
    background-color: #C4E3F3;
}
	</style>

</head>

<body>
<h2 align="center">管理员列表</h2>
<hr>


<table class="table table-striped table-bordered table-condensed"
		id="result">
		<thead>
			<tr>
				<th></th>
				<th>用户编号</th>
				<th>用户名称</th>
				<th>用户密码</th>
				<th>用户角色</th>
				<th>更新</th>
				<th>删除</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="record">


			<tr>
				<td><input type="checkbox" name="checkbox" value="" onclick=""/></td>
				<td><c:out value="${record.id}"></c:out></td>
				<td><c:out value="${record.username}"></c:out></td>
				<td><c:out value="${record.password}"></c:out></td>
				<td><c:out value="${record.role}"></c:out></td>
				<td><a
					href="${pageContext.request.contextPath}/user/updateInput.action?id=${record.id}">更新</a></td>
				<td><a
					href="${pageContext.request.contextPath}/user/delete.action?id=${record.id}"
					onclick="return confirm('确定要删除吗？');">删除</a></td>
			</tr>
	</c:forEach>
		</tbody>
		</table>
		


	
</body>
</html>
