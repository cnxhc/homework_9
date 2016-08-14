<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改VIP信息</title>
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
					<h2>修改VIP信息</h2>
					<s:form action="updateVip" method="post">
						<s:hidden label="VIP编号" name="vip.vipId"
							 value="%{#request.vip1.vipId}"></s:hidden>
						 <s:textfield label="姓名" name="vip.name"
							value="%{#request.vip1.name}"></s:textfield>
						<s:textfield label="年龄" name="vip.age"
							value="%{#request.vip1.age}"></s:textfield> 
						<s:textfield label="入会时间" name="vip.joinTime"
							value="%{#request.vip1.joinTime}"></s:textfield>
						<s:textfield label="职业" name="vip.profession"
							value="%{#request.vip1.profession}"></s:textfield> 
							
							<%--年龄：<input name="vip.age" value="%{#request.vip1.age}"
							type="number" required="required">
							姓名：<input name="vip.name" value="%{#request.vip1.name}"
							type="text" required="required">
							加入时间：<input name="vip.joinTime" value="%{#request.vip1.joinTime}"
							type="number" required="required">
							职业：<input name="vip.profession"
							value="%{#request.vip1.profession}" type="text"
							required="required"> --%>
						<s:submit value="修改VIP信息"></s:submit>
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