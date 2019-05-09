<%--
  Created by IntelliJ IDEA.
  User: cx20190422
  Date: 2019/5/9
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>layer_demo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body>
<div>
    <button id="test" class="layui-btn layui-btn-primary">提示弹窗</button>
    <button id="test1" class="layui-btn layui-btn-primary">基本弹窗</button>
    <button id="test2" class="layui-btn layui-btn-primary">带图标的弹窗</button>
    <button id="test3" class="layui-btn layui-btn-primary">询问弹窗</button>
    <button id="test4" class="layui-btn layui-btn-primary">iframe弹窗</button>
    <button id="test5" class="layui-btn layui-btn-primary">prompt弹窗</button>
    <button id="test6" class="layui-btn layui-btn-primary">上弹出</button>
</div>


</body>
<script type="text/javascript">
    layui.use(['layer'],function () {
        var layer = layui.layer
            ,$ = layui.$;

        $('#test').on('click', function(){
            layer.msg('加载中...')
        });

        $('#test1').on('click', function(){
            layer.alert('hello layer~');
        });

        $('#test2').on('click', function(){
            layer.alert('带图标的弹窗',{
                icon:1,
                skin:'layer-ext-moon'
            })
        });

        $('#test3').on('click', function(){
            layer.confirm('layer弹窗强大吗?',{
                btn:['牛逼','菜鸡']
            },function () {
                layer.msg('谢谢',{icon:1});
            },function () {
                layer.msg('会继续改进',{
                    btn:['yes','no']
                });
            });
        });

        $('#test4').on('click', function(){
            layer.open({
                type: 2,
                title: 'iframe父子操作',
                maxmin: true,
                shadeClose: true, //点击遮罩关闭层
                area : ['800px' , '520px'],
                content: '${pageContext.request.contextPath}/layui/form'
            });
        });

        $('#test5').on('click', function(){
            layer.prompt({title: '输入任何口令，并确认', formType: 1}, function(pass, index){
                layer.close(index);
                layer.prompt({title: '随便写点啥，并确认', formType: 2}, function(text, index){
                    layer.close(index);
                    layer.msg('演示完毕！您的口令：'+ pass +'<br>您最后写下了：'+text);
                });
            });
        });

        $('#test6').on('click', function(){
            layer.open({
                type: 1
                ,offset: 't'
                ,content: '<div style="padding: 20px 80px;">内容</div>'
                ,btn: '关闭全部'
                ,btnAlign: 'c' //按钮居中
                ,shade: 0 //不显示遮罩
                ,yes: function(){
                    layer.closeAll();
                }
            });
        });


    })

</script>
</html>
