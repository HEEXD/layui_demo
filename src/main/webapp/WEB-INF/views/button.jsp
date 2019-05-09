<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>button</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body>
<button id="test1" class="layui-btn">按钮一</button>
<button id="test2" class="layui-btn">按钮二</button>
<button id="test3" class="layui-btn">按钮三</button>
<button id="test4" class="layui-btn">按钮四</button>
<button id="test5" class="layui-btn">按钮五</button>
<button id="test6" class="layui-btn">按钮六</button>

<hr/>

<ul class="layui-nav" lay-filter="">
    <li class="layui-nav-item"><a href="">最新活动</a></li>
    <li class="layui-nav-item"><a href="">产品</a></li>
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

<script type="text/javascript">

    // layui.use() 来加载对应模块
    // 注意：导航依赖 element 模块，否则无法进行功能性操作
    layui.use(['layer','element'], function(){
        var layer = layui.layer;
        var $ = layui.$;
        // 弹出一个提示层
        $('#test1').on('click', function(){
            layer.msg('hello world!');
        });

        //跳转页面
        $('#test2').on('click',function () {
            window.open("http://www.baidu.com");
            //$(location).attr('href', 'http://www.baidu.com');
        });

        //弹出一个页面层
        $('#test3').on('click',function () {
            layer.open({
                type:1,
                area:['600px','360px'],
                shadeClose: true, //点击遮罩关闭
                content: '\<\div style="padding:20px;">自定义内容\<\/div>'
            })
        });

        //弹出一个iframe层
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


    });

</script>
</body>
</html>
