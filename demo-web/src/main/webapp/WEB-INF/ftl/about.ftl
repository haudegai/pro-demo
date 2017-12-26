<!DOCTYPE HTML>
<html>
<head>
	<title>学习综合管理系统-地图</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="keywords" content=" web design" />

    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${context.contextPath}/css/style.css" type="text/css" media="all" />

    <script src="${context.contextPath}/js/mobile.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=wP746Nxc9dhwGHc68oAQviyW"></script>


    <script type="application/x-javascript">

		addEventListener("load", function() { setTimeout(
		hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>
	<script type="text/javascript">
		window.onload = function() {
			w3Init();
		};
	</script>

</head>
<body>

<div class="wrap">
    <div class="wrap-box"></div>
    <!------ Header ------------>
    <div class="header">
        <div class="header-top">
            <div class="top-header-left">
                <p>18258181557</p>
            </div>
            <div class="right-left">
                <ul>
                    <li class="login"><a href="#">Login</a></li>
                    <li class="sign"><a href="#">Sign up</a></li>
                </ul>
            </div>
            <div class="clear"> </div>
        </div>
        <div class="header-bottom">
            <div id="w3-masthead">
                <div id="w3-universal-nav">
                    <ul id="header">
                        <a href="index.ftl"><img src="images/logo.png" alt=""></a>
                    </ul>
                    <div id="w3-mobile-options">
                        <li id="w3-menu-trigger" class=" ">
                            <a href="">Menu</a></li>

                    </div>
                    <ul id="w3-menu-links" style="display: none;" class=" ">
                        <li><a href="${context.contextPath}/index">首页</a></li>
                        <li><a href="${context.contextPath}/about">地图</a></li>
                        <li><a href="${context.contextPath}/services">维保</a></li>
                        <li><a href="${context.contextPath}/services">巡检</a></li>
                        <li><a href="${context.contextPath}/contact">联系</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!------End Header ------------>
	<!------Content ------------>
   <div class="main" id="map">

   </div>
   <!------End Content ------------>
  <#-- <div class="footer">

   </div>-->
</div>
<script type="text/javascript">
        // 百度地图API功能
        var map = new BMap.Map("map");
        var point = new BMap.Point(116.404, 39.915);
        map.centerAndZoom(point, 15);
        map.addControl(new BMap.NavigationControl());
        map.addControl(new BMap.ScaleControl());
        map.addControl(new BMap.OverviewMapControl());
        map.addControl(new BMap.MapTypeControl());
        map.setCurrentCity("北京");


        var points = [
            [116.417, 39.909],
            [116.417, 39.919],
            [116.415, 39.913],
            [116.412, 39.921],
            [116.410, 39.915],
            [116.408, 39.920],
            [116.412, 39.912],
            [116.413, 39.915]
        ];


        // 向地图添加标注
        for( var i = 0;i < points.length; i++){
            var myIcon = new BMap.Icon("images/marker.png", new BMap.Size(50, 50));
            var point = new BMap.Point(points[i][0],points[i][1]);
            // 创建标注对象并添加到地图
            var marker = new BMap.Marker(point,{icon: myIcon});
            map.addOverlay(marker);
            marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
            marker.addEventListener("click", function(){
                alert("您点击了标注");
            });
        };
</script>
</body>
</html>

    	
    	
            