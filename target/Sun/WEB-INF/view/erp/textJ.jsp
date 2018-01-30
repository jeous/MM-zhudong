<%--
  Created by IntelliJ IDEA.
  User: Server
  Date: 2018/1/17
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="/resource/layui/css/layui.css">
    <link rel="stylesheet" href="//res.layui.com/layui/dist/css/layui.css"  media="all">
</head>
<body>
    <div>
        <ul class="layui-nav" lay-filter="">
            <li class="layui-nav-item layui-this"><a href="">最新活动</a></li>
            <li class="layui-nav-item "><a href="">野心</a></li>
            <li class="layui-nav-item"><a href="">大数据</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">解决方案</a>
                <dl class="layui-nav-child"> <!-- 二级菜单 -->
                    <dd><a href="">移动模块</a></dd>
                    <dd><a href="">后台模版</a></dd>
                    <dd><a href="">电商平台</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">社区</a></li>
        </ul>
    </div>
    <div>
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>常规轮播</legend>
        </fieldset>

        <div class="layui-carousel" id="test1" lay-filter="test1">
            <div carousel-item="">
                <div>条目1</div>
                <div>条目2</div>
                <div>条目3</div>
                <div>条目4</div>
                <div>条目5</div>
            </div>
        </div>
    </div>
    <script src="/resource/layui/layui.js"></script>
    <script>
        //一般直接写在一个js文件中
        layui.use('element', function() {
            var element = layui.element;
        });
        layui.use(['carousel', 'form'], function(){
            var carousel = layui.carousel
                    ,form = layui.form;

            //常规轮播
            carousel.render({
                elem: '#test1'
                ,arrow: 'always'
            });})

    </script>
    <script type="text/javascript" src="/resource/js/project/next.js"/>
</body>
</html>
