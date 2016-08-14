<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理用户信息</title>
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
				<center>
					<h2>查询用户信息</h2>
					<table>
						<tr>
							<td style="text-align: center;">用户名</td>
							<td style="text-align: center;">用户密码</td>
							<td style="text-align: center;">用户权限</td>
							<td style="text-align: center;">操作</td>
						</tr>
						<s:iterator value="#request.users" id="user">
							<tr>
								<td style="text-align: center;"><s:property value="#user.username" /></td>
								<td style="text-align: center;"><s:property value="#user.password" /></td>
								<td style="text-align: center;"><s:property value="#user.quanxian" /></td>
								<td style="text-align: center;"><a href="deleteUser.action?username=<s:property value="#user.username"/>">删除</a></td>
								<td><a href="addUser.action">添加</a></td>
								<td><a href="getUserByName.action?username=<s:property value="#user.username"/>">修改</a></td>
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