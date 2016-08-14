<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户信息</title>
<link rel="stylesheet" type="text/css" href="../css/shop.css" />
</head>
<body>
	<s:if test="#session.user!=null">
		<jsp:include page="../head.jsp"></jsp:include>
		<div class="content">
				<div class="left">
					<a href="mangerCommodity.action" target="_top">管理商品信息</a><br>
					<br> <a href="mangerVip.action" target="_top">管理VIP信息</a><br>
					<br> <a href="showUser.action">管理用户信息</a>
				</div>
			<div class="help_content">
				<center>
					<h2>修改用户信息</h2>
						<s:form action="updateUser" method="post">
							<s:textfield label="用户名" name="user.username" readonly="true" value="%{#request.user1.username}" ></s:textfield>
							<s:textfield label="用户密码" name="user.password" value="%{#request.user1.password}" ></s:textfield>
							 <s:hidden label="用户权限" name="user.quanxian" value="%{#request.user1.quanxian}" ></s:hidden>
							<%--  <s:radio list="#{'1':'普通用户','2':'管理员'}" value="1" name="user.quanxian"/>  --%>
							<s:submit value="修改用户信息"></s:submit>
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