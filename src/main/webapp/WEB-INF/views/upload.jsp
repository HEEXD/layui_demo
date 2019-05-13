<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upload_demo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.3.1.min.js"></script>
</head>
<style type="text/css">
    .up-img{
        font-size: 0.95rem;
        width: 100%;
        height: auto;
        color: #269AEA;
        background: url(${pageContext.request.contextPath}/img/add-img.png);
        background-repeat: no-repeat;
        background-size: 3.6rem;
    }
    #imgFile{
        height: 3.6rem;
        width: 3.6rem;
        opacity: 0;
    }
    .layui-upload-img {
        width: 100px;
        height: 100px;
        margin: 0 10px 10px 0;
    }
</style>
<body>
<form class="layui-form" id="layui_form">
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">上传头像:</label>
        <div class="layui-input-inline" style="width: 84%;top: 0px;">
            <div class="up-img">
                <input type="file" accept="image/*" id="imgFile" onchange="previewFile(this)">
                <span style="display: block;">上传图片</span>
                <img class="layui-upload-img" id="show-img" alt="" >
            </div>
            <input type="" value="" name="img" id="img" style="width: 450">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="submit">提交</button>
        </div>
    </div>

</form>

<script type="text/javascript">

    //上传图片
    function previewFile(fileDom) {
        var file = fileDom.files[0];
        var formData = new FormData();
        formData.append("file",file);
        $.ajax({
            url : "${pageContext.request.contextPath}/file/uploadFile",
            type : 'POST',
            data : formData,
            contentType : false,
            processData : false,
            cache : false,
            success : function(result) {
                if (result.code==0) {
                    $('#show-img').attr('src',"${pageContext.request.contextPath}"+result.data.src);
                    $('#img').val(result.data.src);
                }
            }
        });
    }

    //提交表单
    layui.use('form', function(){
        var form = layui.form,
        $ = layui.$;
        form.on('submit(submit)',function (data) {
            layer.msg($("#img").val()+"保存图片");
            return false;
        });
    });
</script>

</body>
</html>
