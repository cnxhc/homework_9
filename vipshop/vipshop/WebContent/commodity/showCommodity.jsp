<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询商品信息</title>
<link rel="stylesheet" type="text/css" href="../css/shop.css" />
</head>
<body>
	<s:if test="#session.user!=null">
		<jsp:include page="../head.jsp"></jsp:include>
		<s:if test="#session.user.quanxian.equals(1)">
			<div class="content">
				<div class="left">
				<a href="addCommodity.action" target="_top">商品信息录入</a><br> <br>
					<a href="showCommodity.action" target="_top">商品信息查询</a><br> <br>
					<a href="showConsume.action" target="_top">VIP购物登记</a><br> <br>
					<a href="showVip.action" target="_top">VIP信息查询</a><br> <br>
				</div>
				<div class="help_content">
					<center>
						<h2>查询商品信息</h2>
						<table>
							<tr>
								<td>商品编号</td>
								<td>商品名称</td>
								<td>商品价格</td>
								<td>商品折扣</td>
							</tr>
							<s:iterator value="#request.commoditys" id="commodity">
								<tr>
									<td><s:property value="#commodity.commodityId" /></td>
									<td><s:property value="#commodity.commodityName" /></td>
									<td><s:property value="#commodity.price" /></td>
									<td><s:property value="#commodity.agio" /></td>
								</tr>
							</s:iterator>
							<tr>
								<s:set name="pager" value="#request.page"></s:set>
								<s:if test="#pager.hasFirst">
									<a href="showCommodity.action?currentPage=1">首页</a>
								</s:if>
								<s:if test="#pager.hasPrevious">
									<a
										href="showCommodity.action?currentPage=<s:property value="#pager.currentPage-1"/>">上一页</a>
								</s:if>
								<s:if test="#pager.hasNext">
									<a
										href="showCommodity.action?currentPage=<s:property value="#pager.currentPage+1"/>">下一页</a>
								</s:if>
								<s:if test="#pager.hasLast">
									<a
										href="showCommodity.action?currentPage=<s:property value="#pager.totalPage"/>">尾页</a>
								</s:if>
								当前第
								<s:property value="#pager.currentPage" />
								页，总共
								<s:property value="#pager.totalPage" />
								页
								</td>
							</tr>
						</table>
					</center>
				</div>
		</s:if>
		<s:else>
			<div class="content">
				<div class="left">
					<a href="mangerCommodity.action" target="_top">管理商品信息</a><br>
					<br> <a href="mangerVip.action" target="_top">管理VIP信息</a><br>
					<br> <a href="showUser.action">管理用户信息</a>
				</div>
				<div class="help_content">
					<center>
						<h2>查询商品信息</h2>
						<table>
							<tr>
								<td style="text-align: center;">商品编号</td>
								<td style="text-align: center;">商品名称</td>
								<td style="text-align: center;">商品价格</td>
								<td style="text-align: center;">商品折扣</td>
								<td style="text-align: center;">操作</td>
							</tr>
							<s:iterator value="#request.commoditys" id="commodity">
								<tr>
									<td style="text-align: center;"><s:property value="#commodity.commodityId" /></td>
									<td style="text-align: center;"><s:property value="#commodity.commodityName" /></td>
									<td style="text-align: center;"><s:property value="#commodity.price" /></td>
									<td style="text-align: center;"><s:property value="#commodity.agio" /></td>
									<td style="text-align: center;"><a
										href="getCommodityBycommodityId.action?commodityId=<s:property value="#commodity.commodityId"/>">修改</a>
									</td>
									<td style="text-align: center;"><a href="addCommodity.action">添加</a></td>
									<td style="text-align: center;"><a
										href="deleteCommodity.action?commodityId=<s:property value="#commodity.commodityId"/>">删除</a>
									</td>
								</tr>
							</s:iterator>
							<tr>
								<s:set name="pager" value="#request.page"></s:set>
								<s:if test="#pager.hasFirst">
									<a href="showCommodity.action?currentPage=1">首页</a>
								</s:if>
								<s:if test="#pager.hasPrevious">
									<a
										href="showCommodity.action?currentPage=<s:property value="#pager.currentPage-1"/>">上一页</a>
								</s:if>
								<s:if test="#pager.hasNext">
									<a
										href="showCommodity.action?currentPage=<s:property value="#pager.currentPage+1"/>">下一页</a>
								</s:if>
								<s:if test="#pager.hasLast">
									<a
										href="showCommodity.action?currentPage=<s:property value="#pager.totalPage"/>">尾页</a>
								</s:if>
								当前第
								<s:property value="#pager.currentPage" />
								页，总共
								<s:property value="#pager.totalPage" />
								页
								</td>
							</tr>
						</table>
					</center>
				</div>
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