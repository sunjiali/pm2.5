﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.test.model.User"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PM25管理系统</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow: hidden;
}

.STYLE3 {
	font-size: 12px;
	color: #adc9d9;
}

.cz {
	background-image: url(/images/cz.gif);
}

.dl {
	background-image: url(/images/dl.gif);
}
</style>
</head>

<body>
	<s:form action="Login" method="post">
		<table width="100%" height="100%" border="0" cellspacing="0"
			cellpadding="0">
			<tr>
				<td bgcolor="#1075b1">&nbsp;</td>
			</tr>
			<tr>
				<td height="608" background="images/login_03.gif"><table
						width="847" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="318" background="images/login_04.png">&nbsp;</td>
						</tr>
						<tr>
							<td height="84"><table width="100%" border="0"
									cellspacing="0" cellpadding="0">
									<tr>
										<td width="381" height="84" background="images/login_06.gif">&nbsp;</td>
										<td width="162" valign="middle"
											background="images/login_07.gif"><table width="100%"
												border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="44" height="24" valign="bottom"><div
															align="right">
															<span class="STYLE3">用户</span>
														</div></td>
													<td width="10" valign="bottom">&nbsp;</td>
													<td height="24" colspan="2" valign="bottom">
														<div align="left">
															<input type="text" name="user.username"
																style="width:100px; height:17px; background-color:#87adbf; border:solid 1px #153966; font-size:12px; color:#283439; ">
														</div>
													</td>
												</tr>
												<tr>
													<td height="24" valign="bottom"><div align="right">
															<span class="STYLE3">密码</span>
														</div></td>
													<td width="10" valign="bottom">&nbsp;</td>
													<td height="24" colspan="2" valign="bottom"><input
														type="password" name="user.password"
														style="width:100px; height:17px; background-color:#87adbf; border:solid 1px #153966; font-size:12px; color:#283439; "></td>
												</tr>
												<tr>
													<td height="24" valign="bottom"><div align="right">
															<span class="STYLE3">权限</span>
														</div></td>
													<td width="10" valign="bottom">&nbsp;</td>
													<td width="52" height="24" valign="bottom"><div
															align="center">
															<span> <input type="radio" value="A" name="user.role">超
															<input type="radio" value="P" name="user.role">普
															</span>
														</div></td>

												</tr>
												<tr></tr>
											</table></td>
										<td width="26"><img src="images/login_08.gif" width="26"
											height="84"></td>
										<td width="67" background="images/login_09.gif"><table
												width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td height="25"><div align="center">
															<input type="submit" value="登录"
																style="background-image:url(images/dl.gif)">
														</div></td>
												</tr>
												<tr>
													<td height="25"><div align="center">
															<input type="reset" value="重置"
																style="background-image:url(images/cz.gif)">
														</div></td>
												</tr>
											</table></td>
										<td width="211" background="images/login_10.gif">&nbsp;</td>
									</tr>
								</table></td>
						</tr>
						<tr>
							<td height="206" background="images/login_11.gif">&nbsp;</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td bgcolor="#152753">&nbsp;</td>
			</tr>
		</table>
	</s:form>
</body>
</html>
