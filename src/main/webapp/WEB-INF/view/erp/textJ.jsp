<%--
  Created by IntelliJ IDEA.
  User: Server
  Date: 2018/1/31
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="/resource/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">若看</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <div id="we" name="we">
            <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        </div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退了</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">所有商品</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">列表一</a></dd>
                        <dd><a href="javascript:;">列表二</a></dd>
                        <dd><a href="javascript:;">列表三</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">解决方案</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">列表一</a></dd>
                        <dd><a href="javascript:;">列表二</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">云市场</a></li>
                <li class="layui-nav-item"><a href="">发布商品</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->

        <table class="layui-hide"  id="test" lay-filter="demo"></table>

        <script type="text/html" id="barDemo">
            <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
            <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
        </script>

        <div class="layui-tab layui-tab-brief" lay-filter="demo">
            <ul class="layui-tab-title">
                <li class="layui-this">演示说明</li>
                <li>日期</li>
                <li>分页</li>
                <li>上传</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">

                    <div class="layui-carousel" id="test1">
                        <div carousel-item>
                            <div><p class="layui-bg-green demo-carousel">在这里，你将以最直观的形式体验 layui！</p></div>
                            <div><p class="layui-bg-red demo-carousel">在编辑器中可以执行 layui 相关的一切代码</p></div>
                            <div><p class="layui-bg-blue demo-carousel">你也可以点击左侧导航针对性地试验我们提供的示例</p></div>
                            <div><p class="layui-bg-orange demo-carousel">如果最左侧的导航的高度超出了你的屏幕</p></div>
                            <div><p class="layui-bg-cyan demo-carousel">你可以将鼠标移入导航区域，然后滑动鼠标滚轮即可</p></div>
                        </div>
                    </div>
                </div>
                <div class="layui-tab-item">
                    <div id="laydateDemo"></div>
                </div>
                <div class="layui-tab-item">
                    <div id="pageDemo"></div>
                </div>
                <div class="layui-tab-item">
                    <div class="layui-upload-drag" id="uploadDemo">
                        <i class="layui-icon"></i>
                        <p>点击上传，或将文件拖拽到此处</p>
                    </div>
                </div>
            </div>
        </div>

        <blockquote class="layui-elem-quote layui-quote-nm" id="footer">layui {{ layui.v }} 提供强力驱动</blockquote>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com 李云龙给你架上了意大利炮！ -
    </div>
</div>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
<script src="/resource/layui/layui.js" charset="UTF-8"></script>
<script src="/resource/js/project/Tjs.js"></script>
<script type="text/javascript">
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });

</script>
</body>
</html>
