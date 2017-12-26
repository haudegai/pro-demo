<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>巡检推荐路线</title>
    <link rel="stylesheet" type="text/css" href="${context.contextPath}/easyui/themes/gray/easyui.css">
    <link rel="stylesheet" type="text/css" href="${context.contextPath}/easyui/themes/mobile.css">
    <link rel="stylesheet" type="text/css" href="${context.contextPath}/easyui/themes/icon.css">

    <script type="text/javascript" src="${context.contextPath}/easyui/jquery.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="${context.contextPath}/easyui/jquery.easyui.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="${context.contextPath}/easyui/jquery.easyui.mobile.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=wP746Nxc9dhwGHc68oAQviyW"></script>
</head>

<body>
<div class="easyui-navpanel">
    <header>
        <div class="m-toolbar">
            <span class="m-title">推荐路线</span>
            <div class="m-left">
                <a href="#" class="easyui-linkbutton m-back" data-options="plain:true,outline:true,back:true">返回巡检</a>
            </div>
        </div>
    </header>

    <div style="width:100%;height:100%;border:1px solid gray" id="container"></div>
</div>
</body>
</html>
<script type="text/javascript">
    var map = new BMap.Map("container");
    map.centerAndZoom(new BMap.Point(120.170742,30.256168), 15);
    map.addControl(new BMap.NavigationControl());               // 添加平移缩放控件
    map.addControl(new BMap.ScaleControl());                    // 添加比例尺控件
    map.addControl(new BMap.OverviewMapControl());              //添加缩略地图控件


    map.clearOverlays();
    var driving = new BMap.DrivingRoute(map);
    var markerArr = ${param};
    console.info(markerArr);

    /*var markerArr = [
        {title: "火车站0",point: "120.170742,30.256168"},
        {title: "火车站1",point: "120.059712,30.247932"},
        {title: "火车站2",point: "120.20071,30.20256"},
        {title: "火车站3",point: "120.103549,30.175588"},
        {title: "火车站4",point: "120.123312,30.329948"},
        {title: "火车站5",point: "120.092877,30.245311"},

        {title: "火车站7",point: "120.152587,30.206504"},
        {title: "火车站8",point: "120.149579,30.252362"}
    ];*/

    var point = new Array(); //存放标注点经纬信息的数组
    var marker = new Array(); //存放标注点对象的数组
    for (var i = 0; i < markerArr.length; i++) {
        var p0 = markerArr[i].point.split(",")[0]; //x
        var p1 = markerArr[i].point.split(",")[1]; //y
        point[i] = new window.BMap.Point(p0, p1); //循环生成新的地图点
        marker[i] = new window.BMap.Marker(point[i]); //按照地图点坐标生成标记
        map.addOverlay(marker[i]);
        var label = new window.BMap.Label(markerArr[i].title, { offset: new window.BMap.Size(20, -10) });
        marker[i].setLabel(label);
        var lab1 = new BMap.Label(i+1, { position: point[i], offset: new BMap.Size(-7, -25) });
        lab1.setStyle({
            color: "#fff",
            fontSize: "15px",
            backgroundColor: "0.05",
            border: "0",
            fontWeight: "bold"
        });
        map.addOverlay(lab1);
    }

    for (var i = 0; i < markerArr.length-1; i++) {
        driving.search(point[i], point[i+1]);
    }

    driving.setSearchCompleteCallback(function(){
        var pts = driving.getResults().getPlan(0).getRoute(0).getPath();    //通过驾车实例，获得一系列点的数组
        //maps.addOverlay(new BMap.Polyline(pts, { strokeColor: "red", strokeWeight: 2, strokeOpacity: 1 }));
        var polyline = new BMap.Polyline(pts, { strokeColor: "black", strokeWeight: 2, strokeOpacity: 1,strokeStyle:"dashed" });
        map.addOverlay(polyline);
        setTimeout(function(){
            map.setViewport(point);          //调整到最佳视野
        },1000);
    });

    $(function(){
        // 定位对象
        var geoc = new BMap.Geocoder();
        var geolocation = new BMap.Geolocation();
        geolocation.getCurrentPosition(function(r){
            if(this.getStatus() == BMAP_STATUS_SUCCESS){
                var mk = new BMap.Marker(r.point);
                map.addOverlay(mk);
                var label = new window.BMap.Label("您的位置", { offset: new window.BMap.Size(20, -10) });
                mk.setLabel(label);
                map.panTo(r.point);
                setLocation(r.point);
            }else {
                $("#start").attr("placeholder","请输入您的当前位置")
                alert('无法定位到您的当前位置，导航失败，请手动输入您的当前位置！'+this.getStatus());
            }
        },{enableHighAccuracy: true});

        //获取地理位置的函数
        function setLocation(point){
            geoc.getLocation(point, function(rs){
                var addComp = rs.addressComponents;
                var result = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
            });
        }
    });


</script>