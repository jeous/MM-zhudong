/**
 * Created by Server on 2018/3/2.
 */
// $(document).ready(function(){
//     $.ajax({
//         type: "GET",
//         url: "pro/web/entity",
//         dataType: "json",
//         success: function(data){
//             var recruit_li = "";
//
//         }
//     });
// });

layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element'], function(){
    var laydate = layui.laydate //日期
        ,laypage = layui.laypage //分页
    layer = layui.layer //弹层
        ,table = layui.table //表格
        ,carousel = layui.carousel //轮播
        ,upload = layui.upload //上传
        ,element = layui.element; //元素操作

    //向世界问个好
    layer.msg('Hello World');

    //监听Tab切换
    element.on('tab(demo)', function(data){
        layer.msg('切换了：'+ this.innerHTML);
        console.log(data);
    });

    //执行一个 table 实例
    table.render({
        elem: '#test'
        ,height: 332
        ,url: 'pro/web/entity' //数据接口
        ,page: true //开启分页
        ,cols: [[ //表头
            {field: 'id', title: 'ID', width:200, sort: true, fixed: 'left'}
            ,{field: 'pname', title: '用户名', width:200}
            ,{field: 'province', title: '创建省份', width:200}
            ,{field: 'createtime', title: '创建时间', width:200,Formatter:getdata}
        ]]
    });
    function getdata(data) {
        var t="";
        var unixt=new Date(data*1000);
        t=unixt.toLocaleString(unixt);
        return t;
    }
    监听工具条
    table.on('tool(demo)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
        var data = obj.data //获得当前行数据
            ,layEvent = obj.event; //获得 lay-event 对应的值
        if(layEvent === 'detail'){
            layer.msg('查看操作');
        } else if(layEvent === 'del'){
            layer.confirm('真的删除行么', function(index){
                obj.del(); //删除对应行（tr）的DOM结构
                layer.close(index);
                //向服务端发送删除指令
            });
        } else if(layEvent === 'edit'){
            layer.msg('编辑操作');
        }
    });

    执行一个轮播实例
    carousel.render({
        elem: '#test1'
        ,width: '100%' //设置容器宽度
        ,height: 200
        ,arrow: 'none' //不显示箭头
        ,anim: 'fade' //切换动画方式
    });

    将日期直接嵌套在指定容器中
    var dateIns = laydate.render({
        elem: '#laydateDemo'
        ,position: 'static'
        ,calendar: true //是否开启公历重要节日
        ,mark: { //标记重要日子
            '0-10-14': '生日'
            ,'2017-11-11': '剁手'
            ,'2017-11-30': ''
        }
        ,done: function(value, date, endDate){
            if(date.year == 2017 && date.month == 11 && date.date == 30){
                dateIns.hint('一不小心就月底了呢');
            }
        }
        ,change: function(value, date, endDate){
            layer.msg(value)
        }
    });

    分页
    laypage.render({
        elem: 'pageDemo' //分页容器的id
        ,count: 100 //总页数
        ,skin: '#1E9FFF' //自定义选中色值
        //,skip: true //开启跳页
        ,jump: function(obj, first){
            if(!first){
                layer.msg('第'+ obj.curr +'页');
            }
        }
    });

    上传
    upload.render({
        elem: '#uploadDemo'
        ,url: '' //上传接口
        ,done: function(res){
            console.log(res)
        }
    });

    底部信息
    var footerTpl = lay('#footer')[0].innerHTML;
    lay('#footer')[0].innerHTML = layui.laytpl(footerTpl).render({});
});

