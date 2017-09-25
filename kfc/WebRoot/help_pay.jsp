<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>Fruits</title>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/help.css"/>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css"/>
<link rel="stylesheet" type="text/css" href="css/style2.css"/>
<title>肯德基宅急送官方网站-www.4008823823--订餐官网</title>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/jquery.ui.yumdialog.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript">
$(function(){$("a").bind("focus",function() {if(this.blur) {this.blur()};});});
function addfavo() {  
	 var url = 'http://www.4008823823.com.cn/';
	 var title = "肯德基宅急送";
	 try {  
	           window.external.AddToFavoritesBar(url, title); //IE7、IE8、IE9
	       } catch (e) {  
	           try {  
	               window.external.addFavorite(url, title); //IE6  
	           } catch (e) {  
	               try {  
	                   window.sidebar.addPanel(title, url, title); //FireFox  
	               } catch (e) {  
	               	// Chrome
	               	base.yumAlert("请使用浏览器的添加收藏夹功能收藏本网站!"); 
	               }  
	           }  
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
		          <div style="margin-top:-6%;margin-right:-3%;float:right;color:#FFFFFF;font-family:宋体;">	当前系统时间为：<span id="time"></span>
		          </div>
			<div style="margin-top:-25%;margin-right:10%;float:right;"> 
				  <ul >
				
                <c:choose>  
                <c:when test="${user!=null}">
                    <li class="login_top"><i class="sign"> </i><span style=" color:#00FF00;font-size:12 ;font-family:宋体;">您好，${user.userName}</span></li>
		            &nbsp;<a href="loginServlet?method=quit"><li class="login_bottom"><i class="register"> </i><span style="color:#00FF00;font-size:12 ;font-family:宋体;">退出登录</span></li></a>
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
           <!--  <div class="search">
			  <input type="text" class="text" value=""   placeholder="请输入你想搜索的内容" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Product Details';}">
			  <input type="submit" value="搜索">
			</div> -->
		 </div>  
		</div>
	</div>
    <div id="wrapper_help" style="height:2400px">
	<div class="help_box">
		<!--内容开始-->
		<div class="main_box_order">
            <!--帮助菜单开始-->
			<div class="help_menu">
				<ul>
					<li><a href="help_new.jsp">新手入门</a></li>
					<li><a href="help_qa.jsp">常见问题</a></li>
					<li><a href="help_pay.jsp" class="on">支付方式</a></li>
				</ul>
			</div>
            <!--帮助菜单结束/-->
			<div class="help_con">
                    
				<!--帮助内容开始-->
				<div class="help_pay">
					<h4>货到现金付款</h4>
                    <div class="content">
						<p>肯德基宅急送网上订餐服务提供了货到现金付款、网上支付（包括网上银行和支付宝即时到帐交易）两种支付结算方式。</p>
                    </div>
                    <h4>网上支付</h4>
                    <div class="content">
							<p class="font_size">1.网上银行支付流程：</p>
                            <p><span>1) 点击选择您想要网上支付的银行后，点击"提交"，系统即向相应银行发送支付请求；</span></p>
                            <p><span>2) 自动登录相应银行支付界面，输入支付卡号及验证码；</span></p>
                            <p><span>3) 输入银行的个人验证信息，如动态口令等。具体以各个银行的要求为准；</span></p>
                            <p><span>4) 输入支付密码和验证码；</span></p>
                            <p><span>5) 支付成功（网上支付完成后，银行将立刻反馈您支付结果和交易流水号）；</span></p>
                            <p><span>6) 支付成功后，页面将自动返回到肯德基宅急送网上订餐网站，提示"订单提交成功！"。</span></p>
                            <p class="font_size">2.支付宝支付流程（即时到帐交易）：</p>
                            <p><span>1) 点击选择支付宝后，点击"提交"，系统即向支付宝发送支付请求；</span></p>
                            <p><span>2) 选择使用支付宝余额付款；</span></p>
                            <p><span>3) 输入支付密码；</span></p>
                            <p><span>4) 支付成功（网上支付完成后，支付宝将立刻反馈您支付结果和交易流水号）；</span></p>
                            <p><span>5) 支付成功后，页面将自动返回到肯德基宅急送网上订餐网站，提示"订单提交成功！"；</span></p>
                            <p><span>6) 支付宝支付注意事项：</span></p>
                            <p><span>i) 肯德基宅急送仅接受支付宝即时到帐交易，交易前请确保您的支付宝账号内有足够金额，或请先前往支付宝网站进行充值；切勿在支付宝网站进行本订单的付款；</span></p>
                            <p><span>ii) 其他支付宝支付的注意事项及常见问题解答请点击 www.alipay.com ；</span></p>
                            <p><span>iii) 了解如何申请使用支付宝（包括支付宝卡通），请点击 www.alipay.com ；</span></p>
                            <p><span>iv) 支付宝安全措施：</span></p>
                            <p><span>● 认证：http://club3.alipay.com/yy/club/xinshou/teach/2301.html</span></p>
                            <p><span>● 数字证书：http://club3.alipay.com/yy/club/xinshou/teach/2401.html</span></p>
                            <p><span>● 手机绑定：http://club3.alipay.com/yy/club/xinshou/teach/25a01.html</span></p>
                            <p class="font_size">3.网上支付注意事项：</p>
                            <p><span>1) 如您选择了网上支付且付款成功，在订餐送达时您无须再支付现金，但须在送餐确认单上签字表明已收到所订餐点；</span></p>
                            <p><span>2) 如您选择了网上支付且付款成功，您可在"查询订单"中查询到本次订单详情及订单进程、网上付款的支付时间、金额、退款进程等相关支付信息；</span></p>
                            <p><span>3) 如您选择了网上支付且付款成功，但随后通过电话修改了您的订餐内容，您需要首先全额现金支付修改订单的订餐金额，然后通过网上银行或支付宝的退款流程，我们会尽快把原订单的全款退还给您。根据各银行和支付宝的不同规定，退款期通常不超过一个月。如果新订单金额与原订单金额一致，原网上支付仍然有效；</span></p>
                            <p><span>4) 如果您对自己的支付账单或退款事宜有疑问的话，请拨打相关银行的客户服务热线查询；</span></p>
                            <p><span>5) 由于网上支付是即时向银行或支付宝系统提交支付信息的，所以如出现您的卡内金额不足，意外断线等状况而导致支付的不成功，则无法对该订单进行补充支付，您只能回到订餐页面重新提交支付请求，或者改为货到付款的支付方式；</span></p>
                            <p><span>6) 整个网上支付过程可能因人而异，需要一到几分钟的时间，请耐心等待，并在等待时不要进行任何刷新页面的操作，否则系统将提示："订单重复错误"。该设置是为防止网上的一些不正规的行为导致银行结算的发生。</span></p>
                            <p class="font_size">4.网上银行支付应具备的条件：</p>
                            <p><span>您需持有网上支付平台所支持的银行卡种中的任一种银行卡，并且该卡已经开通网上银行的网上支付服务。</span></p>
                            <p class="font_size">5.如何申请使用网上银行支付：</p>
                            <p><span>想要进行网上支付，仅有一张银行卡是不够的，您还需要为您的银行卡开通网上银行的网上支付功能，您可以到银行柜台开通，也可以通过银行的网站开通。不同银行的开通方式不同。</span></p>
                            <p class="font_size">6.安全问题：</p>
                            <p><span>1) 肯德基宅急送使用的网上支付平台是通过国内各大银行或支付宝进行操作的，其安全性是由银行或支付宝完全保障的。当用户需要填写银行卡资料时，实际上已经到达到银行，因此肯德基宅急送不收集任何用户的银行卡资料；</span></p>
                            <p><span>2) 肯德基宅急送使用的网上银行支付平台所支持的卡种，不但使用SSL128位加密算法和SET（安全电子交易）协议，还使用PKI（公钥基础设施）作为网上支付系统的安全架构，以保证网上数据的机密性、真实性、完整性和不可抵赖性；</span></p>
                            <p><span>3) 请您不要在公共场合输入您的银行卡或支付宝信息，以防被他人看到您的卡号（帐号）及密码；</span></p>
                            <p><span>4) 如果您需要得到更多与"网上支付安全"方面的信息，请您直接与您的发卡行联系。</span></p>
                            <p class="font_size">7.顾客支付不能成功的原因：</p>
                            <p><span>1) 支付银行卡并未开通网上支付功能；</span></p>
                            <p><span>2) 输入的银行卡帐号和密码不正确；</span></p>
                            <p><span>3) 支付银行卡上的金额不足以支付货款；</span></p>
                            <p><span>4) 支付过程中可能因为网速过慢、网络掉线、或在访问受限制的局域网内等网络通信故障，导致支付中断或失败；</span></p>
                            <p><span>5) 电脑没有接入INTERNET或其访问区域受限；</span></p>
                            <p><span>6) IE版本过低，密码位数不足，IE参数设置不正确等；</span></p>
                            <p><span>7) 当选择完银行卡进入银行时，进行刷新页面的操作，会出现系统提示："订单重复错误"。该设置是为防止网上的一些不正规的行为导致银行结算的发生。</span></p>
                            <p class="font_size">8.部分银行的客户服务热线，仅供参考：</p>
                            <p><span><font class="span_width">银行</font><font class="span_width">卡种</font><font class="span_width">客户服务热线</font></span></p>
                            <p><span><font class="span_width">中国银行</font><font class="span_width">长城人民币信用卡</font><font class="span_width">4006695566</font></span></p>
                            <p><span><font class="span_width">&nbsp;</font><font class="span_width">中银信用卡</font><font class="span_width">4006695566</font></span></p>
                            <p><span><font class="span_width">&nbsp;</font><font class="span_width">长城国际卡</font><font class="span_width">8008205288</font></span></p>
                            <p><span><font class="span_width">中国工商银行</font><font class="span_width">牡丹贷记卡</font><font class="span_width">95588</font></span></p>
                            <p><span><font class="span_width">&nbsp;</font><font class="span_width">牡丹信用卡</font><font class="span_width">95588</font></span></p>
                            <p><span><font class="span_width">&nbsp;</font><font class="span_width">牡丹国际卡</font><font class="span_width">95588</font></span></p>
                            <p><span><font class="span_width">招商银行</font><font class="span_width">国际借记卡</font><font class="span_width">95555</font></span></p>
                            <p><span><font class="span_width">&nbsp;</font><font class="span_width">招行信用卡</font><font class="span_width">8008205555</font></span></p>
                            <p><span><font class="span_width">&nbsp;</font><font class="span_width">金葵花卡</font><font class="span_width">8008205555</font></span></p>
                            <p><span><font class="span_width">中国建设银行</font><font class="span_width">龙卡人民币贷记卡</font><font class="span_width">95533</font></span></p>
                            <p><span><font class="span_width">&nbsp;</font><font class="span_width">龙卡准贷记卡</font><font class="span_width">95533</font></span></p>
                            <p><span><font class="span_width">&nbsp;</font><font class="span_width">龙卡双币卡</font><font class="span_width">4008200588</font></span></p>
                            <p><span><font class="span_width">中国农业银行</font><font class="span_width">金穗信用卡</font><font class="span_width">8008195599</font></span></p>
                            <p><span><font class="span_width">&nbsp;</font><font class="span_width">金穗贷记卡</font><font class="span_width">8008195599</font></span></p>
                            <p><span><font class="span_width">交通银行</font><font class="span_width">太平洋贷记卡</font><font class="span_width">95559</font></span></p>
                            <p><span><font class="span_width">&nbsp;</font><font class="span_width">太平洋准贷记卡</font><font class="span_width">95559</font></span></p>
                            <p><span><font class="span_width">广东发展银行</font><font class="span_width">广发卡</font><font class="span_width">95508</font></span></p>
                            <p><span><font class="span_width">兴业银行</font><font class="span_width">兴业信用卡</font><font class="span_width">95561</font></span></p>
                            <p><span><font class="span_width">深圳发展银行</font><font class="span_width">发展信用卡</font><font class="span_width">95501</font></span></p>
                            <p><span><font class="span_width">中国光大银行</font><font class="span_width">阳光卡</font><font class="span_width">95595</font></span></p>
                            <p><span><font class="span_width">中信银行</font><font class="span_width">中信STAR</font><font class="span_width">95558</font></span></p>
                            <p><span><font class="span_width">上海浦东发展银行</font><font class="span_width">浦发信用卡</font><font class="span_width">95528</font></span></p>
                            <p><span><font class="span_width">上海银行</font><font class="span_width">申卡信用卡</font><font class="span_width">021-962888</font></span></p>
                            <p><span><font class="span_width">平安银行</font><font class="span_width">平安信用卡</font><font class="span_width">40066-99999</font></span></p>
                            <p><span><font class="span_width">宁波银行</font><font class="span_width">宁波银行信用卡</font><font class="span_width">96528</font></span></p>
                            <p><span><font class="span_width">中国民生银行</font><font class="span_width">民生信用卡</font><font class="span_width">95568</font></span></p>
                    	</div>
				</div>
				<!--帮助内容结束/-->
                
			</div>
		</div>
		<!--内容结束/-->
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
