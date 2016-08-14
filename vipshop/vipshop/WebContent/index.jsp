<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/shop.css" />
<title>登录页面</title>
</head>

<body>
	<div id="div_bg">
		<div id="div_context">
			<center>
				<s:property value="#request.msg" />
				<s:form action="checkUser" method="post">
					<%-- <s:textfield name="user.username"></s:textfield>
					<s:password name="user.password"></s:password> --%>
					
					
					<div class="input-group">
						<span class="glyphicon glyphicon-user"></span> <input type="text"
							placeholder="username" name="user.username">
					</div>

					<div class="input-group">
						<span class="glyphicon glyphicon-lock"></span> <input
							type="password" placeholder="password" name="user.password">
					</div>
					<s:submit></s:submit>
				</s:form>
			</center>
		</div>
	</div>
</body>
</html>
