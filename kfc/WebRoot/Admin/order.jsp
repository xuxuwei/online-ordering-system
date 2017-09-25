<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.newer.dao.impl.back.OrderDAOimpl" %>
<%@ page import="com.newer.pojo.Order" %>
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
<title>订单信息界面</title>
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
				<li><a href="empty.jsp"></a></li>

			</ul>

		</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header"></h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp">主页</a></li>
					<li><a href="backOrder.action">订单管理</a></li>
					<li class="active">订单</li>
				</ol>

			</div>
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<a href="backOrder!addOrder.action">添加订单</a>

							</div>

							<div class="panel-body">


								<div class="panel-group" id="accordion">

									<table class="table table-striped table-bordered table-hover ">


										<s:iterator value="#request.orders" var="order1">
											<tr class="danger" id="${order1.id}" name="orderTr" >
												<td>
													<div class="panel panel-default">
														<div class="panel-heading">
															<h4 class="panel-title">
																<!-- <input type="checkbox" value="id" name="order"> -->
																<button type="button" class="btn btn-default"
																	id="send${order1.id}" name="sendButton"
																	onclick="send(${order1.id})">配送</button>
																<a data-toggle="collapse" data-parent="#accordion"
																	href="#collapse${order1.id}" class="collapsed ">订单号：${order1.id}，订单总额：${order1.orderTotal
																	}，下单时间：${order1.orderDate }</a>
																
															</h4>
														</div>
														<div id="collapse${order1.id}"
															class="panel-collapse collapse" style="height: 0px;">
															<div class="panel-body">
																<div class="table-responsive">

																	<table
																		class="table table-striped table-bordered table-hover">
																		<thead>
																			<tr>
																				<th>订单信息</th>
																				<th></th>
																				<th></th>

																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td>${order1}</td>

																				<td><a
																					href="backOrder!modifyOrder.action?order.id=${order1.id}">修改</a>
																				</td>
																				<td><a
																					href="backOrder!deleteOrder.action?order.id=${order1.id}" onclick="delete_confirm()">删除</a>
																				</td>
																			</tr>
																		</tbody>
																	</table>

																</div>
															</div>
														</div>
												</td>
											</tr>
										</s:iterator>
										
									</table>
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

		});
	</script>
	<script language="javascript">
		function send(obj) {

			var c = document.getElementById(obj);
           	if(c.className=="success"){
			window.location.href = "backOrder!DisendOrderById.action?order.id="+obj; 
           		c.className="danger"
           	}
           	else if(c.className=="danger"){
			window.location.href = "backOrder!sendOrder.action?order.id="+obj; 
           		c.className="success"
           	}
		}
	<%-- 	window.onload=function(){
			var c=document.getElementsByName("orderTr");
			var c1=document.getElementById("1");
			<%
				OrderDAOimpl orderimpl=new OrderDAOimpl();
				Order o=new Order();
				List<Order> orders=orderimpl.selectAll();
				
				for(int i=0;i<orders.size();i++){
				System.out.println("order1"+orders.get(i));
				o=orders.get(i);
				if(o.getBoolean()=="是")%><%	{	
				String id=""+i;
				System.out.println(id);
			%>
				var c1=document.getElementById(<%=id%>)
				alert(c[<%=i%>])
				c1.className="success";
				<%
				}
				}
				%>
		} --%>
		function cli(Obj) {
			var collid = document.getElementById("selectAll")
			var coll = document.getElementsByName(Obj)
			if (collid.checked) {
				for ( var i = 0; i < coll.length; i++)
					coll[i].checked = true;
			} else {
				for ( var i = 0; i < coll.length; i++)
					coll[i].checked = false;
			}
		}
		function cli1() {
			var coll = document.getElementsByName("order")

			for ( var i = 0; i < coll.length; i++) {
				coll[i].checked = true;
			}

		}
		function cli2() {
			var coll = document.getElementsByName("order")
			{
				for ( var i = 0; i < coll.length; i++)
					coll[i].checked = false;
			}
		}
	</script>
	<script language="JavaScript">             
			function delete_confirm() {
				event.returnValue = confirm("删除是不可恢复的，你确认要删除吗？");
			}
		</script>
	<!-- Custom Js -->
	<script src="assets/js/custom-scripts.js"></script>
	<script language="javascript">
		</body>
		</html>
	