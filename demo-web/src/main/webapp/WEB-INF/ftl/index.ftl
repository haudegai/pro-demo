<!DOCTYPE HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${context.contextPath}/images/splash/splash-icon.png">
<link rel="apple-touch-startup-image" href="${context.contextPath}/images/splash/splash-screen.png" 			media="screen and (max-device-width: 320px)" />  
<link rel="apple-touch-startup-image" href="${context.contextPath}/images/splash/splash-screen_402x.png" 		media="(max-device-width: 480px) and (-webkit-min-device-pixel-ratio: 2)" /> 
<link rel="apple-touch-startup-image" sizes="640x1096" href="${context.contextPath}/images/splash/splash-screen_403x.png" />
<link rel="apple-touch-startup-image" sizes="1024x748" href="${context.contextPath}/images/splash/splash-screen-ipad-landscape" media="screen and (min-device-width : 481px) and (max-device-width : 1024px) and (orientation : landscape)" />
<link rel="apple-touch-startup-image" sizes="768x1004" href="${context.contextPath}/images/splash/splash-screen-ipad-portrait.png" media="screen and (min-device-width : 481px) and (max-device-width : 1024px) and (orientation : portrait)" />
<link rel="apple-touch-startup-image" sizes="1536x2008" href="${context.contextPath}/images/splash/splash-screen-ipad-portrait-retina.png"   media="(device-width: 768px)	and (orientation: portrait)	and (-webkit-device-pixel-ratio: 2)"/>
<link rel="apple-touch-startup-image" sizes="1496x2048" href="${context.contextPath}/images/splash/splash-screen-ipad-landscape-retina.png"   media="(device-width: 768px)	and (orientation: landscape)	and (-webkit-device-pixel-ratio: 2)"/>

<title>学习综合管理系统-首页</title>

<link href="${context.contextPath}/styles/style.css"     		rel="stylesheet" type="text/css">
<link href="${context.contextPath}/styles/framework.css" 		rel="stylesheet" type="text/css">
<link href="${context.contextPath}/styles/owl.carousel.css" 	 rel="stylesheet" type="text/css">
<link href="${context.contextPath}/styles/owl.theme.css" 		rel="stylesheet" type="text/css">
<link href="${context.contextPath}/styles/swipebox.css"		 rel="stylesheet" type="text/css">
<link href="${context.contextPath}/styles/colorbox.css"		 rel="stylesheet" type="text/css">
<!--music-->
<style>
.btn_music{display:inline-block;width:35px;height:35px;background:url('${context.contextPath}/images/play.png') no-repeat center center;background-size:100% auto;position:absolute;z-index:100;left:15px;top:20px;}
.btn_music.on{background-image:url("${context.contextPath}/images/stop.png");}
</style>
<style>
  body,html{
	background:url("${context.contextPath}/images/bg02.jpg");
	background-repeat:no-repeat;
	background-size:860px 720px;
	background-position-x:50%;
  }
</style>

<script type="text/javascript" src="${context.contextPath}/scripts/jquery.js"></script>
<script type="text/javascript" src="${context.contextPath}/scripts/jqueryui.js"></script>
<script type="text/javascript" src="${context.contextPath}/scripts/owl.carousel.min.js"></script>
<script type="text/javascript" src="${context.contextPath}/scripts/jquery.swipebox.js"></script>
<#--<script type="text/javascript" src="${context.contextPath}/scripts/colorbox.js"></script>-->
<script type="text/javascript" src="${context.contextPath}/scripts/snap.js"></script>
<script type="text/javascript" src="${context.contextPath}/scripts/contact.js"></script>
<script type="text/javascript" src="${context.contextPath}/scripts/custom.js"></script>
<script type="text/javascript" src="${context.contextPath}/scripts/framework.js"></script>
<script type="text/javascript" src="${context.contextPath}/scripts/framework.launcher.js"></script>
<script type="text/javascript" src="${context.contextPath}/js/music.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		playbox.init("playbox");
	});
</script>

</head>
<body>
<div id="preloader">
	<div id="status">
    	<p class="center-text">
			首页正在加载...
            <em>取决于你的连接速度加载!</em>
        </p>
    </div>
</div>

<div class="top-deco"></div>

<div class="landing-page">
	<span id="playbox" class="btn_music" onclick="playbox.init(this).play();"><audio id="audio" loop src="${context.contextPath}/images/4.mp3"></audio>
    </span>
	<a class="landing-logo" href="#">
    	<img src="${context.contextPath}/images/2.jpg" alt="学习鸟瞰图">

    </a>

    
    <div class="decoration"></div>
      
     
    <div class="landing-navigation">
    <div class="landing-navigation-tablet-top-adjustment"></div> 
    	<a href="${context.contextPath}/index">
        	<img class="nav-icon" src="${context.contextPath}/images/icons/misc/home.png" alt="img">
            <div class="nav-overlay"></div>
        	<img class="nav-image" src="${context.contextPath}/images/general-nature/1s.jpg" alt="img">
            <em style="color:#ffffff;">待办任务</em>
        </a>
    	<a href="${context.contextPath}/pumpList">
        	<img class="nav-icon" src="${context.contextPath}/images/icons/misc/infoabout.png" alt="img">
            <div class="nav-overlay"></div>
        	<img class="nav-image" src="${context.contextPath}/images/general-nature/3s.jpg" alt="img">
            <em style="color:#ffffff;">学习系统</em>
        </a>
    	<a href="${context.contextPath}/charts">
        	<img class="nav-icon" src="${context.contextPath}/images/icons/settings/charts.png" alt="img">
            <div class="nav-overlay"></div>
        	<img class="nav-image" src="${context.contextPath}/images/general-nature/2s.jpg" alt="img">
            <em style="color:#ffffff;">报表系统</em>
        </a>
    	<a href="${context.contextPath}/maintenanceList">
        	<img class="nav-icon" src="${context.contextPath}/images/icons/electrical/wb.png" alt="img">
            <div class="nav-overlay"></div>
        	<img class="nav-image" src="${context.contextPath}/images/general-nature/4s.jpg" alt="img">
            <em style="color:#ffffff;">维保系统</em>
        </a>
    	<a href="${context.contextPath}/inspectionList">
        	<img class="nav-icon" src="${context.contextPath}/images/icons/media/znxj.png" alt="img">
            <div class="nav-overlay"></div>
        	<img class="nav-image" src="${context.contextPath}/images/general-nature/5s.jpg" alt="img">
            <em style="color:#ffffff;">巡检系统</em>
        </a>
    	<a href="${context.contextPath}/setting">
        	<img class="nav-icon" src="${context.contextPath}/images/icons/settings/cog4.png" alt="img">
            <div class="nav-overlay"></div>
        	<img class="nav-image" src="${context.contextPath}/images/general-nature/6s.jpg" alt="img">
            <em style="color:#ffffff;">系统设置</em>
        </a>
        <div class="clear"></div>
        <div class="landing-navigation-tablet-bottom-adjustment"></div> 
    </div>
    
  
    <div class="decoration"></div>
    
    <div class="footer">
    
    	<div class="socials">
            <a href="#" class="twitter-icon"></a>
            <a href="#" class="google-icon"></a>
            <a href="#" class="facebook-icon"></a>
        </div>
        <div class="clear"></div>
        <p class="copyright">
        	COPYRIGHT 2017.<br>
            ALL RIGHTS RESERVED PPP
        </p>
        
    </div>  
</div>

<div style="background:#C0C0C0;height:40px;" ></div>
<div class="bottom-deco"></div>


</body>
</html>