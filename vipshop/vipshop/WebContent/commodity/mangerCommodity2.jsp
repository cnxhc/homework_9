<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理VIP信息</title>
<link rel="stylesheet" type="text/css" href="../css/shop.css" />
</head>
<body>

	<jsp:include page="../head.jsp"></jsp:include>
	<div class="content">
		<div class="left">
			<a href="mangerCommodity.action" target="_top">管理商品信息</a><br> <br>
			<a href="mangerVip.action" target="_top">管理VIP信息</a><br> <br>
			<a href="showUser.action">管理用户信息</a>
		</div>
		<div class="help_content">
			<center>
				<h2>管理VIP信息</h2>
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
								href="getVipById.action?vipId=<s:property value="#vip.vipId"/>">修改</a>
							</td>
							<td><a
								href="addVip.action">添加商品</a>
							</td>
							<td><a
								href="deleteVip.action?vipId=<s:property value="#vip.vipId"/>">删除</a>
							</td>
						</tr>
					</s:iterator>
				</table>
			</center>
		</div>
	</div>
	<jsp:include page="../foot.jsp"></jsp:include>
</html>
