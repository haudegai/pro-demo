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
	
	<title>学习综合管理系统-学习列表</title>
	
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
        window.onload = function(){
            window.setInterval(test,2000);

        };

        /**
         *测试定时更新状态
         */
        function test(){
            var array = [11, 12, 13, 14, 15, 16, 17, 18, 19];
            for (var k = 0, length = array.length; k < length; k++) {
                var cls1 = Math.round(Math.random()*100+ 300- Math.random()*100);
                var cls2 = Math.round(Math.random()*100+800- Math.random()*100);
                var cls3 = Math.round((Math.random()/5+14- Math.random()/5)*100);
                var cls4 = Math.round((Math.random()/5+24- Math.random()/5)*100);
                var cls5 = Math.round(Math.random()*100+300- Math.random()*100);
                var cls6 = Math.round(Math.random()*100+7000- Math.random()*100);
                $('.cls1'+array[k]).text(cls1);
                $('.cls2'+array[k]).text(cls2);
                $('.cls3'+array[k]).text(cls3);
                $('.cls4'+array[k]).text(cls4);
                $('.cls5'+array[k]).text(cls5);
                $('.cls6'+array[k]).text(cls6);
                if(cls1 > 300){
                    $('.cls1'+array[k]).removeClass("highlight-green").addClass("highlight-red");
                }else {
                    $('.cls1'+array[k]).removeClass("highlight-red").addClass("highlight-green");
                }

                if(cls4 > 2400){
                    $('.cls4'+array[k]).removeClass("highlight-green").addClass("highlight-red");
                }else {
                    $('.cls4'+array[k]).removeClass("highlight-red").addClass("highlight-green");
                }

                if(cls5 > 300){
                    $('.cls5'+array[k]).removeClass("highlight-green").addClass("highlight-red");
                }else {
                    $('.cls5'+array[k]).removeClass("highlight-red").addClass("highlight-green");
                }

                if(cls6 > 7000){
                    $('.cls6'+array[k]).removeClass("highlight-green").addClass("highlight-red");
                }else {
                    $('.cls6'+array[k]).removeClass("highlight-red").addClass("highlight-green");
                }
            }

        }
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
            &nbsp;&nbsp;<span class="blog-user" style="color: #858585;"><strong>当前用户：<@shiro.principal/></strong>
            </span>
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
                <a href="#" class="features-icon has-submenu">学习列表</a>
                <em class="dropdown-menu dropup-menu"></em>
              	<div class="submenu active-submenu">
                    <a href="#">学习列表 <em class="selected-submenu"></em></a>
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
                <p class="center-text">学习列表【数量：${totalCount}】
                    <a href="${context.contextPath}/map">[学习地图]</a>
                </p>
            </div>
            <#--<div class="formFieldWrap">
                <input type="text" name="contactNameField" value="" class="contactField requiredField" id="contactNameField"/>
            </div>-->
            <!--database****************************-->
            <#list list as pump>
                <div class="toggle-1">
                    <a href="#" class="deploy-toggle-1">
                        <strong>${pump.plantName}</strong>
                        <img src="images/pump/taiyang.png" class="float-right" width="25" alt="img">
                        <#if pump.id == 15>
                            <img src="images/pump/baoj.gif"  class="float-right" width="25" alt="img">
                        </#if>
                        <img src="images/pump/taiyang.png"  class="float-right" width="25" alt="img">
                        <#if pump.id == 12>
                            <img src="images/pump/gz.png"  class="float-right" width="25" alt="img">
                        </#if>
                        <img src="images/pump/gou-green.png" class="float-right" width="25" alt="img">
                        <#if pump.id == 11>
                            <img src="images/pump/gou-green.png" class="float-right" width="25" alt="img">
                        </#if>
                        <#if pump.id == 17>
                            <img src="images/pump/baoj.gif"  class="float-right" width="25" alt="img">
                        </#if>
                        <img src="images/pump/taiyang.png" class="float-right" width="25" alt="img">
                        <#if pump.id == 18>
                            <img src="images/pump/baoj.gif"  class="float-right" width="25" alt="img">
                        </#if>


                    </a>
                    <div class="toggle-content">

                        <div class="tabs">
                            <a href="#" class="tab-but tab-but-1 tab-active">基本信息</a>
                            <a href="#" class="tab-but tab-but-2">实时数据</a>
                            <a href="#" class="tab-but tab-but-3">人员排班</a>
                            <a href="#" class="tab-but tab-but-4">地理位置</a>
                        </div>
                        <div class="clear"></div>
                        <div class="tab-content tab-content-1">
                            <p>
                                <img src="images/pump/hl.png" class="float-left" width="50" alt="img">
                                识别码：<span class="highlight-blue" >${pump.plantCode}</span>；<br>
                                地址：${pump.plantAddress}；所在水系：${pump.plantRiverSystem}；<br>
                                所在片区：${pump.plantArea}；所在河道：${pump.plantRiver}；<br>
                                管辖单位：${pump.plantUnit}；建设日期：<#if pump.plantDate ??>${pump.plantDate?string("yyyy-MM-dd HH:mm:ss")}<#else>...</#if>；
                            </p>
                        </div>
                        <div class="tab-content tab-content-2">
                            <table cellspacing='0' class="table">
                                <tr>
                                    <td class="table-sub-title">瞬时流量</td>
                                    <td><span class="text-highlight highlight-green cls1${pump.id}">4210</span></td>
                                    <td class="table-sub-title">累计流量</td>
                                    <td><span class="text-highlight highlight-green cls2${pump.id}">158623</span></td>
                                </tr>
                                <tr class='even'>
                                    <td class="table-sub-title">电瓶电压</td>
                                    <td><span class="text-highlight highlight-green cls3${pump.id}">154</span></td>
                                    <td class="table-sub-title">电池电压</td>
                                    <td><span class="text-highlight highlight-green cls4${pump.id}">130</span></td>
                                </tr>
                                <tr>
                                    <td class="table-sub-title">上传次数</td>
                                    <td><span class="text-highlight highlight-green cls5${pump.id}">62</span></td>
                                    <td class="table-sub-title">反向累计</td>
                                    <td><span class="text-highlight highlight-green cls6${pump.id}">84</span></td>
                                </tr>
                            </table>
                        </div>
                        <div class="tab-content tab-content-3">
                            <p>
                                <img src="images/pump/zl.png" class="float-left" width="50" alt="img">
                                早班：<span class="highlight-blue">陈晓娟、王爱婷</span><br>
                                中班：<span class="highlight-blue">杨龙庭、赵英俊</span><br>
                                晚班：<span class="highlight-blue">李东婷、胡阳进</span><br>
                                请相关人员准时、认真完成工作...如要调休、调班请到电脑端调整、审核。
                            </p>
                        </div>
                        <div class="tab-content tab-content-4">
                            <p>
                                <img width="100%" height="140" src="http://api.map.baidu.com/staticimage/v2?ak=wP746Nxc9dhwGHc68oAQviyW&width=280&height=140&zoom=15
                                    &scale=2&markers=${pump.plantLongitude},${pump.plantLatitude}" />
                            </p>
                        </div>
                    </div>
                </div>
            </#list>
            <!--database****************************-->
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