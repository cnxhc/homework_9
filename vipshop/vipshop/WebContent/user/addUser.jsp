<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
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
				<h2>添加用户</h2>
				<s:form action="addUser" method="post">
					用户名称:<input name="user.username" type="text" required="required"><br> 
					用户密码:<input name="user.password" type="password" required="required"><br>
					<s:radio list="#{'1':'普通用户','2':'管理员'}" value="1" name="user.quanxian"/>
					<s:submit value="添加用户"></s:submit>
				</s:form>
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