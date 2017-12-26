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
	
	<title>学习-维保系统</title>
	
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
	<script type="text/javascript" src="${context.contextPath}/scripts/colorbox.js"></script>
	<script type="text/javascript" src="${context.contextPath}/scripts/snap.js"></script>
	<script type="text/javascript" src="${context.contextPath}/scripts/contact.js"></script>
	<script type="text/javascript" src="${context.contextPath}/scripts/custom.js"></script>
	<script type="text/javascript" src="${context.contextPath}/scripts/framework.js"></script>
	<script type="text/javascript" src="${context.contextPath}/scripts/framework.launcher.js"></script>

    <script type="text/javascript" src="${context.contextPath}/js/echarts.js"></script>

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
                &nbsp;&nbsp;<span class="blog-user" style="color: #858585;"><strong>当前用户：<@shiro.principal/></strong>
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
                <a href="#" class="portfolio-icon">报表系统</a>
                <em class="active-menu"></em>
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
        <div class="container" style="height:auto;border:1px;">
        	<div class="static-notification-blue" style="border-radius:15px;">
                <p class="center-text">学习报表[样例]</p>
            </div>


            <p><span class="text-highlight highlight-dark">以某个学习为例，记录该学习近一周或一月的排班报表。</span></p>
            <div class="hover_img" id="charts5" style="width: 300px;height:200px;">
                <img src="${context.contextPath}/images/paiban.png" width="100%" height="100%">
            </div>
            <p></p>
            <p></p>


            <p><span class="text-highlight highlight-dark">以某个学习为例，记录该学习每整分钟时候的瞬时流量，记录进30分钟的瞬时流量。</span></p>
            <div class="hover_img" id="charts1" style="width: 320px;height:200px;"></div>
            <script type="text/javascript">
                var myChart = echarts.init(document.getElementById('charts1'));
                // 指定图表的配置项和数据
                var option = {
//                        title: {
//                            text: '瞬间流量'
//                        },
                    tooltip: {},
                    legend: {
                        data:['瞬间流量/分钟']
                    },
                    xAxis: {
//                            name:'时间：每分钟'
                        data: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15",
                            "16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"]
                    },
                    yAxis: {},
                    series: [{
                        name: '瞬间流量/分钟',
                        type: 'bar',
                        data: [501, 400, 769, 501, 400, 769,501, 400, 769, 501, 400,769,320,800,951,
                            501, 400, 769, 501, 400, 769,501, 400, 769, 501, 400,769,320,800,951]
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            </script>


            <p><span class="text-highlight highlight-dark">以某个学习为例，记录该学习每整分钟时候的A相电压，记录进30分钟的A相电压。</span></p>
            <div class="hover_img" id="charts4" style="width: 320px;height:200px;"></div>
            <script type="text/javascript">
                var myChart = echarts.init(document.getElementById('charts4'));
                // 指定图表的配置项和数据
                var option = {
//                        title: {
//                            text: '瞬间流量'
//                        },
                    tooltip: {},
                    legend: {
                        data:['A相电压/分钟']
                    },
                    xAxis: {
//                            name:'时间：每分钟'
                        data: ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15",
                            "16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"]
                    },
                    yAxis: {},
                    series: [{
                        name: 'A相电压/分钟',
                        type: 'bar',
                        itemStyle:{
                            normal: {
                                //好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                                color: function(params) {
                                    // build a color map as your need.
                                    var colorList = [
                                        '#27727B'
                                    ];
                                    return colorList[params.dataIndex]
                                },
                            }
                        },
                        data: [251, 240, 279, 250, 240, 276, 252, 240, 269, 251, 240, 276, 232, 280, 291,
                            251, 240, 279, 251, 240, 279, 251, 240, 279, 251, 240, 279, 230, 280, 295]
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            </script>




            <p><span class="text-highlight highlight-dark">管辖内的各个学习的异常数据：水位信号、水泵电压、电流信号、格栅机状态信号、启动柜启动信号、安防信号、视频信号、
                控制输出信号等异常数次对比。</span></p>
            <div class="hover_img" id="charts2" style="width: 300px;height:200px;"></div>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('charts2'));
                // 指定图表的配置项和数据
                var option = {
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        orient : 'horizontal',
                        x : 'left',
                        data:['城区学习','绿科安学习','金立源学习','康亭路学习','岳湖学习']
                    },
                    /*toolbox: {
                        show : true,
                        feature : {
                            mark : {show: true},
                            dataView : {show: true, readOnly: false},
                            magicType : {
                                show: true,
                                type: ['pie', 'funnel'],
                                option: {
                                    funnel: {
                                        x: '25%',
                                        width: '50%',
                                        funnelAlign: 'left',
                                        max: 548
                                    }
                                }
                            }
//                                restore : {show: true},
//                                saveAsImage : {show: true}
                        }
                    },*/
                    calculable : true,
                    series : [
                        {
                            name:'异常次数',
                            type:'pie',
                            radius : '55%',
                            center: ['50%', '60%'],
                            data:[
                                {value:335, name:'城区学习'},
                                {value:310, name:'绿科安学习'},
                                {value:234, name:'金立源学习'},
                                {value:135, name:'康亭路学习'},
                                {value:548, name:'岳湖学习'}
                            ]
                        }
                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            </script>
            <p></p>
            <p></p>


            <p><span class="text-highlight highlight-dark">管辖内的各个学习的设备进行维修的次数进行统计，并且做出对比图。</span></p>
            <div class="hover_img" id="charts3" style="width: 300px;height:200px;"></div>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('charts3'));
                // 指定图表的配置项和数据
                var option = {
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        orient : 'horizontal',
                        x : 'left',
                        data:['一鑫针织1#学习','汤浦水库学习','新龙家印染3#学习','中河双向学习','金立源学习']
                    },
                    calculable : true,
                    series : [
                        {
                            name:'异常次数',
                            type:'pie',
                            radius : '55%',
                            center: ['50%', '60%'],
                            data:[
                                {value:135, name:'一鑫针织1#学习'},
                                {value:110, name:'汤浦水库学习'},
                                {value:204, name:'新龙家印染3#学习'},
                                {value:135, name:'中河双向学习'},
                                {value:148, name:'金立源学习'}
                            ]
                        }
                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            </script>

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