<!DOCTYPE HTML>
<head xmlns="http://www.w3.org/1999/html">
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
    <script>
        //toggle-3-active-background
/*
        $('.deploy-toggle-3').click(function(){
            $(this).val("asdasdasdasdasd");
            return false;
        });*/


        $('#submitDevice').click(function() {
            alert(11);
        });



    </script>

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
                    <a href="${context.contextPath}/map">学习地图<em class="selected-submenu"></em></a>
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
                <a href="${context.contextPath}/inspectionList" class="videos-icon">巡检系统</a>
                <em class="inactive-menu"></em>
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
        <div class="container">
        	<div class="static-notification-blue" style="border-radius:15px;">
                <p class="center-text">巡检任务:${taskCode}<br>
                    <a href="${context.contextPath}/inspectionCircuit/${taskCode}">[推荐巡检路线?]</a>
                    <a href="${context.contextPath}/inspectionList">[返回列表?]</a>
                </p>
            </div>
        	<#list list as data>
				<div class="<#if data.deviceStatus == 0>static-notification-blue<#else>static-notification-red</#if>" style="padding:5px;">
					<p class="left-text"><h4>设备编码:${data.code} - ${data.deviceName}</h4></p>
					<p class="left-text">设备品牌:${data.deviceBarcode}</p>
					<p class="left-text">安装位置:${data.installationPlace}</p>

                    <#if data.deviceStatus == 0> <#--设备正常-->
                        <div class="toggle-3">
                            <form action="${context.contextPath}/inspectionDevice" method="post">
                                <a href="#" class="deploy-toggle-3"><span>该设备正常</span><em><strong></strong></em></a>
                                <input type="hidden" name="deviceStatus" class="deviceStatus" value="0"/>
                                <input type="hidden" name="code" value="${data.code}"/>
                                <div class="toggle-content">
                                    <textarea name="inspectionResult" class="contactTextarea" id="contactMessageTextarea"></textarea>
                                <#--<a href="#" class="center-button button-dark" style="width:80px;margin-top:2px;margin-bottom:2px;border-radius:15px;">提交该设备</a>-->
                                </div>
                                <input type="submit" value="[提交该设备?]" style="width:80px;margin-top:2px;margin-bottom:2px;float:right;"/>
                            </form>
                        </div>
                    <#else>  <#--设备不正常-->
                        <div>
                            该设备有故障: ${data.inspectionResult}
                        </div>

                    </#if>

				</div>
        	</#list>
            <a href="#" class="button-big-icon icon-save button-dark">巡检完成&提交</a>
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