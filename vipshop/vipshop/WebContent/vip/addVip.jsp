<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加VIP</title>
<link rel="stylesheet" type="text/css" href="../css/shop.css" />
</head>
<sx:head/>
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
				<h2>添加VIP</h2>
				<s:form action="addVip" method="post">
					姓名：<input name="vip.name" type="text" required="required"><br>
					年龄：<input name="vip.age" type="number" required="required"><br>
					职业：<input name="vip.profession" type="text" required="required">
					<%-- <s:textfield label="姓名" name="vip.name" required="required"></s:textfield> --%>
					<%-- <s:textfield label="年龄" name="vip.age" required="required"></s:textfield> --%>
					<%-- <s:textfield label="职业" name="vip.profession" required="required"></s:textfield> --%>
					<sx:datetimepicker label="加入时间" name="vip.joinTime" displayFormat="yyyy-MM-dd"></sx:datetimepicker>
					<s:submit value="添加VIP"></s:submit>
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