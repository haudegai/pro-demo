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


    <style>
        * {
            margin: 0;
            padding: 0;
        }
        /*图片上传*/

        .z_photo {
            width: 100%;
            height: 2rem;
            padding: 0.3rem;
            overflow: auto;
            clear: both;
            margin-bottom: 0.3rem;
            border: 1px solid #b1b6a8;
        }

        .z_photo img {
            width: 1rem;
            height: 1rem;
        }

        .z_addImg {
            float: left;
            margin-right: 0.2rem;
        }

        .z_file {
            width: 1rem;
            height: 1rem;
            background: url(images/z_add.png) no-repeat;
            background-size: 100% 100%;
            float: left;
            margin-right: 0.2rem;
        }

        .z_file input::-webkit-file-upload-button {
            width: 1rem;
            height: 1rem;
            border: none;
            position: absolute;
            outline: 0;
            opacity: 0;
        }

        .z_file input#file {
            display: block;
            width: auto;
            border: 0;
            vertical-align: middle;
        }
        /*遮罩层*/

        .z_mask {
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, .5);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 999;
            display: none;
        }

        .z_alert {
            width: 3rem;
            height: 1.5rem;
            border-radius: .2rem;
            background: #fff;
            font-size: .24rem;
            text-align: center;
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -1.5rem;
            margin-top: -2rem;
        }

        .z_alert p:nth-child(1) {
            line-height: 0.5rem;
        }

        .z_alert p:nth-child(2) span {
            display: inline-block;
            width: 49%;
            height: .3rem;
            line-height: .5rem;
            float: left;
            border-top: 1px solid #ddd;
        }

        .z_cancel {
            border-right: 1px solid #ddd;
        }

        .required {
            color: red;
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


    <script type="text/javascript">
        //px转换为rem
        (function(doc, win) {
            var docEl = doc.documentElement,
                    resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
                    recalc = function() {
                        var clientWidth = docEl.clientWidth;
                        if (!clientWidth) return;
                        if (clientWidth >= 640) {
                            docEl.style.fontSize = '100px';
                        } else {
                            docEl.style.fontSize = 100 * (clientWidth / 640) + 'px';
                        }
                    };

            if (!doc.addEventListener) return;
            win.addEventListener(resizeEvt, recalc, false);
            doc.addEventListener('DOMContentLoaded', recalc, false);
        })(document, window);

        function imgChange(obj1, obj2) {
            //获取点击的文本框
            var file = document.getElementById("file");
            //存放图片的父级元素
            var imgContainer = document.getElementsByClassName(obj1)[0];
            //获取的图片文件
            var fileList = file.files;
            //文本框的父级元素
            var input = document.getElementsByClassName(obj2)[0];
            var imgArr = [];
            //遍历获取到得图片文件
            for (var i = 0; i < fileList.length; i++) {
                var imgUrl = window.URL.createObjectURL(file.files[i]);
                imgArr.push(imgUrl);
                var img = document.createElement("img");
                img.setAttribute("src", imgArr[i]);
                var imgAdd = document.createElement("div");
                imgAdd.setAttribute("class", "z_addImg");
                imgAdd.appendChild(img);
                imgContainer.appendChild(imgAdd);
            };
            imgRemove();
        };

        function imgRemove() {
            var imgList = document.getElementsByClassName("z_addImg");
            var mask = document.getElementsByClassName("z_mask")[0];
            var cancel = document.getElementsByClassName("z_cancel")[0];
            var sure = document.getElementsByClassName("z_sure")[0];
            for (var j = 0; j < imgList.length; j++) {
                imgList[j].index = j;
                imgList[j].onclick = function() {
                    var t = this;
                    mask.style.display = "block";
                    cancel.onclick = function() {
                        mask.style.display = "none";
                    };
                    sure.onclick = function() {
                        mask.style.display = "none";
                        t.style.display = "none";
                    };

                }
            };
        };

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
                    <a href="${context.contextPath}/map">学习地图<em></em></a>
                </div>
            </div>
            <div class="navigation-item">
                <a href="${context.contextPath}/charts" class="portfolio-icon">报表系统</a>
                <em class="active-menu"></em>
            </div>
            <div class="navigation-item">
                <a href="#" class="gallery-icon">维保系统</a>
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
                <p class="center-text uppercase">添加故障单 &nbsp&nbsp&nbsp <a href="${context.contextPath}/maintenanceList">[返回列表]</a></p>
            </div>

            <div class="formSuccessMessageWrap" id="formSuccessMessageWrap">
                <div class="big-notification green-notification">
                    <h3 class="uppercase">Message Sent </h3>
                    <a href="#" class="close-big-notification">x</a>
                    <p>Your message has been successfuly sent. Please allow up to 48 hours for a reply! Thank you!</p>
                </div>
            </div>


            <form action="${context.contextPath}/saveMaintenance" method="post" enctype="multipart/form-data" class="contactForm" id="contactForm">
                <fieldset>
                    <div class="formValidationError" id="ticketCodeError">
                        <div class="static-notification-red tap-dismiss-notification">
                            <p class="center-text">请填写维保单名称!</p>
                        </div>
                    </div>
                    <div class="formValidationError" id="deviceCodeError">
                        <div class="static-notification-red tap-dismiss-notification">
                            <p class="center-text">请填写维保设备!!</p>
                        </div>
                    </div>
                    <div class="formValidationError" id="troubleDescribeError">
                        <div class="static-notification-red tap-dismiss-notification">
                            <p class="center-text">请填写维保设备故障</p>
                        </div>
                    </div>
                    <div class="formFieldWrap">
                        <label class="field-title ticketCode" for="ticketCode"><em class="required">* </em> 维保单名称:</label>
                        <input type="text" name="ticketCode" value="<#if ticketCode??>${ticketCode}</#if>" class="contactField requiredField" id="plantCode" <#if ticketCode??>readonly</#if>/>
                    </div>
                    <div class="formFieldWrap">
                        <label class="field-title deviceCode" for="deviceCode"><em class="required">* </em>维保设备:</label>
                        <input type="text" name="deviceCode" value="" class="contactField requiredField requiredEmailField" id="deviceCode"/>
                    </div>
                    <div class="formTextareaWrap">
                        <label class="field-title troubleDescribe" for="troubleDescribe"><em class="required">* </em>故障详情:</label>
                        <textarea name="troubleDescribe" class="contactTextarea requiredField" id="troubleDescribe"></textarea>
                    </div>


                    <!--    照片添加    -->
                    <label class="field-title photo" for="phone">图片信息: <span>(请先拍照然后上传)</span></label>
                    <div class="z_photo">
                        <div class="z_file">
                            <input type="file" name="photoFile" id="file" value="" accept="image/*" multiple onchange="imgChange('z_photo','z_file');" />

                        </div>

                    </div>

                    <!--遮罩层-->
                    <div class="z_mask">
                        <!--弹出框-->
                        <div class="z_alert">
                            <p>确定要删除这张图片吗？</p>
                            <p>
                                <span class="z_cancel">取消</span>
                                <span class="z_sure">确定</span>
                            </p>
                        </div>
                    </div>


                    <div class="formSubmitButtonErrorsWrap">
                        <input type="button" class="buttonWrap button button-green contactSubmitButton" id="contactSubmitButton" value="提交维保单" data-formId="contactForm"/>
                    </div>

                </fieldset>
            </form>
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