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
	
	<title>学习-巡检系统</title>
	
	<link href="${context.contextPath}/styles/style.css"     		rel="stylesheet" type="text/css">
	<link href="${context.contextPath}/styles/framework.css" 		rel="stylesheet" type="text/css">
	<link href="${context.contextPath}/styles/owl.carousel.css" 	 rel="stylesheet" type="text/css">
	<link href="${context.contextPath}/styles/owl.theme.css" 		rel="stylesheet" type="text/css">
	<link href="${context.contextPath}/styles/swipebox.css"		 rel="stylesheet" type="text/css">
	<link href="${context.contextPath}/styles/colorbox.css"		 rel="stylesheet" type="text/css">


    <style>

        .with-notification a{
            position: relative;
        }

        .with-notification a span{
            position: absolute;
            right: -6px;
            top: -7px;

            display: inline-block;
            min-width: 14px;
            height: 14px;
            line-height: 13px;
            padding: 0 4px;
            background-color: #b90a06;
            border-radius: 7px;
            text-align: center;
            font-size: 12px;
            color: #ffffff;
            z-index: 10000;
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
</head>
<body>

<div id="preloader">
	<div id="status">
    	<p class="center-text">
			内容加载中...
            <em>加载速度取决于你的网速!</em>
        </p>
    </div>
</div>

<div class="top-deco"></div>

<div class="content">
	<div class="header">
    	<a href="#" class="homepage-logo">
        	<img src="${context.contextPath}/images/misc/logo1.png" alt="img">
            &nbsp;&nbsp;<span class="blog-user" style="color: #858585;"><strong>当前用户：<@shiro.principal/></strong>
        </a>
        <a href="${context.contextPath}/index" class="go-home">首页</a>
        <a href="#" class="go-menu">菜单</a>
        <a href="#" class="go-back">关闭</a>
    </div>
    <div class="decoration"></div>
    
    <div class="navigation">
    	<div class="corner-deco"></div>
    	<div class="navigation-wrapper">
            <div class="navigation-item">
                <a href="${context.contextPath}/index" class="home-icon">首页</a>
                <em class="inactive-menu"></em>
            </div>
            <div class="navigation-item">
                <a href="${context.contextPath}/pumpList" class="features-icon has-submenu">学习列表</a>
                <em class="dropdown-menu dropup-menu"></em>
              	<div class="submenu active-submenu">
                    <a href="${context.contextPath}/pumpList">学习列表 <em></em></a>
                    <a href="${context.contextPath}/map">学习地图<em></em></a>
                </div>
            </div>
            <div class="navigation-item">
                <a href="${context.contextPath}/charts" class="portfolio-icon">报表系统</a>
                <em class="inactive-menu"></em>
            </div>
            <div class="navigation-item">
                <a href="${context.contextPath}/maintenanceList" class="gallery-icon">维保系统</a>
                <em class="inactive-menu"></em>
            </div>
            <div class="navigation-item">
                <a href="#" class="videos-icon">巡检系统</a>
                <em class="active-menu"></em>
            </div>
            <div class="navigation-item">
                <a href="${context.contextPath}/setting" class="contact-icon">系统设置</a>
                <em class="inactive-menu"></em>
            </div>
        </div>
    </div>
</div>

<div class="content">   
    <div class="one-half-responsive">
        <div class="container" style="height: auto;border:1px;">
        	<div class="static-notification-blue" style="border-radius:15px;">
                <p class="center-text">今日巡检任务 : ${totalCount}</p>
            </div>
            <div class="tabs with-notification">
                <a href="#" class="tab-but tab-but-1 tab-active" style="float: left;width: 32%">未巡检.<span>${wei}</span></a>
                <a href="#" class="tab-but tab-but-2" style="float: center;width: 32%">正在巡检.<span>${zai}</span></a>
                <a href="#" class="tab-but tab-but-3" style="float: right;width: 34%">已巡检.<span>${wan}</span></a>
            </div>
            <div class="clear"></div>
            <div class="tab-content tab-content-1">
                <#list list as data>
                    <#if data.inspectionStatus == 0>
                        <div class="one-half-responsive">
                            <div class="big-notification yellow-notification">
                                <h4 class="uppercase">任务号:${data.code}</h4>
                                <p>任务日期:${data.startDate?string("yyyy-MM-dd HH:mm:ss")}-${data.endDate?string("yyyy-MM-dd HH:mm:ss")}</p>
                                <p>任务时间:${data.startTime?string("yyyy-MM-dd HH:mm:ss")}-${data.endTime?string("yyyy-MM-dd HH:mm:ss")}</p>
                                <p>任务状态:<span>未巡检  <a href="${context.contextPath}/inspection/${data.code}">[查看详情？]</a></span></p>
                            </div>
                        </div>
                    </#if>
                </#list>
            </div>
            <div class="tab-content tab-content-2">
                <#list list as data>
                    <#if data.inspectionStatus == 1>
                        <div class="one-half-responsive">
                            <div class="big-notification blue-notification">
                                <h4 class="uppercase">任务号:${data.planCode}</h4>
                                <p>任务日期:${data.startDate?string("yyyy-MM-dd HH:mm:ss")}-${data.endDate?string("yyyy-MM-dd HH:mm:ss")}</p>
                                <p>任务时间:${data.startTime?string("yyyy-MM-dd HH:mm:ss")}-${data.endTime?string("yyyy-MM-dd HH:mm:ss")}</p>
                                <p>任务状态:<span>正在巡检 <a href="${context.contextPath}/inspection/${data.code}">[查看详情？]</a></span></p>
                            </div>
                        </div>
                    </#if>
                </#list>
            </div>
            <div class="tab-content tab-content-3">
                <#list list as data>
                    <#if data.inspectionStatus == 2>
                        <div class="one-half-responsive">
                            <div class="big-notification green-notification">
                                <h4 class="uppercase">任务号:${data.planCode}</h4>
                                <p>任务日期:${data.startDate?string("yyyy-MM-dd HH:mm:ss")}-${data.endDate?string("yyyy-MM-dd HH:mm:ss")}</p>
                                <p>任务时间:${data.startTime?string("yyyy-MM-dd HH:mm:ss")}-${data.endTime?string("yyyy-MM-dd HH:mm:ss")}</p>
                                <p>任务状态: <span>已巡检 <a href="${context.contextPath}/inspection/${data.code}">[查看详情？]</a></span></p>
                            </div>
                        </div>
                    </#if>
                </#list>
            </div>
        </div>
    </div>
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
            ALL RIGHTS RESERVED
        </p>
    </div> 
	<div class="bottom-deco"></div>



</body>
</html>