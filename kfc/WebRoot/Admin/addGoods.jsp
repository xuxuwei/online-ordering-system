<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>添加商品界面</title>
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
					<li><a href="${m.url}">${m.moduleName}</a></li>
				</c:forEach>
				<!-- <li><a class="active-menu" href="Goods.jsp"><i
						class="fa fa-dashboard"></i> 商品信息管理 <span class="fa arrow"></span>
				</a>
				</li>
				<li><a href="order.jsp"><i class="fa fa-desktop"></i>订单信息管理
						<span class="fa arrow"></span> </a>
				</li>
				<li><a href="customer.jsp"><i class="fa fa-qrcode"></i>
						顾客信息管理</a>
				</li>
				<li><a href="summary.jsp"><i class="fa fa-bar-chart-o"></i>
						销售情况统计</a>
				</li>

				<li><a href="Admin.jsp"><i class="fa fa-table"></i>
						管理员信息管理</a>
				</li>
				 <li>
                        <a href="addCustomer.jsp"><i class="fa fa-edit"></i> 添加顾客</a>
                    </li>


				<li><a href="grants.jsp"><i class="fa fa-sitemap"></i>
						模块信息管理</a>
				</li>

				<li><a href="empty.jsp"><i class="fa fa-fw fa-file"></i>
						联系我们</a>
				</li> -->
			</ul>

		</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header"></h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp">主页</a></li>
					<li><a href="backMeal.action">商品信息管理</a></li>
					<li class="active">添加商品</li>
				</ol>

			</div>
			<div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">按要求输入相应信息</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-6">
										<form role="form" action="backMeal!addSuccess.action"
											method="post">
											<div class="form-group">
												<label>商品名</label> <input class="form-control"
													placeholder="商品名不能为空" value="" name="meal.mealName">
											</div>
											<div class="form-group">
												<label>商品介绍</label>
												<textarea class="form-control" rows="3"
													name="meal.mealIntroduce"></textarea>

											</div>
											<div class="form-group">
												<label>商品价格</label> <input class="form-control"
													placeholder="价格不能为空" name="meal.mealPrice">
											</div>
											<div class="form-group">
												<label>所属类别</label>
												<%-- 	<s:form name="meal.mealType">
													<s:set
														name="types"
														value="#{
														'早餐':{'主食','副食','饮品','套餐'},
														'午餐':{'主食','副食','饮品','套餐'},
														'晚餐':{'主食','副食','饮品','套餐'}}">
													</s:set>
													<s:doubleselect
														label="子类别"
														name="childType"
														list="#types.keySet()"
														doubleName="type"
														doubleList="#types[top]">													
													
													</s:doubleselect>
												</s:form> --%>
												<div class="select">
													<label> <select name="meal.mealType">
															<option value="早餐_主食" selected="selected">早餐主食</option>
															<option value="早餐_副食">早餐副食</option>
															<option value="早餐_饮品">早餐饮品</option>
															<option value="早餐_套餐">早餐套餐</option>
															<option value="午餐_主食">午餐主食</option>
															<option value="午餐_辅食">午餐副食</option>
															<option value="午餐_饮品">午餐饮品</option>
															<option value="午餐_套餐">午餐套餐</option>
															<option value="晚餐_主食">晚餐主食</option>
															<option value="晚餐_辅食">晚餐副食</option>
															<option value="晚餐_饮品">晚餐饮品</option>
															<option value="晚餐_套餐">晚餐套餐</option>
													</select> </label>
												</div>

											</div>
											<div class="form-group">
												<label>商品数量</label> <input class="form-control"
													placeholder="数量" name="meal.mealAmount">
											</div>
											<div class="form-group">
												<label>上架时间</label> <input class="form-control"
													placeholder="格式如：2030-01-01" name="meal.saleTime">

											</div>
											<div class="form-group">
												<label>商品图片</label> <input type="file"
													name="meal.images_path">
											</div> 
										
											<button type="submit" class="btn btn-default" onclick="ensureAdd()">确认</button>
											<button type="reset" class="btn btn-default">重置</button>
										</form>
									</div>
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

	<script type="text/javascript">
		function ensureAdd(){
			alert("添加成功")
		}
	</script>
</body>
</html>

