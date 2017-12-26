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

    <title>学习-学习地图</title>

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
    <script type="text/javascript" src="${context.contextPath}/scripts/snap.js"></script>
    <script type="text/javascript" src="${context.contextPath}/scripts/contact.js"></script>
    <script type="text/javascript" src="${context.contextPath}/scripts/custom.js"></script>
<#--<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=wP746Nxc9dhwGHc68oAQviyW"></script>-->

    <style type="text/css">
        #map{
            height: 350px;
            border:1px;
        }
    </style>
</head>
<body>


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
                    <a href="#">学习地图<em class="selected-submenu"></em></a>
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
                <p class="center-text">学习地图
                    <a href="${context.contextPath}/pumpList">[学习列表]</a>
                </p>
            </div>
            <#--<input type="text" name="contactNameField" value="" class="contactField requiredField" id="contactNameField"/>-->
            <div class="main" id="map"></div>
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

<script type="text/javascript">
    /*var markerArr = [
        { title: "名称：广州火车站", point: "113.264531,23.157003", address: "广东省广州市广州火车站", tel: "12306" },
        { title: "名称：广州塔（赤岗塔）", point: "113.330934,23.113401", address: "广东省广州市广州塔（赤岗塔） ", tel: "18500000000" },
        { title: "名称：广州动物园", point: "113.312213,23.147267", address: "广东省广州市广州动物园", tel: "18500000000" },
        { title: "名称：天河公园", point: "113.372867,23.134274", address: "广东省广州市天河公园", tel: "18500000000" }

    ];*/
    var markerArr =${param};

    function map_init() {
        console.info(markerArr);
        var map = new BMap.Map("map"); // 创建Map实例
        var point = new BMap.Point(${x},${y}); //地图中心点，广州市
        map.centerAndZoom(point, 12); // 初始化地图,设置中心点坐标和地图级别。
        map.enableScrollWheelZoom(true); //启用滚轮放大缩小
        //向地图中添加缩放控件
        var ctrlNav = new window.BMap.NavigationControl({
            anchor: BMAP_ANCHOR_TOP_LEFT,
            type: BMAP_NAVIGATION_CONTROL_LARGE
        });
        map.addControl(ctrlNav);

        //向地图中添加缩略图控件
        var ctrlOve = new window.BMap.OverviewMapControl({
            anchor: BMAP_ANCHOR_BOTTOM_RIGHT,
            isOpen: 1
        });
        map.addControl(ctrlOve);

        //向地图中添加比例尺控件
        var ctrlSca = new window.BMap.ScaleControl({
            anchor: BMAP_ANCHOR_BOTTOM_LEFT
        });
        map.addControl(ctrlSca);

        var point = new Array(); //存放标注点经纬信息的数组
        var marker = new Array(); //存放标注点对象的数组
        var info = new Array(); //存放提示信息窗口对象的数组
        for (var i = 0; i < markerArr.length; i++) {
            //循环生成point
            var p0 = markerArr[i].point.split(",")[0]; //
            var p1 = markerArr[i].point.split(",")[1]; //按照原数组的point格式将地图点坐标的经纬度分别提出来
            point[i] = new window.BMap.Point(p0, p1); //循环生成新的地图点

            //循环生成marker
            marker[i] = new window.BMap.Marker(point[i]); //按照地图点坐标生成标记
            var myIcon = new BMap.Icon("/images/pump/markers_1.png", new BMap.Size(23, 25), {
                offset: new BMap.Size(10, 25), // 指定定位位置
                imageOffset: new BMap.Size(0, 0 - 10 * 25) // 设置图片偏移
            });
            marker[i].setIcon(myIcon);
            map.addOverlay(marker[i]);
            //marker[i].setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画

            //循环生成label
            var label = new window.BMap.Label(markerArr[i].title+"</br>流量:4000 m3/h</br>压力:5 MPa", { offset: new window.BMap.Size(20, -10) });
            label.setStyle({
                color: "#ED1C24",
                fontSize: "8px",
                backgroundColor: "#E5EFFB",
                border: "1px",
                fontWeight: "bold"
            });
            marker[i].setLabel(label);

            //循环添加InfoWindow
            //info[i] = new window.BMap.InfoWindow("<p style=’font-size:12px;lineheight:1.8em;’>" + markerArr[i].title + "</br>地址：" + markerArr[i].address + "</br> 电话：" + markerArr[i].tel + "</br></p>"); // 创建信息窗口对象
            addInfo("<p style=’font-size:12px;lineheight:1.8em;’>" + markerArr[i].title + "</br>地址：" + markerArr[i].address + "</br> 电话：" + markerArr[i].tel + "</br> 详情...：" + markerArr[i].tel + "</br></p>",marker[i]);
        }
        window.setInterval(test,2000);

        /**
         *测试定时更新状态
         */
        function test(){
            for (var i = 0; i < markerArr.length; i++) {
                var ll = Math.round(Math.random()*100+4000- Math.random()*100)+' m3/h';
                var yl = Math.round((Math.random()/5+4- Math.random()/5)*100)/100+' MPa';
                var label = new window.BMap.Label(markerArr[i].title+"</br>流量:"+ll+"</br>压力:"+yl, { offset: new window.BMap.Size(20, -10) });
                label.setStyle({
                    color: "#ED1C24",
                    fontSize: "8px",
                    backgroundColor: "#E5EFFB",
                    border: "1px",
                    fontWeight: "bold"
                });
                marker[i].setLabel(label);
            }

        }
    }

    function addInfo(txt,marker){
        var infoWindow = new BMap.InfoWindow(txt);
        marker.addEventListener("click", function(){this.openInfoWindow(infoWindow);});
    }





    //异步调用百度js
    function map_load() {
        var load = document.createElement("script");
        load.src = "http://api.map.baidu.com/api?v=2.0&ak=wP746Nxc9dhwGHc68oAQviyW&callback=map_init";
        document.body.appendChild(load);
    }
    window.onload = map_load;
</script>






















<#--<script type="text/javascript">
        // 百度地图API功能
        var map = new BMap.Map("map");

    	// 复杂的自定义覆盖物
    	function ComplexCustomOverlay(point, text, textValue){
    		this._point = point;
    		this._text = text;
    		this._overText = textValue;
        }
    	ComplexCustomOverlay.prototype = new BMap.Overlay();
    	ComplexCustomOverlay.prototype.initialize = function(mp){
    		this._map = mp;
    		var heightDiv = Number(20)+25*this._overText.length;
    		//alert(heightDiv);
          	var div = this._div = document.createElement("div");
          	div.style.position = "absolute";
          	div.style.zIndex = BMap.Overlay.getZIndex(this._point.lat);
          	div.style.backgroundColor = "#F0F8FF";
          	div.style.border = "1px solid #000000";
          	div.style.color = "white";
          	div.style.height = heightDiv+"px";
          	div.style.padding = "1px";
          	div.style.lineHeight = "18px";
          	div.style.whiteSpace = "nowrap";
          	div.style.MozUserSelect = "none";
          	div.style.fontSize = "12px"

    		// table
    		var sContent = "<div style='background:646251; width:100px height:10px'><h4 style='margin:0 0 0 0;padding:0 0;color:Black;font-size:14px;text-align:center'>"+this._text+"</h4></div>";
    		sContent +="<table border=1 cellpadding=0 cellspacing=0 style=\"border-collapse:collapse\">";
    		for(var i=0; i <this._overText.length; i++){
    			sContent +="<tr><td style=\"color:Black;\">"+this._overText[i].varName+"</td><td style=\"color:Red;\">"+this._overText[i].varValue+"</td></tr>";
    		}
    		sContent +="</table>";
     		div.innerHTML=sContent;

          	map.getPanes().labelPane.appendChild(div);

          	return div;
    	}
        ComplexCustomOverlay.prototype.draw = function(){
    		var map = this._map;
          	var pixel = map.pointToOverlayPixel(this._point);
          	this._div.style.left = pixel.x  -3 + "px";
          	this._div.style.top  = pixel.y  -3 + "px";
        }


        $(function() {
    		// 创建点坐标
    		getPoint();
    		// 冒泡标注物
    		getDataInfoJson();
    		// 工具
    		getToolControl();

//    		window.setInterval("getDataInfoJson()", 1000);

    	});

    	// 创建点坐标
    	function getPoint(){
    		// 初始化地图,设置中心点坐标和地图级别
    		//var point = new BMap.Point("${pointLongitude}","${pointlatitude}");
    		var point = new BMap.Point(120.150728,30.249804);
    		// 初始化地图，设置中心点坐标和地图级别
   	    	map.centerAndZoom(point, 15);
    	    map.enableScrollWheelZoom();
    	}

    	// 冒泡标注物
    	//先声明一维
    	var data_info=new Array();
    	function getDataInfoJson() {
    		// 搜索
    		//mapStationFun();
    		// 地图学习数据
    		$.post('${context.contextPath}/baidu/map/dataInfoJson', {
    			mapLevel:map.getZoom()
    		}, function(result) {
    			var data = result.obj;
    			if(data==null){
    				//alert("获取数据失败！");
    				return;
    			}
    			if(data.stationList.length<=0){
    				//alert("未取到站点数据，加载失败！");
    				return;
    			}
    			data_info=new Array();
    			for(var i=0; i <data.stationList.length; i++){
    				//在声明二维
    				data_info[i]=new Array();
    				data_info[i][0] = data.stationList[i].x;
    				data_info[i][1] = data.stationList[i].y;
    				data_info[i][2] = data.stationList[i].name;
    				data_info[i][3] = data.stationList[i].code;
    	        	data_info[i][4] = data.stationList[i].varChildren;
    	        	data_info[i][5] = data.stationList[i].icon;
    			}
    			//清除地图覆盖物
    			map.clearOverlays();
    			markerDataInfo();
    		}, 'JSON');
    	}
    	// 创建标注
    	//var pname;
    	// 将标注添加到地图中
    	function markerDataInfo(){
    		for(var i=0;i<data_info.length;i++){
    			// 创建标注
    			var myPoint = new BMap.Point(data_info[i][0],data_info[i][1]);
    			var marker = new BMap.Marker(myPoint);
    			// 创建信息窗口对象
    			//开启信息窗口
    			// 自定义覆盖物
    			var txtName = data_info[i][2];
    			var txtValue = data_info[i][4];
    			var mouseoverTxt = new Array();
    			var myCompOverlay = new ComplexCustomOverlay(myPoint,txtName,txtValue);
    			map.addOverlay(myCompOverlay);// 将覆盖物添加到地图中
    			//　参数内容
    			var content = data_info[i][3]+"||"+data_info[i][2];
    			// 将标注添加到地图中
    			map.addOverlay(marker);
    			// 标签
    		}
    	}

      	// 工具
      	function getToolControl(){
    		//地图类型只有
    	    //地图(BMAP_NORMAL_MAP)和三维(BMAP_PERSPECTIVE_MAP)
    	    //卫星(BMAP_SATELLITE_MAP)和混合(BMAP_HYBRID_MAP)，共4种
    	    map.setMapType(BMAP_NORMAL_MAP);
    	    map.enableScrollWheelZoom();        //开启滚轮缩放功能
    	    map.disableDoubleClickZoom();       //关闭双击放大功能
    	    map.enableKeyboard();               //开启键盘操作功能
    	    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
    	    //添加地图类型控件
    	    //map.addControl(new BMap.MapTypeControl());

    	    // 缩放比例尺
    	    add_control();
      	}

    	//缩放控件type有四种类型:
    	// BMAP_NAVIGATION_CONTROL_SMALL：仅包含平移和缩放按钮；
    	// BMAP_NAVIGATION_CONTROL_PAN:仅包含平移按钮；
    	// BMAP_NAVIGATION_CONTROL_ZOOM：仅包含缩放按钮
    	var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
    	var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
    	var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}); //右上角，仅包含平移和缩放按钮
    	//添加控件和比例尺
    	function add_control(){
    		map.addControl(top_left_control);
    		map.addControl(top_left_navigation);
    		//map.addControl(top_right_navigation);
    	}
    	//移除控件和比例尺
    	function delete_control(){
    		map.removeControl(top_left_control);
    		map.removeControl(top_left_navigation);
    		map.removeControl(top_right_navigation);
    	}

    	// 定义一个控件类,即function
    	function ZoomControl(){
    	  // 默认停靠位置和偏移量
    	  this.defaultAnchor = BMAP_ANCHOR_TOP_LEFT;
    	  this.defaultOffset = new BMap.Size(10, 10);
    	}
    	// 通过JavaScript的prototype属性继承于BMap.Control
    	ZoomControl.prototype = new BMap.Control();
    	// 自定义控件必须实现自己的initialize方法,并且将控件的DOM元素返回
    	// 在本方法中创建个div元素作为控件的容器,并将其添加到地图容器中
    	ZoomControl.prototype.initialize = function(map){
    		// 创建一个DOM元素
    		var div = document.createElement("div");
    	  	// 添加文字说明
    	  	div.appendChild(document.createTextNode("放大2级"));
    	  	// 设置样式
    	  	div.style.cursor = "pointer";
    	  	div.style.border = "1px solid gray";
    	  	div.style.backgroundColor = "white";
    	 	// 绑定事件,点击一次放大两级
    	 	div.onclick = function(e){
    			map.setZoom(map.getZoom() + 2);
    		}
    	  	// 添加DOM元素到地图中
    	  	map.getContainer().appendChild(div);
    	  	// 将DOM元素返回
    	 	return div;
    	}
    	function getMyZoomCtrl(){
    		// 创建控件
    		var myZoomCtrl = new ZoomControl();
    		// 添加到地图当中
    		//map.addControl(myZoomCtrl);
    	}

    	// 用经纬度设置地图中心点
    	function stationLocation(longitude,latitude,stationName){
    		if(longitude != "" && latitude != ""){
    			var new_point = new BMap.Point(longitude,latitude);
    			map.panTo(new_point);
    			//map.centerAndZoom(new_point, 15);
    		}
    	}
    	// 删除特定标注
    	function deletePoint(stationName){
    		var allOverlay = map.getOverlays();
    		for (var i = 0; i < allOverlay.length; i++){
    			/*if(allOverlay[i].getLabel().content == "我是id=1"){
    				map.removeOverlay(allOverlay[i]);
    				return false;
    			}*/
    			if(allOverlay[i]._text == stationName){
    				map.removeOverlay(allOverlay[i]);
    				return false;
    			}
    		}
    	}

</script>-->


</body>
</html>