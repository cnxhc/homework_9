<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加VIP购物</title>
<link rel="stylesheet" type="text/css" href="../css/shop.css" />
</head>
<body>
	<s:if test="#session.user!=null">
		<jsp:include page="../head.jsp"></jsp:include>
		<div class="content">
		<s:if test="#session.user.quanxian.equals(1)">
			<div class="left">
				<a href="addCommodity.action" target="_top">商品信息录入</a><br> <br>
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
				<center>
					<h2>添加VIP购物</h2>
					<table>
						<s:form action="addConsume" method="post">
							<s:hidden label="VIP编号" name="consume.vipId"
								value="%{#request.vip1.vipId}"></s:hidden>
							<s:textfield label="姓名" name="consume.name"
								value="%{#request.vip1.name}"></s:textfield>
						商品名称:<input name="consume.commodityName" type="text" required="required"><br> 
						商品价格:<input name="consume.price" type="number" required="required"><br>
						实收金额:<input name="consume.practicePrice" type="number" required="required"><br>
						<s:submit></s:submit>	
						</s:form>
					</table>
				</center>
			</div>
		</div>
		<jsp:include page="../foot.jsp"></jsp:include>
	</s:if>
	<s:else>
		<jsp:include page="../index.jsp"></jsp:include>
	</s:else>
</body>
</html>