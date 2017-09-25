<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<title>管理员信息界面</title>
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
			<a class="navbar-brand" href="index.jsp"><strong>后台管理</strong> </a>
		</div>

		<ul class="nav navbar-top-links navbar-right">

			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#" aria-expanded="false"> <i
					class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i> </a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="myself.jsp"><i class="fa fa-user fa-fw"></i>
							个人信息</a>
					</li>
					<li><a href="setMyself.jsp"><i class="fa fa-gear fa-fw"></i>
							设置</a>
					</li>
					<li class="divider"></li>
					<li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i>
							退出</a>
					</li>
				</ul> <!-- /.dropdown-user -->
			</li>
			<!-- /.dropdown -->
		</ul>
		</nav>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<!-- 这里的moduleList是保存的某个用户它所有的模块信息 -->
				<c:forEach var="m" items="${moduleList}">
					<li><a href="${m.url}">${m.moduleName}</a>
					</li>
				</c:forEach>
				<li><a href="empty.jsp"></a>
				</li>

			</ul>

		</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header"></h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp">主页</a></li>
					<li><a href="backAdmin.action">管理员信息模块</a></li>
					<li class="active">管理员</li>
				</ol>

			</div>
			<div id="page-inner">
				<div class="col-md-6 col-sm-6">
					<div class="panel panel-default" style="width: 1500px;">
						<div class="panel-heading">
							<a href="backAdmin!addUser.action">添加管理员</a> <a
								href="myGrants.jsp">我的权限</a>
						</div>
						<div class="panel-body">
							<ul class="nav nav-pills">
								<li class="active"><a href="#settings-pills"
									data-toggle="tab">系统维护部门</a>
								</li>
								<li class=""><a href="#profile-pills" data-toggle="tab">配送部门</a>
								</li>
								<li class=""><a href="#messages-pills" data-toggle="tab">销售部门</a>
								</li>

							</ul>

							<div class="tab-content">
								<div class="tab-pane fade active in" id="settings-pills">

									<p>
									<div class="col-md-12">
										<!-- Advanced Tables -->
										<div class="panel panel-default">

											<div class="panel-body">
												<div class="table-responsive">
													<!--   Basic Table  -->
													<table
														class="table table-striped table-bordered table-hover"
														id="dataTables-example1">
														<thead>
															<tr>
																<th>序号</th>
																<th>名字</th>
																<th>电话</th>
																<th>邮箱</th>
																<th>密码</th>
																<th></th>
																<th></th>
															</tr>
														</thead>
														<tbody>
															<s:iterator value="#request.admins" var="user">
																<tr class="odd gradeX">
																	<td>${user.id}</td>
																	<td>${user.userName}</td>
																	<td>${user.userTel}</td>
																	<td>${user.userEmail}</td>
																	<td>${user.userPassword}</td>
																	<td><a
																		href="backAdmin!modifyUser.action?user.id=${user.id}&&user.role.roleId=${user.role.roleId}">修改</a>
																	</td>
																	<td><a
																		href="backAdmin!deleteUser.action?user.id=${user.id}" onclick="delete_confirm()">
																			删除</a>
																	</td>
																</tr>
															</s:iterator>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									</p>
								</div>
								<div class="tab-pane fade" id="profile-pills">

									<p>
									<div class="col-md-12">
										<!-- Advanced Tables -->
										<div class="panel panel-default">

											<div class="panel-body">
												<div class="table-responsive">
													<!--    Striped Rows Table  -->
													<table
														class="table table-striped table-bordered table-hover"
														id="dataTables-example2">

														<thead>
															<tr>
																<th>序号</th>
																<th>名字</th>
																<th>电话</th>
																<th>邮箱</th>
																<th>密码</th>
																<th></th>
																<th></th>
															</tr>
														</thead>
														<tbody>
															<s:iterator value="#request.senders" var="user">
																<tr class="odd gradeX">
																	<td>${user.id}</td>
																	<td>${user.userName}</td>
																	<td>${user.userTel}</td>
																	<td>${user.userEmail}</td>
																	<td>${user.userPassword}</td>
																	<td><a
																		href="backAdmin!modifyUser.action?user.id=${user.id}&&user.role.roleId=${user.role.roleId}">修改</a>
																	</td>
																	<td><a
																		href="backAdmin!deleteUser.action?user.id=${user.id}" onclick="delete_confirm()">
																			删除</a>
																	</td>
																</tr>
															</s:iterator>
														</tbody>
													</table>
													<!--  End  Striped Rows Table  -->
												</div>
											</div>
										</div>
									</div>
									</p>
								</div>
								<div class="tab-pane fade " id="messages-pills">

									<p>
									<div class="col-md-12">
										<!-- Advanced Tables -->
										<div class="panel panel-default">

											<div class="panel-body">
												<div class="table-responsive">
													<!--    Bordered Table  -->
													<table
														class="table table-striped table-bordered table-hover"
														id="dataTables-example3">
														<thead>
															<tr>
																<th>序号</th>
																<th>名字</th>
																<th>电话</th>
																<th>邮箱</th>
																<th>密码</th>
																<th></th>
																<th></th>
															</tr>
														</thead>
														<tbody>
															<s:iterator value="#request.sales" var="user">
																<tr class="odd gradeX">
																	<td>${user.id}</td>
																	<td>${user.userName}</td>
																	<td>${user.userTel}</td>
																	<td>${user.userEmail}</td>
																	<td>${user.userPassword}</td>
																	<td><a
																		href="backAdmin!modifyUser.action?user.id=${user.id}&&user.role.roleId=${user.role.roleId}">修改</a>
																	</td>
																	<td><a
																		href="backAdmin!deleteUser.action?user.id=${user.id}" onclick="delete_confirm()">
																			删除</a>
																	</td>
																</tr>
															</s:iterator>
														</tbody>
													</table>

													<!--  End  Bordered Table  -->
												</div>
											</div>
										</div>
									</div>
									</p>
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
				$('#dataTables-example1').dataTable();
				$('#dataTables-example2').dataTable();
				$('#dataTables-example3').dataTable();
			});
		</script>
		<script language="JavaScript">             
			function delete_confirm() {
				event.returnValue = confirm("删除是不可恢复的，你确认要删除吗？");
			}
		</script>
		<!-- Custom Js -->
		<script src="assets/js/custom-scripts.js"></script>
</body>
</html>

