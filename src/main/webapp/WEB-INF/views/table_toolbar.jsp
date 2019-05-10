<%--
  Created by IntelliJ IDEA.
  User: cx20190422
  Date: 2019/5/10
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>table_toolbar</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>

<style type="text/css">
    #tableId {
        width: 100%;
        margin-left: 700px;
        margin-top: 10px;
    }
    /*.layui-table-tool-self {
        display: none;!*隐藏数据导出工具栏*!
    }*/
    .searchDemo {
        margin-left: 700px;
        margin-top: 20px;
    }
</style>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckID">选中ID</button>
        <button class="layui-btn layui-btn-sm" lay-event="add">增加</button>
    </div>
</script>
<script type="text/html" id="toolDemo">
    <a class="layui-btn layui-btn-xs" lay-event="update">修改</a>
    <a class="layui-btn layui-btn-xs" lay-event="delete">删除</a>
</script>

<body>
    <div class="searchDemo">
        搜索ID：
        <div class="layui-inline">
            <input class="layui-input" name="id" id="searchId" autocomplete="off">
        </div>
        <button class="layui-btn" data-type="reload">搜索</button>
    </div>

    <div id="tableId">
        <table id="tableDemo" lay-filter="tableFilter"></table>
    </div>

</body>

<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#tableDemo'
            ,id: 'tableId'
            ,title: '用户表'
            ,width: 550
            ,url: '${pageContext.request.contextPath}/user/findAllByPage'
            ,page: true
            ,limit: 10
            ,limits:[5,10,20,30]        //自定义每页条数的选择项
            ,toolbar: '#toolbarDemo'    //头工具栏
            ,request: {
                pageName: 'page.pageNo'
                ,limitName: 'page.pageSize'
            }
            ,cols: [[ //表头
                {type: 'checkbox'}
                ,{field: 'id', title: 'ID',width:60, sort: true}
                ,{field: 'username', title: '用户名', width:80}
                ,{field: 'age', title: '年龄', width:80, sort: true,edit:'text'}
                ,{field: 'email', title: '邮箱', width:150}
                ,{fixed: 'right', title: '操作', width:125, toolbar: '#toolDemo'} //这里的toolbar值是模板元素的选择器
            ]]
        });

        //头工具栏事件
        table.on('toolbar(tableFilter)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'getCheckID':
                    var data = checkStatus.data;
                    var ids = [];
                    for (var i = 0;i<data.length;i++) {
                        ids[i] = data[i].id;
                    }
                    layer.alert(JSON.stringify(ids));
                    break;
                case 'add':
                    layer.open({
                        type: 1,
                        title: '增加',
                        shade: 0.8,
                        area: ['30%', '30%'],
                        content: '<h1 style="text-align: center">新增操作</h1>',
                        btn:['确认','取消']
                    });
                    break;
            }
        });

        //监听行工具事件
        table.on('tool(tableFilter)', function(obj){
            var data = obj.data;
            if(obj.event === 'delete'){
                layer.confirm('真的删除行么', function(index){
                    layer.close(index);
                    layer.msg("将ID为"+data.id+"的数据删除了");
                });
            } else if(obj.event === 'update'){
                layer.open({
                    type: 1,
                    title: '修改',
                    shade: 0.8,
                    area: ['30%', '30%'],
                    content: '<h1 style="text-align: center">修改操作</h1>',
                    btn:['确认','取消']
                });
            }
        });

        //监听单元格编辑
        table.on('edit(tableFilter)', function(obj){
            var value = obj.value //得到修改后的值
                ,data = obj.data //得到所在行所有键值
                ,field = obj.field; //得到字段
            layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
        });

        //监听行双击事件（单击事件为：row）
        table.on('rowDouble(tableFilter)', function(obj){
            var data = obj.data;

            layer.alert(JSON.stringify(data), {
                title: '当前行数据：'
            });

        });

        //搜索功能
        var $ = layui.$, active = {
            reload: function(){
                var search = $('#searchId');
                if(search.val()=="") {
                    //刷新页面
                    location.reload();
                } else {
                    //执行重载
                    table.reload('tableId', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,where: {
                            id: search.val()
                        }
                    });
                }

            }
        };
        $('.searchDemo .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

    });
</script>
</html>
