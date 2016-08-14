<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功</title>
<link rel="stylesheet" type="text/css" href="../css/shop.css" />
</head>
<body>
	<s:if test="#session.user!=null">
		<jsp:include page="../head.jsp"></jsp:include>
		<div class="content">
			<div class="left">
				<a href="mangerCommodity.action" target="_top">管理商品信息</a><br> <br>
				<a href="mangerVip.action" target="_top">管理VIP信息</a><br> <br>
				<a href="showUser.action">管理用户信息</a>
			</div>

			<div class="help_content">
				<h1>欢迎使用！</h1>
			</div>
		</div>
		<jsp:include page="../foot.jsp"></jsp:include>
	</s:if>
	<s:else>
		<jsp:include page="../index.jsp"></jsp:include>
	</s:else>
</body>
</html>
