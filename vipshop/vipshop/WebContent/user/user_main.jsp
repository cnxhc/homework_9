<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
	<jsp:include page="../head.jsp"></jsp:include>
	<div class="content">
		<div class="left">
			 <a href="addCommodity.action" target="_top">商品信息录入</a><br> <br>
			<a href="showCommodity.action" target="_top">商品信息查询</a><br> <br>
			<a href="showConsume.action" target="_top">VIP购物登记</a><br> <br>
			<a href="showVip.action" target="_top">VIP信息查询</a><br> <br>
		</div>

		<div class="help_content">
			<h1>欢迎使用！</h1>
		</div>
	</div>
	<jsp:include page="../foot.jsp"></jsp:include>
</body>
</body>
</html>