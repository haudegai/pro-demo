<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <title>xx-登录</title>
        <link rel="stylesheet" type="text/css" href="${context.contextPath}/easyui/themes/gray/easyui.css">
        <link rel="stylesheet" type="text/css" href="${context.contextPath}/easyui/themes/mobile.css">
        <link rel="stylesheet" type="text/css" href="${context.contextPath}/easyui/themes/icon.css">
        <style>
            .panel-body{
                background:url("${context.contextPath}/images/bg02.jpg");
                background-repeat:no-repeat;
                background-size:860px 720px;
                background-position-x:50%;
            }
            .red{font-size:12px;color:#f00;display:block; height:22px; padding:0 0 0 39px; width:302px; text-align:left; line-height:22px; visibility:hidden;}
            .red.on{ visibility:visible;}
        </style>
        <script type="text/javascript" src="${context.contextPath}/easyui/jquery.min.js" charset="utf-8"></script>
        <script type="text/javascript" src="${context.contextPath}/easyui/jquery.easyui.min.js" charset="utf-8"></script>
        <script type="text/javascript" src="${context.contextPath}/easyui/jquery.easyui.mobile.js" charset="utf-8"></script>
        <script type="text/javascript">
            function login(){
                $(".ff").submit();
            }
        </script>
    </head>
    <body>
        <div class="easyui-navpanel">
            <header>
                <div class="m-toolbar">
                    <span class="m-title">学习综合管理系统</span>
                </div>
            </header>
            <div style="margin:20px auto;width:100px;height:100px;border-radius:100px;overflow:hidden">
                <img src="${context.contextPath}/images/login_mobile.png" style="margin:0;width:100%;height:100%;">
            </div>
            <form  class="ff" action="${context.contextPath}/login" method="post">
                <div style="padding:0 20px">
                    <div style="margin-bottom:10px">
                        <input class="easyui-textbox" name="username" value="admin" style="width:100%;height:40px;padding:12px" data-options="prompt:'Username',iconCls:'icon-man',iconWidth:38">
                    </div>
                    <div style="margin-bottom:20px">
                        <input class="easyui-textbox" name="password" value="888888" type="password" style="width:100%;height:40px;padding:12px" data-options="prompt:'Password',iconCls:'icon-lock',iconWidth:38">
                    </div>
                    <div style="margin-bottom:20px">
                        <ul class="m-list">
                            <li>
                                <span>记住我</span>
                                <div class="m-right"><input class="easyui-switchbutton" checked></div>
                            </li>
                        </ul>
                    </div>
                     <span class="red <#if errorCode??>on</#if>">
                        <#if errorCode != ''>  ${errorMsg} </#if>
                    </span>
                    <div>
                        <a href="#" class="easyui-linkbutton c6" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;" onclick="login()">
                            <span style="font-size:14px;">登录</span>
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>