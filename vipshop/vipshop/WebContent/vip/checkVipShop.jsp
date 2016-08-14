<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/shop.css" />
<title>购物登记</title>
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
					<h2>登记</h2>
					<table>
						<tr>
							<td style="text-align: center;">VIP姓名</td>
							<td style="text-align: center;">商品数量</td>
							<td style="text-align: center;">商品名称</td>
							<td style="text-align: center;">商品总金额</td>
						</tr>
						<s:iterator value="#request.list" id="l">
							<tr>
								<td style="text-align: center;"><s:property value="#l[0]" /></td>
								<td style="text-align: center;"><s:property value="#l[1]" /></td>
								<td style="text-align: center;"><s:property value="#l[2]" /></td>
								<td style="text-align: center;"><s:property value="#l[3]" /></td>
							</tr>
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