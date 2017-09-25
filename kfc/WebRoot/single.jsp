<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>Single</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
 <!----details-product-slider--->
				<!-- Include the Etalage files -->
					<link rel="stylesheet" href="css/etalage.css">
					<script src="js/jquery.etalage.min.js"></script>
				<!-- Include the Etalage files -->
				<script>
						jQuery(document).ready(function($){
			
							$('#etalage').etalage({
								thumb_image_width: 300,
								thumb_image_height: 400,
								
								show_hint: true,
								click_callback: function(image_anchor, instance_id){
									alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
								}
							});
							// This is for the dropdown list example:
							$('.dropdownlist').change(function(){
								etalage_show( $(this).find('option:selected').attr('class') );
							});

					});
				</script>
				<!----//details-product-slider--->	
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
				 <div style="margin-top:-14%;margin-right:13%;float:right;"> 
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
		  <div class="single">
		   <div class="row content">
		   	<div class="col-md-3">
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
		   	   <div class="single_image">
					     <ul id="etalage">
							<li>
								<a href="optionallink.jsp">
									<img class="etalage_thumb_image" src="images/s1.jpg" class="img-responsive" alt=""/>
									<img class="etalage_source_image"  src="images/s1.jpg" class="img-responsive" alt=""/>
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image"  src="images/s2.jpg" class="img-responsive" alt=""/>
								<img class="etalage_source_image"  src="images/s2.jpg" class="img-responsive" alt=""/>
							</li>
							<li>
								<img class="etalage_thumb_image"  src="images/s3.jpg" class="img-responsive" alt=""/>
								<img class="etalage_source_image"  src="images/s3.jpg" class="img-responsive" alt=""/>
							</li>
							<li>
								<img class="etalage_thumb_image"  src="images/s1.jpg" class="img-responsive" alt=""/>
								<img class="etalage_source_image"  src="images/s1.jpg" class="img-responsive" alt=""/>
							</li>
							<li>
								<img class="etalage_thumb_image"  src="images/s2.jpg" class="img-responsive" alt=""/>
								<img class="etalage_source_image"  src="images/s2.jpg" class="img-responsive" alt=""/>
							</li>
							<li>
								<img class="etalage_thumb_image"  src="images/s3.jpg" class="img-responsive" alt=""/>
								<img class="etalage_source_image"  src="images/s3.jpg" class="img-responsive" alt=""/>
							</li>
							<li>
								<img class="etalage_thumb_image"  src="images/s1.jpg" class="img-responsive" alt=""/>
								<img class="etalage_source_image"  src="images/s1.jpg" class="img-responsive" alt=""/>
							</li>
						</ul>
					    </div>
					    <div class="single_right">
				        <!-- 	<h3>hendrerit in vulputate velit </h3> -->
				        	<p class="m_5"><img src="${xiang.images_path}"  alt=""/></p>
				        	<div class="price_single">
							  <span class="reducedfrom">$66.00</span>
							  <span class="actual1">${xiang.mealPrice}</span><a href="#">点击当即送货</a>
							</div>
				        	
							<div class="btn_form">
							   <form action="buy.action" method="post">
							 <input  type="hidden" name="meal.id" value="${xiang.id}"/>
								 <input type="submit" value="加入购物车" title="">
							  </form>
							</div>
							<ul class="add-to-links">
    			              <li><img src="images/wish.png" alt=""><a href="#">添加您的美好愿望</a></li>
    			            </ul>
							<div class="col-xs-12  col-sm-6  col-md-4">
				              <div class="banners--small  banners--small--social">
				                <a href="#" class="social"><i class="zocial-facebook"> </i>
				                <span class="banners--small--text"> 分享到<br>脸谱网</span>
				                <div class="clearfix"> </div>
				                </a>
				              </div>
            				</div>
                            <div class="col-xs-12  col-sm-6  col-md-4">
				              <div class="banners--small  banners--small--social">
				                <a href="#" class="social"><i class="zocial-twitter"> </i>
				                <span class="banners--small--text"> 分享到<br>推特</span>
				                <div class="clearfix"> </div>
				                </a>
				              </div>
            				</div>
                            <div class="col-xs-12  col-sm-6  col-md-4">
				              <div class="banners--small  banners--small--social">
				                <a href="#" class="social"><i class="zocial-pin"> </i>
				                <span class="banners--small--text">分享到<br>微博</span>
				                <div class="clearfix"> </div>
				                </a>
				              </div>
            			   </div>
           </div>
		   <div class="clearfix"> </div>
		   <!----product-rewies---->
			<div class="product-reviwes">
				<!--vertical Tabs-script-->
				<!---responsive-tabs---->
					<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
					<script type="text/javascript">
						$(document).ready(function () {
							 $('#horizontalTab').easyResponsiveTabs({
									type: 'default', //Types: default, vertical, accordion           
									width: 'auto', //auto or any width like 600px
									fit: true,   // 100% fit in a container
									closed: 'accordion', // Start closed if in accordion view
									activate: function(event) { // Callback function if tab is switched
									var $tab = $(this);
									var $info = $('#tabInfo');
									var $name = $('span', $info);
										$name.text($tab.text());
										$info.show();
									}
								});
													
							 $('#verticalTab').easyResponsiveTabs({
									type: 'vertical',
									width: 'auto',
									fit: true
								 });
						 });
					</script>
				<!---//responsive-tabs---->
				<!--//vertical Tabs-script-->
				<!--vertical Tabs-->
        		<!-- <div id="verticalTab">
		            <ul class="resp-tabs-list">
		                <li>Description</li>
		                <li>Product tags</li>
		                <li>Product reviews</li>
		            </ul>
		            <div class="resp-tabs-container vertical-tabs">
		                <div>
		                	<h3> Details</h3>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor. Integer laoreet placerat suscipit. Sed sodales scelerisque commodo. Nam porta cursus lectus. Proin nunc erat, gravida a facilisis quis, ornare id lectus. Proin consectetur nibh quis urna gravida mollis.</p>
		               		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor</p>
		                </div>
		                <div>
		                	<h3>Product Tags</h3>
		                	<h4>Add Your Tags:</h4>
		                	<form>
		                		<input type="text"> <input type="submit" value="ADD TAGS"/>
		                		<span>Use spaces to separate tags. Use single quotes (') for phrases.</span>
		                	</form>
		                </div>
		                <div>
		                	<h3>Customer Reviews</h3>
		                	<p>There are no customer reviews yet.</p>
		                </div>
		            </div>
       		     </div> -->
       		     
       		     
       		     <div class="clearfix"> </div>
		      </div>
		      <div class="related_products">
		      	<h3>相关产品</h3>
		      	<div class="row">
		      		<div class="col-md-4 related">
		      			<img src="images/lunch_03_06.png" class="img-responsive" alt=""/>
		      		</div>
		      		<div class="col-md-4 related">
		      			<img src="images/lunch_03_07.png" class="img-responsive" alt=""/>
		      		</div>
		      		<div class="col-md-4">
		      			<img src="images/lunch_03_08.png" class="img-responsive" alt=""/>
		      		</div>
		      	</div>
		      </div>
		   </div>    
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
