<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VIP购物登记</title>
<link rel="stylesheet" type="text/css" href="../css/shop.css" />
</head>
<body>
	<s:if test="#session.user!=null">
		<jsp:include page="../head.jsp"></jsp:include>
		<div class="content">
			<div class="left">
				<a href="addCommodity.action" target="_top">商品信息录入</a><br> <br>
				<a href="showCommodity.action" target="_top">商品信息查询</a><br> <br>
				<a href="showConsume.action" target="_top">VIP购物登记</a><br> <br>
				<a href="showVip.action" target="_top">VIP信息查询</a><br> <br>
			</div>
			<div class="help_content">
				<center>
					<h2>VIP购物登记</h2>
					<table>
						<tr>
							<td>购物编号</td>
							<td>VIP姓名</td>
							<td>商品名称</td>
							<td>商品价格</td>
							<td>商品折扣</td>
							<td>VIP登记</td>
						</tr>
						<s:iterator value="#request.consumes" id="consume">
							<tr>
								<td><s:property value="#consume.consumeId" /></td>
								<td><s:property value="#consume.name" /></td>
								<td><s:property value="#consume.commodityName" /></td>
								<td><s:property value="#consume.price" /></td>
								<td><s:property value="#consume.price" /></td>
								<td><a
								href="checkVipShop.action?name=<s:property value="#consume.name"/>">登记</a>
							</td>
						</s:iterator>
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