<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/shop.css" />
<title></title>
</head>

<body>
	<div class="head_right">
		<s:if test="#session.user!=null">
			<a href="help.jsp">帮助信息</a>
			<a href="logOut.action" target="_top">注销</a>
			<a><strong><em>欢迎：</em>
				<s:property value="#session.user.username" /></strong></a>
		</s:if>
		<s:else>
			<a href="index.jsp" target="_self">登录</a>
		</s:else>

	</div>
</body>


</html>
