<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理VIP信息</title>
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
				<div class="help_content">
					<center>
						<h2>查询VIP信息</h2>
						<table>
							<tr>
								<td>VIP编号</td>
								<td>入会时间</td>
								<td>姓名</td>
								<td>年龄</td>
								<td>职业</td>
								<td>操作</td>
							</tr>
							<s:iterator value="#request.vips" id="vip">
								<tr>
									<td><s:property value="#vip.vipId" /></td>
									<td><s:property value="#vip.joinTime" /></td>
									<td><s:property value="#vip.name" /></td>
									<td><s:property value="#vip.age" /></td>
									<td><s:property value="#vip.profession" /></td>
									<td><a
										href="getVipById.action?vipId=<s:property value="#vip.vipId"/>">修改VIP信息</a></td>
								</tr>
							</s:iterator>
						</table>
					</center>
				</div>
			</s:if>
			<s:else>
				<div class="left">
					<a href="mangerCommodity.action" target="_top">管理商品信息</a><br>
					<br> <a href="mangerVip.action" target="_top">管理VIP信息</a><br>
					<br> <a href="showUser.action">管理用户信息</a>
				</div>
				<div class="help_content">
					<center>
						<h2>管理VIP信息</h2>
						<table>
							<tr>
								<td style="text-align: center;">VIP编号</td>
								<td style="text-align: center;">入会时间</td>
								<td style="text-align: center;">姓名</td>
								<td style="text-align: center;">年龄</td>
								<td style="text-align: center;">职业</td>
								<td style="text-align: center;">操作</td>
							</tr>
							<s:iterator value="#request.vips" id="vip">
								<tr>
									<td style="text-align: center;"><s:property value="#vip.vipId" /></td>
									<td style="text-align: center;"><s:property value="#vip.joinTime" /></td>
									<td style="text-align: center;"><s:property value="#vip.name" /></td>
									<td style="text-align: center;"><s:property value="#vip.age" /></td>
									<td style="text-align: center;"><s:property value="#vip.profession" /></td>
									<td><a
										href="getVipById.action?vipId=<s:property value="#vip.vipId"/>">修改</a>
									</td>
									<td><a href="getVipByNameId?vipId=<s:property value="#vip.vipId"/>&name=<s:property value="#vip.name"/>">添加</a></td>
									<td><a
										href="deleteVip.action?vipId=<s:property value="#vip.vipId"/>">删除</a>
									</td>
									<td><a href="addVip.action">添加VIP</a></td>
									<td><a
										href="checkVipShop.action?name=<s:property value="#vip.name"/>">登记</a>
									</td>
								</tr>
							</s:iterator>
						</table>
					</center>
				</div>
			</s:else>
		</div>
		<jsp:include page="../foot.jsp"></jsp:include>
	</s:if>
	<s:else>
		<jsp:include page="../index.jsp"></jsp:include>
	</s:else>
</body>
</html>