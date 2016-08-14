<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功页</title>
</head>

<body>
	<div class="content">
		<s:if test="#session.user.quanxian.equals(1)">
			<jsp:forward page="user/user_main.jsp"></jsp:forward>
		</s:if>
		<s:elseif test="#session.user.quanxian.equals(2)">
			<jsp:forward page="user/admin_main.jsp"></jsp:forward>
		</s:elseif>
	</div>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
