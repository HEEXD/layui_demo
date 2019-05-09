<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LayuiDemo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body>
<button id="test1" class="layui-btn">点击</button>
<button id="test2" class="layui-btn">点击跳转</button><br/>

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
    // 注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use(['layer','element'], function(){
        var layer = layui.layer;
        var $ = layui.$;
        // 弹出一个提示层
        $('#test1').on('click', function(){
            layer.msg('hello world!');
        });

        $('#test2').on('click',function () {
            window.open("http://www.baidu.com");
            //$(location).attr('href', 'http://www.baidu.com');
        })
    });

</script>
</body>
</html>
