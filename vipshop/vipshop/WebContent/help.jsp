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
<title>帮助页面</title>
<link rel="stylesheet" type="text/css" href="css/shop.css" />
</head>
<body>

	<jsp:include page="head.jsp"></jsp:include>
	<div class="content">
		<s:if test="#session.user.quanxian.equals(1)">
				<div class="left">
					<a href="addCommodity.jsp" target="_top">商品信息录入</a><br> <br>
					<a href="showCommodity.action" target="_top">商品信息查询</a><br> <br>
					<a href="showConsume.action" target="_top">VIP购物登记</a><br> <br>
					<a href="showVip.action" target="_top">VIP信息查询</a><br> <br>
				</div>
			</s:if>
			<s:else>
				<div class="left">
					<a href="mangerCommodity.action" target="_top">管理商品信息</a><br>
					<br> <a href="mangerVip.action" target="_top">管理VIP信息</a><br>
					<br> <a href="showUser.action">管理用户信息</a>
				</div>
			</s:else>

		<div class="help_content">
			<h2>帮助信息</h2>
			<p>
				本系统共有4个大的模块：<strong>商品信息模块、</strong><strong>VIP信息模块、</strong><strong>系统维护模块</strong><strong>帮助模块。</strong><br>
				商品信息模块划分了两个子模块：<strong>商品信息录入模块、</strong><strong>商品信息查询模块。</strong><br>
				VIP信息模块划分为3个模块：<strong>VIP购物登记模块、</strong><strong>VIP信息查询模块、</strong><br><strong>VIP信息管理模块。</strong>
			</p>
		</div>
	</div>
	<jsp:include page="foot.jsp"></jsp:include>
</html>
