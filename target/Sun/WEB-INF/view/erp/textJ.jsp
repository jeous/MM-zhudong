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
    <div  style="padding: 10px">
        <h1>java web The First java web somebody say:ta hao xiang zhidao zhe ge dong xi ne !</h1>
    </div>
    <div style="padding: 10px">
        <button class="layui-btn layui-btn-primary">原始按钮</button>
        <button class="layui-btn">默认按钮</button>
        <button class="layui-btn layui-btn-normal">百搭按钮</button>
        <button class="layui-btn layui-btn-warm">暖色按钮</button>
        <button class="layui-btn layui-btn-danger">警告按钮</button>
        <button class="layui-btn layui-btn-disabled">禁用按钮</button>
    </div>
    <div style="padding: 10px">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">单行输入框</label>
                <div class="layui-input-block">
                    <input name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input" type="text">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">验证必填项</label>
                <div class="layui-input-block">
                    <input name="username" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" type="text">
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">验证手机</label>
                    <div class="layui-input-inline">
                        <input name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input" type="tel">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">验证邮箱</label>
                    <div class="layui-input-inline">
                        <input name="email" lay-verify="email" autocomplete="off" class="layui-input" type="text">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">多规则验证</label>
                    <div class="layui-input-inline">
                        <input name="number" lay-verify="required|number" autocomplete="off" class="layui-input" type="text">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">验证日期</label>
                    <div class="layui-input-inline">
                        <input name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input" type="text">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">验证链接</label>
                    <div class="layui-input-inline">
                        <input name="url" lay-verify="url" autocomplete="off" class="layui-input" type="tel">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">验证身份证</label>
                <div class="layui-input-block">
                    <input name="identity" lay-verify="identity" placeholder="" autocomplete="off" class="layui-input" type="text">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">自定义验证</label>
                <div class="layui-input-inline">
                    <input name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input" type="password">
                </div>
                <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">范围</label>
                    <div class="layui-input-inline" style="width: 100px;">
                        <input name="price_min" placeholder="￥" autocomplete="off" class="layui-input" type="text">
                    </div>
                    <div class="layui-form-mid">-</div>
                    <div class="layui-input-inline" style="width: 100px;">
                        <input name="price_max" placeholder="￥" autocomplete="off" class="layui-input" type="text">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">单行选择框</label>
                <div class="layui-input-block">
                    <select name="interest" lay-filter="aihao">
                        <option value=""></option>
                        <option value="0">写作</option>
                        <option value="1" selected="">阅读</option>
                        <option value="2">游戏</option>
                        <option value="3">音乐</option>
                        <option value="4">旅行</option>
                    </select>
                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">分组选择框</label>
                    <div class="layui-input-inline">
                        <select name="quiz">
                            <option value="">请选择问题</option>
                            <optgroup label="城市记忆">
                                <option value="你工作的第一个城市">你工作的第一个城市</option>
                            </optgroup>
                            <optgroup label="学生时代">
                                <option value="你的工号">你的工号</option>
                                <option value="你最喜欢的老师">你最喜欢的老师</option>
                            </optgroup>
                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">搜索选择框</label>
                    <div class="layui-input-inline">
                        <select name="modules" lay-verify="required" lay-search="">
                            <option value="">直接选择或搜索选择</option>
                            <option value="1">layer</option>
                            <option value="2">form</option>
                            <option value="3">layim</option>
                            <option value="4">element</option>
                            <option value="5">laytpl</option>
                            <option value="6">upload</option>
                            <option value="7">laydate</option>
                            <option value="8">laypage</option>
                            <option value="9">flow</option>
                            <option value="10">util</option>
                            <option value="11">code</option>
                            <option value="12">tree</option>
                            <option value="13">layedit</option>
                            <option value="14">nav</option>
                            <option value="15">tab</option>
                            <option value="16">table</option>
                            <option value="17">select</option>
                            <option value="18">checkbox</option>
                            <option value="19">switch</option>
                            <option value="20">radio</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">联动选择框</label>
                <div class="layui-input-inline">
                    <select name="quiz1">
                        <option value="">请选择省</option>
                        <option value="浙江" selected="">浙江省</option>
                        <option value="你的工号">江西省</option>
                        <option value="你最喜欢的老师">福建省</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz2">
                        <option value="">请选择市</option>
                        <option value="杭州">杭州</option>
                        <option value="宁波" disabled="">宁波</option>
                        <option value="温州">温州</option>
                        <option value="温州">台州</option>
                        <option value="温州">绍兴</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz3">
                        <option value="">请选择县/区</option>
                        <option value="西湖区">西湖区</option>
                        <option value="余杭区">余杭区</option>
                        <option value="拱墅区">临安市</option>
                    </select>
                </div>
                <div class="layui-form-mid layui-word-aux">此处只是演示联动排版，并未做联动交互</div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">复选框</label>
                <div class="layui-input-block">
                    <input name="like[write]" title="写作" type="checkbox">
                    <input name="like[read]" title="阅读" checked="" type="checkbox">
                    <input name="like[game]" title="游戏" type="checkbox">
                </div>
            </div>

            <div class="layui-form-item" pane="">
                <label class="layui-form-label">原始复选框</label>
                <div class="layui-input-block">
                    <input name="like1[write]" lay-skin="primary" title="写作" checked="" type="checkbox">
                    <input name="like1[read]" lay-skin="primary" title="阅读" type="checkbox">
                    <input name="like1[game]" lay-skin="primary" title="游戏" disabled="" type="checkbox">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">开关-默认关</label>
                <div class="layui-input-block">
                    <input name="close" lay-skin="switch" lay-text="ON|OFF" type="checkbox">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">开关-默认开</label>
                <div class="layui-input-block">
                    <input checked="" name="open" lay-skin="switch" lay-filter="switchTest" lay-text="ON|OFF" type="checkbox">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单选框</label>
                <div class="layui-input-block">
                    <input name="sex" value="男" title="男" checked="" type="radio">
                    <input name="sex" value="女" title="女" type="radio">
                    <input name="sex" value="禁" title="禁用" disabled="" type="radio">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">普通文本域</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>

        <!-- 示例-970 -->
        <ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="3820120620"></ins>

        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
            <legend>方框风格的表单集合</legend>
        </fieldset>
        <form class="layui-form layui-form-pane" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">长输入框</label>
                <div class="layui-input-block">
                    <input name="title" autocomplete="off" placeholder="请输入标题" class="layui-input" type="text">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">短输入框</label>
                <div class="layui-input-inline">
                    <input name="username" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" type="text">
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">日期选择</label>
                    <div class="layui-input-block">
                        <input name="date" id="date1" autocomplete="off" class="layui-input" type="text">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">行内表单</label>
                    <div class="layui-input-inline">
                        <input name="number" autocomplete="off" class="layui-input" type="text">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                    <input name="password" placeholder="请输入密码" autocomplete="off" class="layui-input" type="password">
                </div>
                <div class="layui-form-mid layui-word-aux">请务必填写用户名</div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">范围</label>
                    <div class="layui-input-inline" style="width: 100px;">
                        <input name="price_min" placeholder="￥" autocomplete="off" class="layui-input" type="text">
                    </div>
                    <div class="layui-form-mid">-</div>
                    <div class="layui-input-inline" style="width: 100px;">
                        <input name="price_max" placeholder="￥" autocomplete="off" class="layui-input" type="text">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">单行选择框</label>
                <div class="layui-input-block">
                    <select name="interest" lay-filter="aihao">
                        <option value=""></option>
                        <option value="0">写作</option>
                        <option value="1" selected="">阅读</option>
                        <option value="2">游戏</option>
                        <option value="3">音乐</option>
                        <option value="4">旅行</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">行内选择框</label>
                <div class="layui-input-inline">
                    <select name="quiz1">
                        <option value="">请选择省</option>
                        <option value="浙江" selected="">浙江省</option>
                        <option value="你的工号">江西省</option>
                        <option value="你最喜欢的老师">福建省</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz2">
                        <option value="">请选择市</option>
                        <option value="杭州">杭州</option>
                        <option value="宁波" disabled="">宁波</option>
                        <option value="温州">温州</option>
                        <option value="温州">台州</option>
                        <option value="温州">绍兴</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="quiz3">
                        <option value="">请选择县/区</option>
                        <option value="西湖区">西湖区</option>
                        <option value="余杭区">余杭区</option>
                        <option value="拱墅区">临安市</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item" pane="">
                <label class="layui-form-label">开关-开</label>
                <div class="layui-input-block">
                    <input checked="" name="open" lay-skin="switch" lay-filter="switchTest" title="开关" type="checkbox">
                </div>
            </div>
            <div class="layui-form-item" pane="">
                <label class="layui-form-label">单选框</label>
                <div class="layui-input-block">
                    <input name="sex" value="男" title="男" checked="" type="radio">
                    <input name="sex" value="女" title="女" type="radio">
                    <input name="sex" value="禁" title="禁用" disabled="" type="radio">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">文本域</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <button class="layui-btn" lay-submit="" lay-filter="demo2">跳转式提交</button>
            </div>
        </form>
    </div>
    <script src="/resource/layui/layui.js"></script>
    <script>
        //一般直接写在一个js文件中
        layui.use('element', function() {
            var element = layui.element;
        });
    </script>
    <script type="text/javascript" src="/resource/js/project/next.js"/>
</body>
</html>
