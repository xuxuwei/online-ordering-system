<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>添加顾客界面</title>
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
					<li><a href="backCustomer.action">顾客信息管理</a>
					</li>
					<li class="active">添加顾客</li>
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
										<form role="form" method="post"
											action="backCustomer!addSuccess.action" name="form1"
											onsubmit="return checkreg()">
											<div class="form-group">
												<label>姓名</label><input class="form-control" id="User"
													name="user.userName" /> <span id="uname"></span>
											</div>
											<div class="form-group">
												<label>密码</label> <input type="password" id="Pwd"
													class="form-control" placeholder="密码不能为空"
													name="user.userPassword" />
											</div>
											<div class="form-group">
												<label>确认密码</label> <input type="password" id="Pwdagain"
													class="form-control" placeholder="密码不能为空"
													name="user.userPassword" />
											</div>
											<div class="form-group">
												<label>电话</label> <input class="form-control"
													id="Phone" placeholder="电话不能为空号" name="user.userTel" />
											</div>

											<div class="form-group">
												<label>邮箱</label> <input class="form-control" id="Email" name="user.userEmail"/>


											</div>
											<input type="hidden" name="user.role.roleId" value="1">
											<button type="submit" class="btn btn-default" />
											确认
											</button>
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
		function ensureAdd() {
			alert("添加成功")
		}
	</script>
	<script type="text/javascript">
	
	function checkreg()
  {
            if (document.form1.User.value=="")
   {
    alert("请输入您的用户名!");
    form1.User.focus();
    return false;
   }
            if (document.form1.User.value.length<4 || document.form1.User.value.length>15)
   {
    alert("用户名长度限制在4-15位!");
    form1.User.focus();
    return false;
   }
                        if (document.form1.Pwd.value=="")
   {
    alert("请输入密码!");
    form1.Pwd.focus();
    return false;
   }
                        if (document.form1.Pwd.value.length<6 || document.form1.Pwd.value.length>15)
   {
    alert("密码长度限制在6-15位!");
    form1.Pwd.focus();
    return false;
   }
            if(document.form1.Pwd.value!=document.form1.Pwdagain.value)
   {
    alert("两次输入的密码不同!")
    form1.Pwd.focus();
    return false;
   }
      if (document.form1.Phone.value=="")
   {
    alert("请输入您的电话号码!");
    form1.Phone.focus();
    return false;
   }
   if (document.form1.Phone.value.length!=11)
   {
    alert("电话号码长度为11!");
    form1.Phone.focus();
    return false;
   }
    if (document.form1.Email.value=="")
   {
    alert("请输入您的Email地址!");
    form1.Email.focus();
    return false;
   }
      var myRegex  =  /^([0-9]|[a-z])+@([0-9]|[a-z])+(\.[c][o][m])$/i;
      var email = form1.Email.value;
       
                        //验证电子邮件的有效性
     if (email != "" && !myRegex.test(email))
      {
        alert ("请输入有效的E-MAIL!");
        form1.Email.focus();
        return false;
      }
                       return true;
  }
     
	</script>





	<script type="text/javascript">
		
		
		
		
		
		function checkname() //检查用户名
		{	
			var myname = document.getElementById("txtuname").value;
			alert(myname)
			var myDivname = document.getElementById("uname");
			if (myname == "") {
				myDivname.innerHTML = "<font color='red'>用户名不能为空!</font>";
				return false;
			}
			for ( var i = 0; i < myname.length; i++) {
				var text = myname.charAt(i);
				if (!(text<=9&&text> = 0) && !(text >= 'a' && text <= 'z')
						&& !(text >= 'A' && text <= 'Z') && text != "_") {
					myDivname.innerHTML = "<font color='red'>用户名只能是数字、字母、下划线组成！</font>";
					break;
				}
			}
			if (i >= myname.length) {
				myDivname.innerHTML = "<font color='red'>√</font>";
				return true;
			}
		}

		function checkuserpassword() //检查密码 
		{
			var mypassword = document.getElementById("txtuserpassword").value;
			var myDivpassword = document.getElementById("userpassword");
			if (mypassword == "") {
				myDivpassword.innerHTML = "<font color='red'>密码不能为空!</font>";
				return false;
			} else if (mypassword.length < 6) {
				myDivpassword.innerHTML = "<font color='red'>密码至少应为六位!</font>";
				return false;
			} else {
				myDivpassword.innerHTML = "<font color='red'>√</font>";
				return true;
			}
		}

	/* 	function checkpwdagin() //检查确认密码
		{
			var myispassword = document.getElementById("txtpwdagin").value;
			var myDivispassword = document.getElementById("pwdagin");
			if (myispassword == "") {
				myDivispassword.innerHTML = "<font color='red'>确认密码不能为空!</font>";
				return false;
			} else if (document.getElementById("txtuserpassword").value != document
					.getElementById("txtpwdagin").value) {
				myDivispassword.innerHTML = "<font color='red'>确认密码与密码不一致!</font>";
				return false;
			} else {
				myDivispassword.innerHTML = "<font color='red'>√</font>";
				return true;
			}
		} */

		function checktelephone() //检查电话号码
		{
			var mytelephone = document.getElementById("txttelephone").value;
			var myDivtelephone = document.getElementById("telephone");
			if (mytelephone != "") {
				var reg = /^[0-9]{11}$/i;
				if (!reg.test(mytelephone)) {
					myDivtelephone.innerHTML = "<font color='red'>只能输入11位数字！例：13595144582或08514785214</font>";
					return false;
				} else {
					myDivtelephone.innerHTML = "<font color='red'>√</font>";
					return true;
				}
			} else {
				myDivtelephone.innerHTML = "<font color='red'>√</font>";
				return true;
			}
		}

		function checkemail() //检查E-mail
		{
			var myemail = document.getElementById("txtemail").value;
			var myDivemail = document.getElementById("email");
			if (myemail != "") {
				if (myemail.indexOf("@") == -1 || myemail.indexOf(".") == -1
						|| (myemail.indexOf("@") > myemail.indexOf("."))) {
					myDivemail.innerHTML = "<font color='red'>E-mail格式不正确！例：jiie@163.com</font>";
					return false;
				} else {
					myDivemail.innerHTML = "<font color='red'>√</font>";
					return true;
				}
			} else {
				myDivemail.innerHTML = "<font color='red'>√</font>";
				return true;
			}
		}

		/* function checkall() //检查所有
		{
			if (checkname() && checkuserpassword() 
					&& checktelephone() && checkemail()) {
				return true;
				window.location.href="backCustomer!addSuccess.action"
			}
			window.location.href="backCustomer!addUser.action"
			return false;
		}  */
	</script>

</body>
</html>

