<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>查看个人信息界面</title>
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.useso.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />

</head>


<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp"><strong>后台管理</strong>
			</a>
		</div>

		<ul class="nav navbar-top-links navbar-right">

			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#" aria-expanded="false"> <i
					class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i> </a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="myself.jsp"><i class="fa fa-user fa-fw"></i>
							个人信息</a></li>
					<li><a href="setMyself.jsp"><i class="fa fa-gear fa-fw"></i>
							设置</a></li>
					<li class="divider"></li>
					<li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i>
							退出</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		</nav>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<!-- 这里的moduleList是保存的某个用户它所有的模块信息 -->
			<c:forEach var="m" items="${moduleList}">
			<li><a href="${m.url}">${m.moduleName}</a></li>
			</c:forEach>
				<!-- <li><a href="Goods.jsp"><i class="fa fa-dashboard"></i>
						商品信息管理 <span class="fa arrow"></span>
				</a>  <ul class="nav nav-second-level">
                            <li>
                                <a href="#">添加商品信息</a>
                            </li>
                            <li>
                                <a href="#">修改商品信息</a>
                            </li>
                            <li>
                                <a href="#">删除商品信息</a>
                            </li>
                        </ul></li>
				<li><a href="order.jsp"><i class="fa fa-desktop"></i>订单信息管理
						<span class="fa arrow"></span>
				</a>  <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                        </ul></li>
				<li><a href="customer.jsp"><i class="fa fa-qrcode"></i>
						顾客信息管理</a></li>
				<li><a href="summary.jsp"><i class="fa fa-bar-chart-o"></i>
						销售情况统计</a></li>

				<li><a href="Admin.jsp"><i class="fa fa-table"></i>管理员信息管理</a>
				</li>
				<li>
                        <a href="form.jsp"><i class="fa fa-edit"></i> 上传信息的jsp</a>
                    </li>


				<li><a href="grants.jsp"><i class="fa fa-sitemap"></i>
						模块信息管理</a></li>

				<li><a href="empty.jsp"><i class="fa fa-fw fa-file"></i>联系我们</a>
				</li> -->
			</ul>

		</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header"></h1>


			</div>
			<div id="page-inner">

				<div class="row">
					<div class="col-lg-12" style="width: 0 auto;">
						<div class="panel panel-default">
							<div class="panel-heading">个人信息</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-6">
										<form role="form">
											<div class="form-group">
												<label>姓名为</label> <input class="form-control" type="text" name="${user.userName}"
												readonly="true" value="${user.userName}" placeholder="用户名">

											</div>
											<div class="form-group">
												<label>密码为</label> <input type="password" name="${user.userPassword}"
												readonly="true" value="${user.userPassword}"
												class="form-control" placeholder="密码" />
											</div>

											<div class="form-group">
												<label>电话</label> <input class="form-control" name="${user.userTel}"
												readonly="true" value="${user.userTel}"
													placeholder="电话">
											</div>
											<div class="form-group">
												<label>邮箱</label> <input class="form-control" name="${user.userEmail}"
												readonly="true" value="${user.userEmail}"
													placeholder="邮箱格式如：email@example.com">

											</div>
											<!-- <div class="form-group">
												<label>上传图片</label> <input type="file">
											</div> -->
											<div class="form-group">
												<label>备注信息</label>
												<textarea class="form-control" rows="3"name=""
												readonly="true" value="beizhu"></textarea>
											</div>

											<!-- <button type="submit" class="btn btn-default">Submit</button> -->
											<input type="button" class="btn btn-default" value="返回" onclick="javascript:location.href='index.jsp'"> 
											

										</form>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
				<!-- /. PAGE INNER  -->
			</div>
			<!-- /. PAGE WRAPPER  -->
		</div>
		<!-- /. WRAPPER  -->
		<!-- JS Scripts-->
		<!-- jQuery Js -->
		<script src="assets/js/jquery-1.10.2.js"></script>
		<!-- Bootstrap Js -->
		<script src="assets/js/bootstrap.min.js"></script>
		<!-- Metis Menu Js -->
		<script src="assets/js/jquery.metisMenu.js"></script>
		<!-- Custom Js -->
		<script src="assets/js/custom-scripts.js"></script>
</body>
</html>

