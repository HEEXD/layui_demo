<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body>
<button id="test1" class="layui-btn">点击</button>

<script type="text/javascript">

    // layui.use() 来加载对应模块
    layui.use(['layer'], function(){
        var layer = layui.layer;
        // 弹出一个提示层
        $('#test1').on('click', function(){
            layer.msg('hello world!');
        });
    });

</script>
</body>
</html>
