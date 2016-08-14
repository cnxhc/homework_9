<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>录入商品信息</title>
<link rel="stylesheet" type="text/css" href="../css/shop.css" />
</head>
<body>
	<s:if test="#session.user!=null">
		<jsp:include page="../head.jsp"></jsp:include>
		<s:if test="#session.user.quanxian.equals(1)">
			<div class="content">
				<div class="left">
					<a href="addCommodity.action" target="_top">商品信息录入</a><br> <br>
					<a href="showCommodity.action" target="_top">商品信息查询</a><br> <br>
					<a href="vip/mangerVip.jsp" target="_top">VIP购物登记</a><br> <br>
					<a href="showVip.action" target="_top">VIP信息查询</a><br> <br>
				</div>
				<div class="help_content">
					<center>
						<h2>录入商品信息</h2>
						<s:form action="addCommodity" method="post">
								商品名称：<input name="commodity.commodityName" type=text required="required"><br>
								商品价格：<input name="commodity.price" type="number" required="required"><br>
								商品折扣：<input name="commodity.agio" type="number" required="required">
						
						<%-- 	<s:textfield label="商品名称" name="commodity.commodityName"
								required="required"></s:textfield>
							<s:textfield label="商品价格" name="commodity.price" type="number"
								required="required"></s:textfield>
							<s:textfield label="商品折扣" name="commodity.agio" type="number"
								required="required"></s:textfield> --%>
							<s:submit value="添加商品"></s:submit>
						</s:form>
					</center>
				</div>
			</div>
		</s:if>
		<s:else>
			<div class="content">
				<div class="left">
					<a href="mangerCommodity.action" target="_top">管理商品信息</a><br>
					<br> <a href="mangerVip.action" target="_top">管理VIP信息</a><br>
					<br> <a href="showUser.action">管理用户信息</a>
				</div>
				<div class="help_content">
					<center>
						<h2>录入商品信息</h2>
						<s:form action="addCommodity" method="post">
						
								商品名称：<input name="commodity.commodityName" type=text required="required"><br>
								商品价格：<input name="commodity.price" type="number" required="required"><br>
								商品折扣：<input name="commodity.agio" type="number" required="required">
						
			<%-- 				<s:textfield label="商品名称" name="commodity.commodityName"
								required="required"></s:textfield>
								<s:textfield label="商品价格" name="commodity.price" type="number"
								required="required"></s:textfield>
							<s:textfield label="商品折扣" name="commodity.agio" type="number"
								required="required"></s:textfield> --%>
								
							<s:submit value="添加商品"></s:submit>
						</s:form>
					</center>
				</div>
			</div>
		</s:else>
		<jsp:include page="../foot.jsp"></jsp:include>
	</s:if>
	<s:else>
		<jsp:include page="../index.jsp"></jsp:include>
	</s:else>
</body>
</html>