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
<title>销售统计界面</title>
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
			<li><a href="empty.jsp"></a></li>
		
			</ul>

		</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header"></h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp">主页</a>
					</li>
					<li><a href="summary.jsp">销售情况统计</a>
					</li>
					<li class="active">统计</li>
				</ol>

			</div>
			<div id="page-inner">
				<div class="row">
					<div class="col-xs-6 col-md-3">
						<div class="panel panel-default">
							<div class="panel-body easypiechart-panel">
								<h4>Profit</h4>
								<div class="easypiechart" id="easypiechart-blue"
									data-percent="82">
									<span class="percent">82%</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-md-3">
						<div class="panel panel-default">
							<div class="panel-body easypiechart-panel">
								<h4>Sales</h4>
								<div class="easypiechart" id="easypiechart-orange"
									data-percent="55">
									<span class="percent">55%</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-md-3">
						<div class="panel panel-default">
							<div class="panel-body easypiechart-panel">
								<h4>Customers</h4>
								<div class="easypiechart" id="easypiechart-teal"
									data-percent="84">
									<span class="percent">84%</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-md-3">
						<div class="panel panel-default">
							<div class="panel-body easypiechart-panel">
								<h4>No. of Visits</h4>
								<div class="easypiechart" id="easypiechart-red"
									data-percent="46">
									<span class="percent">46%</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				-->
				<!--/.row-->


				<div class="row">
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-left pull-left blue">
								<i class="fa fa-eye fa-5x"></i>

							</div>
							<div class="panel-right">
								<h3>16,150</h3>
								<strong> Daily Visits</strong>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-left pull-left blue">
								<i class="fa fa-shopping-cart fa-5x"></i>
							</div>

							<div class="panel-right">
								<h3>25,550</h3>
								<strong> Sales</strong>

							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-left pull-left blue">
								<i class="fa fa fa-comments fa-5x"></i>

							</div>
							<div class="panel-right">
								<h3>11,225</h3>
								<strong> Comments </strong>

							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="panel panel-primary text-center no-boder blue">
							<div class="panel-left pull-left blue">
								<i class="fa fa-users fa-5x"></i>

							</div>
							<div class="panel-right">
								<h3>72,525</h3>
								<strong>No. of Visits</strong>

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
	<!-- Morris Chart Js -->
	<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="assets/js/morris/morris.js"></script>


	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>

	<script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
			$('#dataTables-example1').dataTable();
			$('#dataTables-example2').dataTable();
			$('#dataTables-example3').dataTable();
		});
	</script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>
</body>
</html>

