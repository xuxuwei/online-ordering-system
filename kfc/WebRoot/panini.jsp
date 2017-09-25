<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Home</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<style type="text/css">
.category_box ul {
	display: none;
	list-style-type: none;
}

.category_box ul li {
	height: 23px;
	font-size:12;
	line-height: 20px;
	border-bottom: 3px #F0DFD4 solid;
}
.category_box ul li:HOVER{
background-color: #FF0000;
font-size: 15px;
color: #0B1012;
}
.category_box span {

display:inline-block;
	width: 100%;
	height: 35px;
}
</style>

<script type="text/javascript">
	function showOrHide(id) {
		var submenus = document.getElementsByName("submenu");
		var len = submenus.length;
		for(var i=0;i<len;i++){
	    var submenu = document.getElementById("submenu0" + (i+1));
	    if(id==(i+1)){
	    if (submenu.style.display == "" || submenu.style.display == null
				|| submenu.style.display == "none") {
			//隐藏DIV
			submenu.style.display = "block";
			
		} else {
			//显示div
			submenu.style.display = "none";
			
		}
		}
	    else {
			//显示div
			submenu.style.display = "none";
			
		}
		}
		//获取对应的子菜单
		
		//console.log(submenu.style.display);
		//首先判断子菜单是否显示
		
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
		           <div style="margin-top:-6%;margin-right:-3%;float:right;color:#FFFFFF;font-family:宋体;">	当前系统时间为：<span id="time"></span>
		          </div>
				 <div style="margin-top:-13%;margin-right:24%;float:right;"> 
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
		   <div class="banner">
			 <img src="images/banner.png" class="img-responsive" alt=""/>
		   </div>
		   <div class="row content">
		   	<div class="col-md-3 content_top">
		   	   <div class="category_box" style="height: 600px;">
		   	  	<div class="mulu" style="height: 150px;width: 100%;"><img src="images/mulu.png" height="100%" width="100%" alt=""/></div>
		   	   <span id="menu01" onClick="showOrHide(1)"  style="background-color: #00B025;color: #FFFFFF;"><p style="font-size: 25px;font-family:宋体;">早餐(5:45-9:14)</p></span>
		       <ul id="submenu01" name="submenu">
			   	  	<li><a href="meal.action?meal.mealName=1">帕尼尼</a></li>
			   	  	<li><a href="meal.action?meal.mealName=2">美味汉堡</a></li>
			   	  	<li><a href="meal.action?meal.mealName=3">法风烧饼麦饼被蛋卷</a></li>
			   	  	<li><a href="meal.action?meal.mealName=4">现熬好粥</a></li>
			   	  	<li><a href="meal.action?meal.mealName=5">小食配餐</a></li>
			   	  	<li><a href="meal.action?meal.mealName=6">缤纷饮料</a></li>
			   	  	</ul><br>
		<span id="menu02" onClick="showOrHide(2)" style="background-color: #F58316;color: #FFFFFF;"><p style="font-size: 25px;font-family:宋体;">正餐(9:15-22:44)</p></span>
		<ul id="submenu02" name="submenu">
			   	  	<li><a href="meal.action?meal.mealName=7">团享餐</a></li>
			   	  	<li><a href="meal.action?meal.mealName=8">超值多人餐</a></li>
			   	  	<li><a href="meal.action?meal.mealName=9">美味汉堡</a></li>
			   	  	<li><a href="meal.action?meal.mealName=10">轻松卷类</a></li>
			   	  	<li><a href="meal.action?meal.mealName=11">k记饭桶</a></li>
			   	  	<li><a href="meal.action?meal.mealName=12">缤纷小食</a></li>
			   	  	<li><a href="meal.action?meal.mealName=13">陨指原味鸡</a></li>
			   	  	<li><a href="meal.action?meal.mealName=14">丰富配餐</a></li>
			   	  	<li><a href="meal.action?meal.mealName=15">甜品/儿童餐</a></li>
					<li><a href="meal.action?meal.mealName=16">缤纷饮料</a></li>
					</ul><br>
		<span id="menu03" onClick="showOrHide(3)" style="background-color: #0C1A43;color: #FFFFFF;"><p style="font-size: 25px;font-family:宋体;">夜宵(22:45-次日5:44)</p></span>
		<ul id="submenu03" name="submenu">
					<li><a href="meal.action?meal.mealName=17">双人分享</a></li>
					<li><a href="meal.action?meal.mealName=18">美味汉堡</a></li>
					<li><a href="meal.action?meal.mealName=19">现熬好粥</a></li>
					<li><a href="meal.action?meal.mealName=20">小食配餐</a></li>
					<li><a href="meal.action?meal.mealName=21">缤纷饮料</a></li>
		   	     </ul>
		   	     <div style="margin-bottom: 0px;"><p style="font-size:9px;color: #A2A2CE ;"><br>注：早餐、夜宵仅限部分肯德基宅急送送餐区域供应。肯德基宅急送实行专属菜单及价格，不同城市的送餐菜单有所不同。不同时段产品品项及价格有所不同</p></div>
		   	   </div>
		   	   <ul class="product_reviews">
		   	   	<h3><i class="arrow"> </i><span>商品评论</span></h3>
		   	   	<li>
		   	   		<ul class="review1">
		   	   			<li class="review1_img"><img src="images/pic1.jpg" class="img-responsive" alt=""/></li>
		   	   			<li class="review1_desc"><h3><a href="#">这件商品我强烈推荐，非常值得购买！</a></h3><p>2016年12月10日</p></li>
		   	   			<div class="clearfix"> </div>
		   	   		</ul>
		   	   	</li>
		   	   	<li>
		   	   		<ul class="review1">
		   	   			<li class="review1_img"><img src="images/pic2.jpg" class="img-responsive" alt=""/></li>
		   	   			<li class="review1_desc"><h3><a href="#">哇！太好吃了，回味无穷啊!</a></h3><p>2016年12月16日</p></li>
		   	   			<div class="clearfix"> </div>
		   	   		</ul>
		   	   	</li>
		   	   	<li>
		   	   		<ul class="review1">
		   	   			<li class="review1_img"><img src="images/pic3.jpg" class="img-responsive" alt=""/></li>
		   	   			<li class="review1_desc"><h3><a href="#">这是我吃过的最好吃的东西！</a></h3><p>2016年12月20日</p></li>
		   	   			<div class="clearfix"> </div>
		   	   		</ul>
		   	   	</li>
		   	    <div class="but">
			       <a href="#">更多评论<i class="but_arrow"> </i></a>
			    </div>
		   	   </ul>
		   	   <ul class="product_reviews">
		   	   	 <h3><i class="arrow"> </i><span>支付方式（目前只支持两种）</span></h3>
		   	   	 <img src="images/payment.png" class="img-responsive" alt=""/>
		   	   </ul>
		   	</div>
		   	<div class="col-md-9">
		   	   <%-- <ul class="feature">
		   	   	 <h3><i class="arrow"> </i><span>Today's Featured Products</span></h3>
		   	   </ul>
		   	    <ul class="feature_grid">
		   	     <c:forEach items="${result}" var="r">
				 <li class="grid1"><a href="single.jsp"><img src="${r.images_path}"  class="img-responsive" alt=""/>
				 	<p>${r.mealIntroduce}</p>
				 	<div class="price">Price:
					  <span class="actual">${r.mealPrice}"</span>
					</div>
				    <div class="but1">
			          <a href="#">Buy Now</a>
			          <ul class="product_but">
						  	<li class="but3">Buy</li>
						  	<li class="like"><span>120</span><i class="like1"> </i></li>
						  	<div class="clearfix"> </div>
						  </ul>
			        </div>
			        
				 </li>	
				  
				 </c:forEach>	 --%> 
			
				 <div class="clearfix"> </div>
		   	   </ul>
		   	    <ul class="feature">
		   	   	 <h3><i class="arrow"> </i><span>搜索结果</span></h3>
		   	   </ul>
		   	   <div class="row content_bottom">
		   	    <c:forEach items="${result}" var="r">
			   	   <div class="col-md-3">
			   	   	<div class="content_box"><a href="xiangxi.action?meal.id=${r.id}">
			   	   	  	<div class="view view-fifth">
			   	   	     <img src="${r.images_path}" class="img-responsive" alt="22"/>
				   	   	 <div class="content_box-grid">
				   	   	  <p class="m_1">${r.mealIntroduce}</p>
				   	   	  <div class="price">价格:
						    <span class="actual">${r.mealPrice}</span>
						  </div>
						  <ul class="product_but">
						  	<li class="but3">购买</li>
						  	<li class="like"><span>120</span><i class="like1"> </i></li>
						  	<div class="clearfix"> </div>
						  </ul>
						   <div class="mask">
	                         <div class="info">Quick View</div>
			               </div>
			             </div>
				   	   	</div>
			   	   	   </a>
			   	   	  </div>
			   	   </div>
			   	    </c:forEach>	 
		    </div>
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
