<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>banner_demo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body>
<div class="layui-carousel" id="test1">
    <div carousel-item>
        <div><h1 style="text-align: center">图片1</h1></div>
        <div><h1 style="text-align: center">图片2</h1></div>
        <div><h1 style="text-align: center">图片3</h1></div>
        <div><h1 style="text-align: center">图片4</h1></div>
        <div><h1 style="text-align: center">图片5</h1></div>
    </div>
</div>

<script src="/static/build/layui.js"></script>
<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>

</body>
</html>
