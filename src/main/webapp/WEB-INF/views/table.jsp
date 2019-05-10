<%--
  Created by IntelliJ IDEA.
  User: cx20190422
  Date: 2019/5/9
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>table_demo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<style type="text/css">
    #tableId {
        width: 20%;
        margin-left: 50px;
        margin-top: 20px;
    }
</style>
<body>
    <div id="tableId">
        <h2 style="margin-left: 95px">用户表</h2>
        <table id="demo" lay-filter="test"></table>
    </div>

<script>
    layui.use('table', function(){
        var table = layui.table;

        //第一个实例
        table.render({
            elem: '#demo'
            ,title: '用户表'
            ,width: 244
            ,height: 277
            ,url: '${pageContext.request.contextPath}/user/findAllByPage' //数据接口
            ,page: true //开启分页
            ,limit: 5   //每页的记录数
            ,request: {
                pageName: 'page.pageNo' //页码的参数名称，默认：page
                ,limitName: 'page.pageSize' //每页数据量的参数名，默认：limit
            }
            ,cols: [[ //表头
                {field: 'id', title: 'ID',width:80, sort: true}
                ,{field: 'username', title: '用户名', width:80}
                ,{field: 'age', title: '年龄', width:80, sort: true}
            ]]
        });

    });
</script>

</body>
</html>
