<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!DOCTYPE HTML>
<html>
<head>
<script type="text/javascript">
    window.history.forward();
    window.onunload = function(){window.history.forward();};
    window.onpageshow = function(event) {
        if (event.persisted) {
            window.location.reload();
        }
    };
</script>
<meta charset="gb2312" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>支付宝 - 网上支付 安全快速！</title>
<link rel="icon" href="https://i.alipayobjects.com/common/favicon/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="https://i.alipayobjects.com/common/favicon/favicon.ico" type="image/x-icon" />
<link href="https://a.alipayobjects.com" rel="dns-prefetch" />
<link href="https://app.alipay.com" rel="dns-prefetch" />
<link href="https://my.alipay.com" rel="dns-prefetch" />
<link href="https://lab.alipay.com" rel="dns-prefetch" />
<link href="https://cashier.alipay.com" rel="dns-prefetch" />
<link href="https://financeprod.alipay.com" rel="dns-prefetch" />
<link href="https://shenghuo.alipay.com" rel="dns-prefetch" />


<!-- uitpl:/component/trackerTime.vm -->
    <!-- CMS:全站公共 cms/tracker/iconfont.vm开始:tracker/iconfont.vm --><style>
@font-face {
    font-family: "rei";
    src: url("https://i.alipayobjects.com/common/fonts/rei.eot?20150616"); /* IE9 */
    src: url("https://i.alipayobjects.com/common/fonts/rei.eot?20150616#iefix") format("embedded-opentype"), /* IE6-IE8 */
    url("https://i.alipayobjects.com/common/fonts/rei.woff?20150616") format("woff"), /* chrome 6+、firefox 3.6+、Safari5.1+、Opera 11+ */
    url("https://i.alipayobjects.com/common/fonts/rei.ttf?20150616")  format("truetype"), /* chrome、firefox、opera、Safari, Android, iOS 4.2+ */
    url("https://i.alipayobjects.com/common/fonts/rei.svg?20150616#rei") format("svg"); /* iOS 4.1- */
}
.iconfont {
    font-family:"rei";
    font-style: normal;
    font-weight: normal;
    cursor: default;
    -webkit-font-smoothing: antialiased;
}
</style>
<!-- CMS:全站公共 cms/tracker/iconfont.vm结束:tracker/iconfont.vm -->
<script type="text/javascript">
  window._to = { start: new Date() };
</script>

<!-- CMS:全站公共 cms/tracker/monitor.vm开始:tracker/monitor.vm --><!-- FD:106:alipay/tracker/sai_seer.vm:START --><script type="text/javascript">

!function(n){function o(r){if(t[r])return t[r].exports;var i=t[r]={exports:{},id:r,loaded:!1};return n[r].call(i.exports,i,i.exports,o),i.loaded=!0,i.exports}var t={};return o.m=n,o.c=t,o.p="",o(0)}([function(n,o){"use strict";window.Sai={log:function(){},error:function(){},lost:function(){},off:function(){},on:function(){},_DATAS:[],_EVENTS:[]}}]);

</script>
<!-- FD:106:alipay/tracker/sai_seer.vm:END --><!-- CMS:全站公共 cms/tracker/monitor.vm结束:tracker/monitor.vm -->
<!-- CMS:全站公共 cms/tracker/seajs.vm开始:tracker/seajs.vm -->	

<!-- monitor 防错代码 -->
<script>
(function(win){
  if(!win.monitor){win.monitor = {};}

  var METHODS = ["lost", "log", "error", "on", "off"];

  for(var i=0,method,l=METHODS.length; i<l; i++){
    method = METHODS[i];
    if("function" !== typeof win.monitor[method]){
      win.monitor[method] = function(){};
    }
  }
})(window);
</script>

<!-- seajs以及插件 -->
<script charset="utf-8" crossorigin="anonymous" id="seajsnode" onerror="window.monitor && monitor.lost && monitor.lost(this.src)" src="https://a.alipayobjects.com:443/??seajs/seajs/2.2.3/sea.js,seajs/seajs-combo/1.0.0/seajs-combo.js,seajs/seajs-style/1.0.2/seajs-style.js,seajs/seajs-log/1.0.0/seajs-log.js,jquery/jquery/1.7.2/jquery.js,gallery/json/1.0.3/json.js,alipay-request/3.0.3/index.js"></script>

<!-- seajs config 配置 -->
<script>
seajs.config({
  alias: {
    '$': 'jquery/jquery/1.7.2/jquery',
    '$-debug': 'jquery/jquery/1.7.2/jquery',
    'jquery': 'jquery/jquery/1.7.2/jquery',
    'jquery-debug': 'jquery/jquery/1.7.2/jquery-debug',
    'seajs-debug': 'seajs/seajs-debug/1.1.1/seajs-debug'
  },
  crossorigin: function(uri){
  
    function typeOf(type){
	  return function(object){
	    return Object.prototype.toString.call(object) === '[object ' + type + ']';
	  }
	}
	var isString = typeOf("String");
	var isRegExp = typeOf("RegExp");
    
	var whitelist = [];
	
                  whitelist.push('https://a.alipayobjects.com/');
          	
	for (var i=0, rule, l=whitelist.length; i<l; i++){
	  rule = whitelist[i];
	  if (
	    (isString(rule) && uri.indexOf(rule) === 0) ||
	    (isRegExp(rule) && rule.test(uri))
		) {
		
	    return "anonymous";
	  }
	}
  },
  vars: {
    locale: 'zh-cn'
  }
});
</script>

<!-- 兼容原有的 plugin-i18n 写法 -->
<!-- https://github.com/seajs/seajs/blob/1.3.1/src/plugins/plugin-i18n.js -->
<script>
seajs.pluginSDK = seajs.pluginSDK || {
  Module: {
    _resolve: function() {}
  },
  config: {
    locale: ''
  }
};
// 干掉载入 plugin-i18n.js，避免 404
seajs.config({
  map: [
	[/^.*\/seajs\/plugin-i18n\.js$/, ''],
	[/^.*\i18n!lang\.js$/, '']
  ] 
});
</script>

<!-- 路由旧 ID，解决 seajs.use('select/x.x.x/select') 的历史遗留问题 -->
<script>
(function(){

var JQ = '/jquery/1.7.2/jquery.js';
seajs.cache['https://a.alipayobjects.com:443/gallery' + JQ] = seajs.cache['https://a.alipayobjects.com:443/jquery' + JQ];

var GALLERY_MODULES = [
  'async','backbone','coffee','cookie','es5-safe','handlebars','iscroll',
  'jasmine','jasmine-jquery','jquery','jquery-color','json','keymaster',
  'labjs','less','marked','moment','mustache','querystring','raphael',
  'socketio','store','swfobject','underscore','zepto','ztree'
];

var ARALE_MODULES = [
  'autocomplete','base','calendar','class','cookie','dialog','easing',
  'events','iframe-uploader','iframe-shim','messenger','overlay','popup',
  'position','select','switchable','tip','validator','widget'
];

var util = {};
util.indexOf = Array.prototype.indexOf ?
  function(arr, item) {
    return arr.indexOf(item);
  } :
  function(arr, item) {
    for (var i = 0; i < arr.length; i++) {
      if (arr[i] === item) {
        return i;
      }
    }
    return -1;
  };
util.map = Array.prototype.map ?
  function(arr, fn) {
    return arr.map(fn);
  } :
  function(arr, fn) {
    var ret = [];
	for (var i = 0; i < arr.length; i++) {
        ret.push(fn(arr[i], i, arr));
    }
    return ret;
  };

function contains(arr, item) {
  return util.indexOf(arr, item) > -1
}

function map(id) {
  id = id.replace('#', '');

  var parts = id.split('/');
  var len = parts.length;
  var root, name;

  // id = root/name/x.y.z/name
  if (len === 4) {
    root = parts[0];
    name = parts[1];

    // gallery 或 alipay 开头的没有问题
    if (root === 'alipay' || root === 'gallery') {
      return id;
    }

    // arale 开头的
    if (root === 'arale') {
      // 处理 arale/handlebars 的情况
      if (contains(GALLERY_MODULES, name)) {
        return id.replace('arale/', 'gallery/');
      } else {
        return id;
      }
    }
  }
  // id = name/x.y.z/name
  else if (len === 3) {
    name = parts[0]

    // 开头在 GALLERY_MODULES 或 ARALE_MODULES
    if (contains(GALLERY_MODULES, name)) {
      return 'gallery/' + id;
    } else if (contains(ARALE_MODULES, name)) {
      return 'arale/' + id;
    }
  }

  return id;
}

var _use = seajs.use;

seajs.use = function(ids, callback) {
  if (typeof ids === 'string') {
    ids = [ids];
  }

  ids = util.map(ids, function(id) {
    return map(id);
  });

  return _use(ids, callback);
}

})();
</script><!-- CMS:全站公共 cms/tracker/seajs.vm结束:tracker/seajs.vm -->
<!-- FD:106:alipay/tracker/tracker_time.vm:START --><!-- FD:106:alipay/tracker/tracker_time.vm:784:tracker_time.schema:全站 tracker 开关:START --><script charset="utf-8" crossorigin="crossorigin" src="https://a.alipayobjects.com/static/ar/alipay.light.base-1.8.js"></script>


<script type="text/javascript">
if (!window._to) {
  window._to = { start: new Date() };
}
</script>

<script charset="utf-8" src="https://as.alipayobjects.com/??g/component/tracker/2.3.2/index.js,component/smartracker/2.0.1/index.js"></script>



<script>
  window.Tracker && Tracker.start && Tracker.start();
</script>







<!-- FD:106:alipay/tracker/tracker_time.vm:784:tracker_time.schema:全站 tracker 开关:END -->
<!-- FD:106:alipay/tracker/tracker_time.vm:END --><link charset="utf-8" rel="stylesheet" href="https://a.alipayobjects.com:443/mrexcashier/mrexcashier.base-1.1-accountCashierFront-src.css" media="all" />
<link charset="utf-8" rel="stylesheet" href="https://a.alipayobjects.com:443/al/alice.components.security-core-2.1-src.css" media="all" />

<style type="text/css">
/**
安全产品样式覆盖
**/
.ui-securitycore .ui-label, .mi-label {
    text-align: left;
    height: auto;
    line-height: 18px;
    padding: 0;
    display: block;
    padding-bottom: 8px;
    margin: 0;
    width: auto;
    float: none;
    font-size: 16px;
    font-family: tahoma, \5b8b\4f53, \9ED1\4F53, "Hei", sans-serif;
}

.ui-securitycore .edit-section .edit-link a {
    font-size: 14px;
    line-height: 28px;
}

.ui-securitycore .ui-form-item {
    position: relative;
    padding: 0 0 20px 0;
    width: 350px;

}

.ui-securitycore .ui-form-explain {
    height: 18px;
    font-size:13px;
    *font-size:12px;
    font-family:tahoma,arial,\5b8b\4f53;
}

.ui-securitycore .edit-link {
    position: absolute;
    top: -3px;
    right: 0;
}

.ui-securitycore .ui-input {
    height: 28px;
    font-size: 14px;
}

.ui-securitycore .standardPwdContainer .ui-input,
/* 去密码控件样式覆盖 */
.ui-securitycore .alieditContainer .ui-input,
.ui-securitycore .ui-form-item .ui-input-checkcode {
    height: 24px;
    font-size: 15px;
    line-height: 24px;
    padding: 7px 10px;
}

/* 去密码控件样式覆盖 */
.ui-securitycore .alieditContainer .ui-input,
.ui-securitycore .standardPwdContainer .ui-input {
    width: 328px;
}

.ui-securitycore .ui-form-item .ui-input-checkcode {
    width: 60px;
}


/* 去密码控件样式覆盖 */
.ui-securitycore .alieditContainer .ui-input:focus,
.ui-securitycore .standardPwdContainer .ui-input:focus,
.ui-securitycore .ui-form-item .ui-input-checkcode:focus {
    color:#4D4D4D;
    border-color:#07F;
    outline:1px solid #8CDDFF;
    *padding:7px 3px 4px;
    *border:2px solid #07F;
}



.ui-form-item a {
    font-size: 14px;
    line-height: 28px;
    color: #08c;
}



/*安全服务化必将覆盖的样式*/


#container .alieditContainer object {
    width: 350px;
    height:40px;
}

#container .alieditContainer .ui-input {
    width: 326px;
    height: 22px;
    padding: 7px 10px;
    font-size: 15px;
}

#container .alieditContainer {
    width: 350px;
    height: 40px;
}

#container .alieditContainer a.aliedit-install {
    line-height: 40px;
    width: 348px;
}

#container .edit-tips {
    display: none;
}


.anti-fishing {
    padding:15px;
    width: 450px;
}

.anti-fishing h2 {
    display: none;
}

#container .order-notice {
    margin-top: 30px;
    display: none;
}

#header h1.logo {
    background: url(https://i.alipayobjects.com/i/ecmng/png/201405/2dSldbS1hV.png) no-repeat left 2px;
}
input::-ms-clear { display: none; }

.standardPwdContainer object {
    width: 348px;
    height:38px;
}

#container .standardPwdContainer {
    width: 348px;
    height: 38px;
}

#container .standardPwdContainer a.aliedit-install {
    line-height: 38px;
}

#container .standardPwdContainer .ui-input {
    width:324px;
    padding:7px 10px;
    font-size:14px;
    height: 20px;
    line-height: 24px;
}

#container .standardPwdContainer .ui-input:focus {
    color:#4D4D4D;
    border-color:#07F;
    outline:1px solid #8CDDFF;
    *padding:7px 3px 4px;
    *border:2px solid #07F;
}

#header {
    height: 70px;
    margin-top: 0px;
}

.alipay-logo {
    display: block;
    width: 114px;
    position: relative;
    left: 0;
    top: 20px;
    float: left;
    height: 40px;
    background-position: 0 0;
    background-repeat: no-repeat;
    background-image: url(https://t.alipayobjects.com/images/T1HHFgXXVeXXXXXXXX.png);
}

</style>

<!-- CMS:MR外部收银台/公共cms/公共区域开始:mrexcashier/common/commonArea.vm -->  <!-- CMS:MR外部收银台/公共cms/公共区域结束:mrexcashier/common/commonArea.vm --></head>
<body>

 
<!-- CMS:全站公共 cms/notice/headNotice.vm开始:alipay/notice/headNotice.vm --><!--[if lte IE 7]>
<style>.kie-bar { display: none; height: 24px; line-height: 1.8; font-weight:normal; text-align: center; border:1px solid #fce4b5; background-color:#FFFF9B; color:#e27839; position: relative; font-size: 12px; margin: 5px 0 0 0; padding: 5px 0 2px 0; } .kie-bar a { text-decoration: none; color:#08c; background-repeat: none; } .kie-bar a#kie-setup-IE8,.kie-bar a#kie-setup-taoBrowser { padding: 0 0 2px 20px; *+padding-top: 2px; *_padding-top: 2px; background-repeat: no-repeat; background-position: 0 0; } .kie-bar a:hover { text-decoration: underline; } .kie-bar a#kie-setup-taoBrowser { background-position: 0 -20px; }</style>
<div id="kie-bar" class="kie-bar">您现在使用的浏览器版本过低，可能会导致部分图片和信息的缺失。请立即 <a href="http://www.microsoft.com/china/windows/IE/upgrade/index.aspx" id="kie-setup-IE8" seed="kie-setup-IE8" target="_blank" title="免费升级至IE8浏览器">免费升级</a> 或下载使用 <a href="http://download.browser.taobao.com/client/browser/down.php?pid=0080_2062" id="kie-setup-taoBrowser" seed="kie-setup-taoBrowser" target="_blank" title="淘宝浏览器">淘宝浏览器</a> ，安全更放心！ <a title="查看帮助" target="_blank" seed="kie-setup-help" href="http://help.alipay.com/lab/help_detail.htm?help_id=260579">查看帮助</a></div>
<script type="text/javascript">
(function () {
    function IEMode() {
        var ua = navigator.userAgent.toLowerCase();
        var re_trident = /\btrident\/([0-9.]+)/;
        var re_msie = /\b(?:msie |ie |trident\/[0-9].*rv[ :])([0-9.]+)/;
        var version;
        if (!re_msie.test(ua)) {
            return false;
        }
        var m = re_trident.exec(ua);
        if (m) {
            version = m[1].split(".");
            version[0] = parseInt(version[0], 10) + 4;
            version = version.join(".");
        } else {
            m = re_msie.exec(ua);
            version = m[1];
        }
        return parseFloat(version);
    }
    var ie = IEMode();
    if (ie && ie < 8 && (self.location.href.indexOf("_xbox=true") < 0)) {
        document.getElementById('kie-bar').style.display = 'block';
        document.getElementById('kie-setup-IE8').style.backgroundImage = 'url(https://i.alipayobjects.com/e/201307/jYwARebNl.png)';
        document.getElementById('kie-setup-taoBrowser').style.backgroundImage = 'url(https://i.alipayobjects.com/e/201307/jYwARebNl.png)';
    }
})();
</script>
<![endif]-->

<!-- CMS:全站公共 cms/notice/headNotice.vm结束:alipay/notice/headNotice.vm --><div class="topbar">
    <div class="topbar-wrap fn-clear">
        <a href="https://help.alipay.com/lab/help_detail.htm?help_id=258086" class="topbar-link-last" target="_blank">常见问题</a>
        <span class="topbar-link-first">你好，欢迎使用支付宝付款！</span>
    </div>
</div>
<div id="container">
    <div id="header">
        <div class="alipay-logo"></div>
    </div>


<!-- CMS:全站公共 cms/tracker/um.vm开始:tracker/um.vm -->



<style type="text/css">
.umidWrapper{display:block; height:1px;}
</style>
<span style="display:inline;width:1px;height:1px;overflow:hidden">

<script type="text/javascript">
var cimg = new Image(1,1);
cimg.onload = function() {
    cimg.onload = null;
};
cimg.src = "https://ynuf.alipay.com/service/clear.png?xt=P38724323c88f63b712e3e746e703df11&xa=";
</script>

<script type="text/javascript" src="https://assets.alicdn.com/g/security/umscript/3.0.11/um.js" charset="utf-8"></script>

<script type="text/javascript">
um.init({
    enabled: 1, ratio: 1, timeout: 3000,
    token: 'P38724323c88f63b712e3e746e703df11', timestamp: '61906737575D5040574E667A',
    serviceUrl: 'https://ynuf.alipay.com/service/um.json',
  appName:''
});

</script>
</span>
<!-- CMS:全站公共 cms/tracker/um.vm结束:tracker/um.vm -->
<div class="mi-notice-new mi-notice-new-success mi-notice-new-titleonly order-notice" id="J_orderPaySuccessNotice">
    <div class="mi-notice-new-cnt">
        <div class="mi-notice-new-title">
            <i class="iconfont" title="支付成功">&#xF049;</i>

            <h3>支付成功，<span class="ft-orange" id="J_countDownSecond">3</span> 秒后自动返回商户。</h3>
        </div>
    </div>
</div>

<div class="mi-notice-new mi-notice-new-error mi-notice-new-titleonly order-notice" id="J_orderDeadlineNotice">
    <div class="mi-notice-new-cnt">
        <div class="mi-notice-new-title">
            <i class="iconfont" title="交易超时">&#xF045;</i>

            <h3>抱歉，您的交易因超时已失败。</h3>

            <p class="mi-notice-new-explain-other">
                您订单的最晚付款时间为： <span id="J_orderDeadline"></span>，目前已过期，交易关闭。
            </p>
        </div>
    </div>
</div>
<div id="content" class="fn-clear">
        <div id="J_order" data-module="mrexcashier/front/1.0.0/orderDetail" data-mode="SYNC" data-url="">
<div id="order" data-role="order" class="order order-bow">
    <form data-module="mrexcashier/front/1.0.0/checkTimeout" data-mode="SYNC" action="https://mrexcashier.alipay.com:443/standard/timeOutErrorPage.htm" method="post" id="J_timeoutForm" class="fn-hide">
        	<input type="hidden" name="_form_token" value="Y6BImeA5Ka6kgH3eBhUd2hVet4gr5t0j"/>
        <input name="orderId" type="hidden" value="71374cf679044625a8891cdf3f1de698" id="orderId" />
        <input name="orderTimeoutRequestInterval" type="hidden" value="14" id="J_orderTimeoutRequestInterval" />
        <input name="timeoutCheckUrl" type="hidden" value="https://mrexcashier.alipay.com:443/standard/payOrderClosedCountDown.json"  />
        <input type="submit" value="" />
    </form>
    <div class="orderDetail-base" data-role="orderDetailBase">
        <div class="order-extand-explain fn-clear">
            <span class="fn-left explain-trigger-area order-type-navigator" data-role="orderTypeQuestion" seed="order-type-detail">
                <span class="ico-bow"></span>

                <span>您正在使用即时到账交易</span>

                <span class="icon-question"></span>
            </span>
                        <span class="fn-left create-time" id="teDelay">
                <span>交易将在<span id="teOrderDelayText">29分钟</span>后关闭，请及时付款！</span>
            </span>
                    </div>
        <div class="commodity-message-row">
            <span class="first long-content" style="_width: 200px;">
                肯德基
            </span>
            <span class="second short-content">
                                    收款方：kfc百胜（中国）投资有限公司
                            </span>
        </div>
        <span class="payAmount-area" data-role="basePriceArea">
            <strong class=" amount-font-22 ">${price }</strong> 
            <!-- CMS:MR外部收银台/公共cms/运营活动开始:mrexcashier/common/activity.vm --> <style>
	 .activity {
		 background-color: #FFFCEF;
		 border: 1px solid #ffbb76;
		 padding: 0 5px;
	 }
</style>
<div class="">
	<a href="" target="_blank" class="ft-orange" seed="goto-activity"></a>
	<span class="ft-orange"></span>
</div>
<!-- CMS:MR外部收银台/公共cms/运营活动结束:mrexcashier/common/activity.vm -->        </span>
    </div>
    
<div class="ui-tip ui-question-tip fn-hide" seed="question-tip" data-role="orderTypeTip">
    <div class="ui-dialog-container">
        <div class="ui-dialog-head-text">
            <span>付款后资金直接进入对方账户</span>
            <a class="j-apop-close" href="#">关闭</a>
        </div>

        <ul class="ui-dialog-content">
            <li>
                若发生退款需联系收款方协商，如付款给陌生人，请谨慎操作。
            </li>
        </ul>
    </div>
    <div class="ui-icon-dialog-arrow">
        ↓
    </div>
</div>



    <span class="orderDetail-more-link" data-role="oderDetailMore">
        <em class="more-arrow"></em>
        <a href="#orderList" class="j-orderDetail-more" seed="order-detail-more">订单详情</a>
    </span>
    <div class="ui-detail fn-hide" data-role="orderDetailCnt" id="J-orderDetail">
        <div class="ajax-Account od-more-cnt fn-clear">
            <div class="first  long-content">肯德基</div>
            <ul class="order-detail-container">
                <li class="order-item">
                    <div class="second  short-content ">
                                                  收款方：kfc百胜（中国）投资有限公司
                                            </div>
                     <table>
    <tbody>
                <tr>
            <th class="sub-th">商品名称：</th>
            <td>肯德基宅急送</td>
        </tr>
                                <tr>
            <th class="sub-th">订单号：</th>
            <td>${order.id }</td>
        </tr>
                                <tr>
            <th class="sub-th">交易类型：</th>
            <td class="type">
                <span>即时到账交易</span>
            </td>
        </tr>
    </tbody>
</table>

                </li>
            </ul>
        </div>
        <span class="payAmount-area">
            <strong class=" amount-font-22 ">${price }</strong>
            <!-- CMS:MR外部收银台/公共cms/运营活动开始:mrexcashier/common/activity.vm --> <style>
	 .activity {
		 background-color: #FFFCEF;
		 border: 1px solid #ffbb76;
		 padding: 0 5px;
	 }
</style>
<div class="">
	<a href="" target="_blank" class="ft-orange" seed="goto-activity"></a>
	<span class="ft-orange"></span>
</div>
<!-- CMS:MR外部收银台/公共cms/运营活动结束:mrexcashier/common/activity.vm -->        </span>
        <iframe src="javascript:''" class="ui-detail-iframe-fix" data-role="orderDetailFrameFix"></iframe>
    </div>
    <span class="orderDetail-shrink-link fn-hide" data-role="oderDetailShrink">
        <em class="shrink-arrow"></em>
        <a href="#orderList" class="j-orderDetail-shrink" seed="order-detail-shrink">订单详情</a>
    </span>
</div>
<input name="oid" type="hidden" value="71374cf679044625a8891cdf3f1de698" id="J_orderId" />
<input name="pid" type="hidden" value="2088011519249952" id="J_partnerId" />

</div>



        
<div data-module="mrexcashier/front/1.0.5/tAccountLogin" data-mode="SYNC" data-url="">

    <form action="https://mrexcashier.alipay.com:443/standard/mrpay10001/templateFlow.json?orderId=71374cf679044625a8891cdf3f1de698&amp;method=ajaxpost&amp;templateName=cashierFront" method="post" class="mi-form" id="J_TloginForm">
        <input type="hidden" name="commonAccountIdentiAuthUrl" value="https://mrexcashier.alipay.com:443/standard/mrpay10001/templateFlow.phtm?orderId=71374cf679044625a8891cdf3f1de698&viewModelId=sync%24passwordAuthActionViewModel%24async_securityRenderViewModel&asyncRequest.sign=MCwCFDc6RfXJ0W4DlZZmNwyVEJk22g8fAhRYmEHWVuWaqLtF39PgYCTW7BYHgw%3D%3D"/>
                	<input type="hidden" name="_form_token" value="3P2CA2Ap0vRZLKt7EULk2wic1A0VMoVT"/>
            <input type="hidden" name="viewModelId" value="sync$passwordAuthActionViewModel"/>
        
<div class="login-container fn-clear">
	
	        <div class="login-panel">

                <h3 class="use-account-title">支付宝账户付款</h3>

                <div class="mi-form-item commonAccountContainer " id="J_accountFormItem">
            <label class="mi-label">账户名：</label>
            <span class="user-login-account fn-hide"></span>
            <input style="display:none;" name="hasError" value="false" id="J_hasErrorFlag" type="hidden" />
			<input type="email" name="loginId" class="mi-input mi-input-account" value=""
                   id="J_tLoginId" seed="accountInput" placeholder="手机号码/邮箱"   data-explain="不确定是否有账户？可尝试输入本人手机号码。" />
                    <span class="fg-pwd-area">
                        <a class="aside-link" href="https://help.alipay.com/lab/help_detail.htm?help_id=216509"
                           seed="forgetAccountLink" target="_blank">忘记账户名？</a>
                    </span>
								<div class="mi-form-explain"></div>	
				            <div class="account-loading-explain fn-hide">正在进行安全检测，请稍候...</div>
        </div>
        
                <div class="mi-form-item " style="padding: 0 0 20px 0;" id="J_passwordContainer">
            <label class="mi-label">支付密码：</label>
                    <span>
                    	                	<input style="display:none;" type="hidden" name="pwdSecurityId" value="web|mrexcashier_payment_pwd_control|8267943a-7dc6-4e5d-b63e-e021a0330adbGZ00" />
	


    <input style="display:none" />
  <input type="password" style="display:none" />

  
    
    
        
            
        
<span class="standardPwdContainer" >
  <input type="password" tabindex="" id="payPasswd_input" name="payPasswd_input" class="ui-input" oncontextmenu="return false" onpaste="return false" oncopy="return false" oncut="return false" autocomplete="off" />
</span>







      
  <script type="text/javascript">
  (function () {
    var alipay = window.alipay || (window.alipay = {});
    var s = alipay.security = alipay.security || {};
    s.downloadServer = "https://download.alipay.com" || alipay.security.downloadServer;
    s.securityCenterServer = "https://securitycenter.alipay.com" || alipay.security.securityCenterServer;
    s.hasBrowserControlPolicy = false;
          s.certDataAccessPolicy = "";
        s.controlCheckTimeout = Number("3000");
    s.websocketPorts = "27382,45242";
    s.newCertControlDownloadAddress = "";
    s.sid = "web|mrexcashier_payment_pwd_control|8267943a-7dc6-4e5d-b63e-e021a0330adbGZ00";
  })();
</script>
<script type="text/javascript" charset="utf-8" crossorigin="anonymous" src="https://a.alipayobjects.com/static/ar/??alipay.light.base-1.11.js,alipay.light.page-1.15-sizzle.js,alipay.security.base-1.8.js,alipay.security.utils.chromeExtension-1.1.js,alipay.security.edit-1.22.js,alipay.security.utils.pcClient-1.1.js,alipay.security.cert-1.5.js,alipay.security.otp-1.2.js,alipay.security.mobile-1.7.js,alipay.security.ctuMobile-1.2.js,alipay.security.riskMobileBank-1.3.js,alipay.security.riskMobileAccount-1.3.js,alipay.security.riskMobileCredit-1.2.js,alipay.security.riskCertificate-1.0.js,alipay.security.riskSecurityQa-1.0.js,alipay.security.riskExpressPrivacy-1.0.js,alipay.security.checkCode-1.1.js,alipay.security.rds-1.0.js,alipay.security.barcode-1.3.0.js,alipay.security.riskOneKeyConfirm-1.2.js,alipay.security.riskSudoku-1.0.js,alipay.security.riskOriginalAccountMobile-1.0.js,alipay.security.riskOriginalSecurityQa-1.0.js"></script>
<script type="text/javascript" charset="utf-8" crossorigin="anonymous" src="https://as.alipayobjects.com/g/alipay-security-pc-3/??risk-tel/2.0.2/index.js,core2/3.0.2/index.js"></script>
  <script>
  light.trackOn = false;
  light.has('page/products') || light.register('page/products');
  light.has('page/scProducts') || light.register('page/scProducts', light, []);
  alipay.security.utils.chromeExtension.setExtensionId('lapoiohkeidniicbalnfmakkbnpejgbi');
</script>
<script type="text/javascript">
light.ready(function(){
  var s = alipay.security;
  var noedit = light.page.products['payPasswd_input'] = s.create(s.noedit, {
    id: 'payPasswd_input',
    hidnId: 'payPasswd',
    useKS: true,
    ksk: '867db45a-e5f8-4e8c-bd36-79bae9fe2cd0'   });

  if (!light.page.products['payPasswd']) {
    light.page.products['payPasswd'] = light.page.products['payPasswd_input'];
  }
  
  noedit.render();
});
</script>    

<input type="hidden" name="J_aliedit_using" value="false" />
<input type="hidden" id="payPasswd" name="payPasswd" value="" />
<input type="hidden" name="J_aliedit_key_hidn" value="payPasswd" />

<input type="hidden" name="J_aliedit_uid_hidn" value="alieditUid" />
<input type="hidden" id="alieditUid" name="alieditUid" value="3d8105ca23bc343513a449dc9844a70a" />

<input type="hidden" name="REMOTE_PCID_NAME" value="_seaside_gogo_pcid" />
<input type="hidden" name="_seaside_gogo_pcid" value="" />
<input type="hidden" name="_seaside_gogo_" value="" />
<input type="hidden" name="_seaside_gogo_p" value="" />

<input type="hidden" name="J_aliedit_prod_type" value="" />

<input type="hidden" name="security_activeX_enabled" value="" />

<input type="hidden" name="J_aliedit_net_info" value="" />

<input type="hidden" id="edit_infor" value="" />

<script>
  light.node('#payPasswd').parent().find('[name=security_activeX_enabled]')[0].value = alipay.security.activeXEnabled;
</script>
    <script type="text/javascript">
      light.ready(function () {
        var s = alipay.security;
                  light.page.scProducts.push(light.page.products["payPasswd_input"]);
              });

    </script>

    
  



                    <input id="J_password" type="hidden" name="password" value=""/>
                    </span>
                    <span class="fg-pwd-area">
                        <a target="_blank" class="aside-link"
                           href="https://self.alipay.com/selfhelp/passwordfind/index.htm?type=P"
                           seed="forgetPwdLink"></a>
                    </span>
                            <div class="mi-form-explain">
                    <p>
                      
                    </p>
                </div>
            
        </div>
        

		

                <div data-role="alieditContainer" class="fn-hide"></div>

                <div class="submitContainer fn-clear">
            <div class="left-submitContainer">
                <a href="payzfb.action" class="blue-btn wd220 fn-left" id="J_submitBtn"
                   data-role="submitBtn" seed="submitBtn" data-defaulttext="支付"
                   data-submittext="提交中...">
                    <span> 立即支付</span>
                </a>
                <a href="https://lab.alipay.com/user/reg/index.htm" target="_blank"
                   class="gray-btn wd120 fn-right" id="J_registerAccount" seed="registerBtn">
                    <span>免费注册</span>
                </a>
            </div>
        </div>
        
                <div class="fn-hide" id="J_registerTip">
            <div class="msg-area">
                        <span class="mi-message mi-message-cue">
                            请暂时不要关闭当前页面。在新页面完成注册后再进行如下操作：
                        </span>
            </div>
            <div class="btn-area">
                <a href="javascript:;" class="blue-btn wd200 fn-left" data-role="J_registerSuccess">
                    <span>注册成功，继续付款</span>
                </a>
                <a href="https://help.alipay.com/lab/index.htm" target="_blank" class="gray-btn wd160 fn-right">
                    <span>注册遇到问题</span>
                </a>
            </div>
        </div>
        
                <div class="fn-hide" id="J_activeTip">
            <div class="msg-area">
                        <span class="mi-message mi-message-cue">
                            请暂时不要关闭当前页面。在新页面完成激活后再进行如下操作：
                        </span>
            </div>
            <div class="btn-area">
                <a href="javascript:;" class="blue-btn wd200 fn-left" data-role="J_activeSuccess">
                    <span>激活成功，继续付款</span>
                </a>
                <a href="https://help.alipay.com/lab/index.htm" target="_blank" class="gray-btn wd160 fn-right">
                    <span>激活遇到问题</span>
                </a>
            </div>
        </div>
        
    </div>
    
        <div class="fastpay-img fn-hide" id="J_bgImg"></div>
    
        <div class="qrcode-scan-area fn-hide" id="J_qrPayStyle">
        <div data-role="qrPayArea" class="qrcode-integration qrcode-area" id="J_qrPayArea">

    <div>
    <div class="qrcode-header">
        <div data-role="qrPayTitle" class="qrcode-title ft-yh ft-black">&nbsp;</div>
        <div data-role="qrPayReward" class="qrcode-reward fn-hide">
            <span data-role="qrPayRewardText" ></span>
            <i data-role="qrPayRewardTipIcon" class="iconfont qrcode-reward-question fn-hide">&#xF04A;</i>
        </div>
    </div>

    <div data-role="qrPayCrash" class="qrcode-img-area fn-mb50 fn-hide">
        <div class="fn-pt20">
        <i class="iconfont qrpay-crash-icon">&#xF047;</i>
        </div>
        <p class="ft-16">二维码太忙了</p>
        <p class="ft-16">请稍后再试</p>
        <a href="#" class="mi-button mi-button-lwhite fn-mt50" data-role="qrPayRefreshBtn" seed="qrcodeRefreshBtn"><span class="mi-button-text">&nbsp;&nbsp;&nbsp;&nnbsp;重试&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
        <div class="qrpay-crash-explain fn-hide" data-role="qrPayCrashExplainText">
            也可在左侧直接登录
        </div>
        <div class="qrpay-crash-explain fn-hide" data-role="qrPayCrashExplainLink">
            也可以 <a href="#" id="J_payStyleChange" seed="changePayStyleLinkAfterCrash">使用电脑支付</a>
        </div>
    </div>

    <div data-role="qrPayImg" class="qrcode-img-area">
        <div class="ui-loading qrcode-loading" data-role="qrPayImgLoading">加载中</div>
    </div>

    </div>
    <div class="qrcode-foot" data-role="qrPayFoot">
    <div data-role="qrPayExplain" class="qrcode-explain fn-hide">
        <div>使用手机支付宝扫码完成付款</div>
        <div><a href="https://mobile.alipay.com/index.htm" data-boxUrl="https://cmspromo.alipay.com/down/new.htm" data-role="dl-app" target="_blank" seed="qr-pay-download">手机支付宝下载</a> ｜ <a href="http://help.alipay.com/lab/help_detail.htm?help_id=380925" target="_blank" seed="qr-pay-help">如何使用？</a></div>
    </div>
    <div data-role="qrPayScanSuccess" class="mi-notice-new mi-notice-new-success mi-notice-new-titleonly qrcode-notice fn-hide">
        <div class="mi-notice-new-cnt">
            <div class="mi-notice-new-title qrcode-notice-title">
                <i class="iconfont qrcode-notice-iconfont" title="扫描成功">&#xF049;</i>
                <p class="qrcode-notice-bar">扫码成功</p>
                <p class="mi-notice-new-explain-other qrcode-notice-explain">
                    请在手机支付宝上完成付款。
                </p>
            </div>
        </div>
    </div>
    </div>
</div>
    </div>

    
</div>

    </form>
</div>

</div>

    
  
  <script type="text/javascript">
    var form_tk = "cSPMwFV8givHhR8E8IcqgRZgJRu6wI9O";
    var json_ua = null;
  </script>

   <script type="text/javascript" charset="utf-8" src='https://rds.alipay.com/ua_mrexcashier_rds_auth.js?t=20161219'></script>

<!-- CMS:全站公共 cms/安全cms/外部收银台信息采集开始:security/sensorSdk.vm -->
<script src="https://a.alipayobjects.com/sensor-sdk/2.0.0/index.js"></script>


<!-- CMS:全站公共 cms/安全cms/外部收银台信息采集结束:security/sensorSdk.vm -->


<input name="qrContextId" type="hidden" value="W2016121923622381_2088011519249952_2016121998392815" id="J_qrContextId"/>
<input name="qrPayLoopCheckUrl" type="hidden" value="https://mrmoaprod.alipay.com/acq/qrPayLoopCheck.json" id="J_qrPayLoopCheckUrl"/>
<input name="qrDiscountText" type="hidden" value="" id="J_qrDiscountText"/>

<div id="footer">
    <!-- CMS:全站公共 cms/foot/copyright.vm开始:foot/copyright.vm --><style>
.copyright,.copyright a,.copyright a:hover{color:#808080;}
</style>
<div class="copyright">
      支付宝版权所有 2004-2016 <a href="http://fun.alipay.com/certificate/jyxkz.htm" target="_blank">ICP证：沪B2-20150087</a>
  </div>
<div class="server" id="ServerNum">
  mrexcashier-70-2 &nbsp; 0ae15fca14821258009982025_0
</div><!-- CMS:全站公共 cms/foot/copyright.vm结束:foot/copyright.vm --></div>
</div><!-- /container -->
<div id=partner><img alt=合作机构 src="https://i.alipayobjects.com/e/201303/2R3cKfrKqS.png"></div>
<div class="ui-poptip ui-poptip-white qrpay-discount-tip fn-hide" id="J_qrPayTip">
    <div class="ui-poptip-shadow">
        <div class="ui-poptip-container qrpay-discount-container">
            <div class="ui-poptip-arrow ui-poptip-arrow-10">
                <em></em>
                <span></span>
            </div>
            <div class="ui-poptip-content">
                <p>使用扫码支付，不可与</p>
                <p>支付宝其他优惠同时使用。</p>
            </div>
        </div>
    </div>
</div>

 
<!-- uitpl:/component/tracker.vm -->
<!-- FD:106:alipay/tracker/tracker.vm:START --><!-- FD:106:alipay/tracker/tracker.vm:785:tracker.schema:全站自动化/性能/敏感信息打点开关:START -->



<script type="text/javascript">
window.Smartracker && Smartracker.sow && Smartracker.sow();
</script>






<script type="text/javascript">

window.agp_custom_config = {
  BASE_URL: '//kcart.alipay.com/p.gif',
  TIMING_ACTION_URL: '//kcart.alipay.com/x.gif'
}

</script>
<script charset="utf-8" src="https://as.alipayobjects.com/g/component/timing/1.0.0/index.js"></script>





<!-- FD:106:alipay/tracker/sai.vm:START --><script>
    sensScanConfig={
        ratio: 0.01,
        modules: '*',
        types: '*'
      };
</script>

<script src='https://as.alipayobjects.com/g/alipay_security/monitor-sens/1.0.1/monitor-sens.min.js'></script>
<!-- FD:106:alipay/tracker/sai.vm:END -->



<!-- FD:106:alipay/tracker/cmsbuffer.vm:START --><!-- FD:106:alipay/tracker/cmsbuffer.vm:997:cmsbuffer.schema:main-CMS全站修复:START -->
	
			
			
			
			
			
			
			
			
			





<script>
try {
  (function() {
  var logServer = 'https://magentmng.alipay.com/m.gif';
  var sample = 0.0001;
  var url = "https://a.alipayobjects.com/http-watch/1.0.7/index.js";

  // 判断比例
  if (!!window.addEventListener && Array.prototype.map && Math.random() < sample) {
    var HEAD = document.head || document.getElementsByTagName('head')[0];

    var spt = document.createElement('script');
    spt.src = url;
    HEAD.appendChild(spt);

	setTimeout(function() {
	  window.httpWatch && window.httpWatch({ sample: 1, appname: 'mrexcashier-70-2', logServer: logServer });
	}, 1000);
  }
  })();
} catch(e) {}
</script>



<script src="https://as.alipayobjects.com/component/console-security-message/1.0.1/index.js"></script>
<!-- FD:106:alipay/tracker/cmsbuffer.vm:997:cmsbuffer.schema:main-CMS全站修复:END -->
<!-- FD:106:alipay/tracker/cmsbuffer.vm:END --><!-- FD:106:alipay/tracker/tracker.vm:785:tracker.schema:全站自动化/性能/敏感信息打点开关:END -->
<!-- FD:106:alipay/tracker/tracker.vm:END --><!-- FD:174:alipay/foot/cliveService.vm:START --><!-- FD:174:alipay/foot/cliveService.vm:1261:cliveService.schema:在线客服配置:START -->
    <div style="display:none">onlineServer</div>
    <script type="text/javascript">
    try {
        (function () {
            var loadOnlineServer = function() {
                seajs.config({
                    comboExcludes: /\/u\/(js|css|cschannel|ecmng)\//,
                    alias: {
						'$': 'jquery/jquery/1.7.2/jquery',
                        'onlineServerConfig': 'https://os.alipayobjects.com/rmsportal/iwBOQWtuJpTikoO.js',
                        'portalServerConfig': 'https://os.alipayobjects.com/cschannel/UmxUAODiwMwqAgTJPhTy.js',
                        'merchantServerConfig': 'https://os.alipayobjects.com/cschannel/liatwDAenHoWTDlLFuas.js',
			'koubeiServerConfig': 'https://os.alipayobjects.com/rmsportal/cCSTKmskcLlEOBL.js',
			'defaultDataConfig': 'https://a.alipayobjects.com/u/js/201311/1acIoVU1Xx.js',
                        'onlineServerJS': 'https://os.alipayobjects.com/rmsportal/LtDohISwSYoXifk.js',//云客服匹配
                        'onlineServerCSS': 'https://a.alipayobjects.com/u/css/201402/2ACTshL8Vh.css'//云客服通用样式
                    }
                });
                seajs.use(['onlineServerConfig', 'portalServerConfig','merchantServerConfig','koubeiServerConfig'], function(){
                    jQuery(function(){
                        window.OS = OS = {},
                        OS.server = {
                            cliveServer: 'https://clive.alipay.com',
                            cschannelServer: 'https://cschannel.alipay.com',
                            initiativeServer: 'https://webpushgw.alipay.com',
			    cshallServer: 'https://cshall.alipay.com'
                        },
                        OS.params = {
                            'uid': ''
                        };
			var tradeNos4Clive = '' || '';
			OS.params.featureStr = "{'tradeNos':'" + tradeNos4Clive + "'}";
                        OS.config = {
                            onlineServerURL: OS.server.cliveServer + '/csrouter.htm',
                            portalServerURL: OS.server.cschannelServer + '/csrouter.htm',
			    newPortalServerURL: OS.server.cschannelServer + '/newPortal.htm',
                            webpushFlashURL: 'https://t.alipayobjects.com/tfscom/T1JsNfXoxiXXXXXXXX.swf',
                            onlineServerIconDefault: 'https://a.alipayobjects.com/u/css/201401/1v9cu1dxaf.css' //在线客服默认图片
                        };
                        seajs.use('onlineServerCSS');
                        seajs.use('onlineServerJS');
                    });
                });
            }
            var bindOnlineServer = function(func){
                var w = window;
                if (w.attachEvent) {
                    w.attachEvent('onload', func);
                } else {
                    w.addEventListener('load', func, false);
                }
            };
            window.initOnlineServer = function() {
                var w = window, o = 'seajs', d = document;
                if(w[o]) { return loadOnlineServer() }
                var s = d.createElement("script")
                s.id = o + "node"
                s.charset = "utf-8";
                s.type = "text/javascript";
                s.src = "https://a.alipayobjects.com/??seajs/seajs/2.1.1/sea.js,jquery/jquery/1.7.2/jquery.js";
                var head = d.head || d.getElementsByTagName( "head" )[0] || d.documentElement;
                head.appendChild(s);
                s.onload = s.onreadystatechange = function(){ if (!s.readyState || /loaded|complete/.test(s.readyState)) { loadOnlineServer() } };
            };
            if (!window.isLazyLoadOnlineService) {
                bindOnlineServer(initOnlineServer);
            };
        })();
    } catch (e) {
        window.console && console.log && console.log(e);
        window.Tracker && Tracker.click('onlineServer-error-init-' + e);
    }
    </script>
<!-- FD:174:alipay/foot/cliveService.vm:1261:cliveService.schema:在线客服配置:END -->

<!-- FD:174:alipay/foot/cliveService.vm:END -->
<script type="text/javascript">
//加载cashierMobileFront页面js模块
seajs.use('mrexcashier/front/1.0.5/accountCashierFront');
</script>

</body>
</html>
