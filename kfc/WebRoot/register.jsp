<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script type="text/javascript">
	//定时器
	//var mytimeout;

	function showTime() {
		var today = new Date();

		var year = today.getFullYear();
		var month = today.getMonth() + 1;
		var date = today.getDate();

		var hour = today.getHours();
		var minute = today.getMinutes();
		var seconds = today.getSeconds();

		if (month < 10) {
			month = "0" + month;
		}
		if (date < 10) {
			date = "0" + date;
		}
		if (hour < 10) {
			hour = "0" + hour;
		}
		if (minute < 10) {
			minute = "0" + minute;
		}
		if (seconds < 10) {
			seconds = "0" + seconds;
		}

		var str = year + "-" + month + "-" + date + " " + hour + ":" + minute
				+ ":" + seconds;

		document.getElementById("time").innerHTML = str;

		window.setTimeout("showTime()", 1000);
	}
	
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Register</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!----webfonts---->
<link href='http://fonts.googleapis.com/css?family=Exo+2:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript">
function checkuser() 
{ 
	var str = document.getElementById("user").value;
	var str1 = document.getElementById("password").value;
	var str2 = document.getElementById("tel").value;
	var str3 = document.getElementById("email").value;
	var str4 = document.getElementById("repassword").value;
	 if(str.match(/^[^x00-xff]+$/))
{
  if(str.length>7||str.length<2)
{
   alert("对不起，用户名汉字只能在2-7个间");
   return false;
}
}
 else if(str.match(/^[a-zA-Z]*$/))
{
  if(str.length>14||str.length<4)
{
   alert("对不起，用户名字母只能在4-14个间");
   return false;
}
}
 else
{
  alert("用户名只允许输入字符或汉字");
  
   return false;
}
 if(str1.length>7||str1.length<2)
	{
	   alert("对不起，密码字符数只能在2-7个间");
	   return false;
	}
 if(str2.length!=11)
	{
	   alert("对不起，电话号码字符数只能为11个");
	   return false;
	}
 if(str3.slice(-7)!="@qq.com")
	{
	  
	   alert("对不起，邮箱地址不满足@qq.com结尾");
	   return false;
	}
 if(str3.length<12)
	{
	   alert("对不起，邮箱字符数只能不少于11个");
	   return false;
	}
 if(str1!=str4)
	{
	   alert("对不起，两次输入密码不一样");
	   return false;
	}
} 
</script>
</head>
<body onLoad="showTime()">
	<div class="header">
		<div class="container">
		  <div class="header_top">
			<ul class="phone">
				<li class="phone_left"><i class="mobile"> </i><span>1-200-346-2986</span></li>
				<li class="phone_right">Free Ground Shipping for Products over $100</li>
				<div class="clearfix"></div>
			</ul>
			<ul class="social">
				 <li><a href=""> <i class="tw"> </i> </a></li>
				 <li><a href=""><i class="fb"> </i> </a></li>
				 <li><a href=""><i class="rss"> </i> </a></li>
				 <li><a href=""><i class="msg"> </i> </a></li>
				 <div class="clearfix"> </div>
			</ul>
			<ul class="account">
				<li><a href="person.action">我的账单</a></li>
			</ul>
			<ul class="shopping_cart">
			   <a href="cart0.jsp"><li class="shop_left"><i class="cart"> </i><span>商品${cart }件</span></li></a>
			   <a href="#"><li class="shop_right"><span>共${price }元</span></li></a>
			   <div class="clearfix"> </div>
			</ul>
			<div class="clearfix"></div>
		</div>
		<div class="header_bottom">
		  <div class="header_nav">
      		<div class="logo">
				<a href="index.jsp"><img src="images/logo.png" alt=""  /><br></a>
			 </div>
			 <nav class="navbar navbar-default menu" role="navigation"><h3 class="nav_right"><a href="index.html"><img src="images/logo.png" class="img-responsive" alt=""/></a></h3>
			  <div class="container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			    </div>
				<!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"style="margin-right:100px;">
			      <ul class="nav navbar-nav menu1">
			      	<li class="active"><a href="index.jsp">首页</a></li>
			        <li><a href="fruits.jsp">浏览菜单</a></li>
			        <li><a href="person.action">个人中心</a></li>
			        <li><a href="phone.jsp">手机客户端</a></li>
					<li><a href="store.jsp">联系我们</a></li>
			        <li><a href="help_new.jsp">帮助中心</a></li>
		          </ul>
		         <div style="margin-top:-6%;margin-right:-15%;float:right;color:#FFFFFF;font-family:宋体;">	当前系统时间为：<span id="time"></span>
		          </div>
		          <div style="margin-top:-14%;margin-right:12%;float:right;"> 
				  <ul >
				
                <c:choose>  
                <c:when test="${user!=null}">
                    <li class="login_top"><i class="sign"> </i><span style=" color:#00FF00;font-size:12 ;font-family:宋体;">您好，${user.userName}</span></li>
		            <a href="loginServlet?method=quit"><li class="login_bottom"><i class="register"> </i><span style="color:#00FF00;font-size:12 ;font-family:宋体;">退出登录</span></li></a>
		         </c:when>  
		          <c:otherwise> 
		           <li class="login_top"><i class="sign"> </i><span style=" color:#00FF00;font-size:12 ;font-family:宋体;">未登录</span></li>
                 </c:otherwise>  
                 </c:choose>
		         </ul>
		         </div>
		          <ul class="login">
		             <c:choose>  
		           <c:when test="${user!=null}">
		          
		            <a href="register.jsp"><li class="login_bottom"><i class="register"> </i><span>注册</span></li></a>
		          </c:when> 
		           <c:otherwise> 
		         <a href="account.jsp"><li class="login_top"><i class="sign"> </i><span>登录</span></li></a>
		            <a href="register.jsp"><li class="login_bottom"><i class="register"> </i><span>注册</span></li></a>
                 </c:otherwise>  
                 </c:choose>
		           
		          </ul>
			       <div class="clearfix"></div>
			      </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
            <div class="clearfix"></div>
           </div>
            <div class="search">
			 <form action="ss.action" method="post">
						<input type="text" class="text" name="meal.mealName" placeholder="请输入你想搜索的内容" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Product Details';}"/>
			  <input type="submit" value="搜索"/>
						</form>
			</div>
		 </div>  
		</div>
	</div>
    <div class="main">
		<div class="container">
		  <div class="Product_top">
		  	  <form onsubmit="return checkuser()" action="register.action" method="post" name="myform"> 
				 <div class="register-top-grid" align="center">
					<h3>用户信息</h3>
					<table align="center" border="10">
					<tr><span>用户名<label>*</label></span>
						<input type="text" name="user.userName" id="user"> 
                        </tr>
                    <tr>
						<span>电话<label>*</label></span>
						<input type="text" name="user.userTel" id="tel"> 
					</tr><br>
					 <tr>
						<span>邮箱<label>*（目前只满足qq邮箱注册）</label></span>
						<input type="text" name="user.userEmail" id="email"> 
					</tr><br>
					<tr>
						 <span>密码<label>*</label></span>
						 <input type="password" name="user.userPassword" id="password"> 
					</tr><br>
					<tr>
						 <span>确定密码<label>*</label></span>
						 <input type="password"  id="repassword"> 
					 </tr><br>
					 
					 <tr>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>已经阅读完KFC使用手册</label>
					   </a>
				
					</tr>
					  <input type="submit" value="注册">	
					</div>
				</form>
				  <div class="clearfix"> </div>
					<div class="register-but">
					   <form>
						
						 <div class="clearfix"> </div>
						</form>
					</div>
					</table>
			</div>
	  </div>
	</div>
   <div class="footer">
		<div class="container">
			<div class="footer-grid footer-grid1">
			  <h3 class="m_2">公司</h3>
			  <ul class="list1">
			  	<li><a href="#">主页</a></li>
			    <li><a href="#">关于我们</a></li>
			    <li><a href="#">博客</a></li>
			    <li><a href="#">最新消息</a></li>
			    <li><a href="#">登录</a></li>
			    <li><a href="#">加入我们</a></li>
			  </ul>
		   </div>
		   <div class="footer-grid footer-grid2">
			  <h3 class="m_2">伙伴</h3>
			  <ul class="list1">
			  	<li><a href="#">法律条款</a></li>   
			    <li><a href="#">隐私条款</a></li>
			    <li><a href="#">经营公示</a></li>
			    <li><a href="#">联系我们</a></li>
			    <li><a href="#">加入我们</a></li>
			    <li><a href="#">经营性网站备案信息</a></li>
			  </ul>
		   </div>
		   <div class="footer-grid footer-grid3">
			  <h3 class="m_2">信息</h3>
			  <ul class="list1">
			  	<li><a href="#">我的账单</a></li>
			    <li><a href="#">奖励</a></li>
			    <li><a href="#">项目条款</a></li>
			    <li><a href="#">购买条款</a></li>
			    <li><a href="#">FAQ</a></li>
			  </ul>
		   </div>
		   <div class="footer-grid footer-grid4">
			   <h3 class="m_2">让我们成为朋友</h3>
			   <ul class="footer_social">
				 <li><a href=""> <i class="tw"> </i> </a></li>
				 <li><a href=""><i class="fb"> </i> </a></li>
				 <li><a href=""><i class="rss"> </i> </a></li>
				 <li><a href=""><i class="msg"> </i> </a></li>
				 <div class="clearfix"> </div>
			   </ul>
			   <h3 class="m_3">贡献</h3>
			   <p class="m_4">aliquam erat volutpat. Ut wisi</p>
			   <div class="footer_search">
			    <input type="text" class="text" value="Enter Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Email';}">
			    <input type="submit" value="Search">
			   </div>
		   </div>
		   <div class="footer-grid footer-grid_last">
	          <ul class="secure">
			  	<li class="secure_img"><img src="images/secure.png" alt=""/></li> 
			  	<li class="secure_desc">Lorem ipsum dolor coadipiscing</li>
			  	<div class="clearfix"> </div>
			  </ul>
			  <ul class="secure">
			  	<li class="secure_img"><img src="images/order.png" alt=""/></li> 
			  	<li class="secure_desc">Lorem ipsum dolor coadipiscing</li>
			  	<div class="clearfix"> </div>
			 </ul>
		   </div>
		   <div class="clearfix"> </div>
		   <div class="copy">
		    <p>版权所有 百胜（中国）投资有限公司 沪ICP备05031779号</p>
		</div>
	   </div>
	</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
