<%--
  Created by IntelliJ IDEA.
  User: cx20190422
  Date: 2019/5/9
  Time: 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>manage</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>

<body class="layui-layout-body" style="overflow:hidden">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">layui 后台布局</div>
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">layui文档</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item"><a href="">layui文档</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item"><a href="">侧边栏导航</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body" >
        <!-- 内容主体区域 -->
        <iframe src="" frameborder="0" height="100%" width="100%"></iframe>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>

<script type="text/javascript">
    layui.use('element',function () {
        var element = layui.element;
    })
</script>

</body>
</html>
