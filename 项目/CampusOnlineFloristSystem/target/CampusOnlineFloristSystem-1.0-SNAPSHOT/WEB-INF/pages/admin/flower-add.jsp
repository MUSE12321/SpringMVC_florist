<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" isErrorPage="true"%>
<% pageContext.setAttribute("ctx", request.getContextPath()); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>花意老板叫你回家吃饭世界</title>
    <link rel="stylesheet" href="${ctx}/layui/css/layui.css">
    <style type="text/css">
        *{margin:0;padding: 0;}
        #btn{
            width: 120px;
            height: 45px;
            background: #009688;
            line-height: 45px;
            text-align: center;
            color: #fff;
        }
        #btn .file{
            opacity: 0;
            position: relative;
            top: -56px;
            width: 100%;
            height: 45px;
        }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header" style="background-color: #2C373D"><!--可修改颜色-->
        <div class="layui-logo" style="color: #FFFFFF">
            <a href="${ctx}/admin/home" style="color: white">不管理就没工资后台</a>
        </div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <i class="layui-icon layui-icon-username" style="font-size: 18px"></i>
                    <!--  <img src="http://t.cn/RCzsdCq" class="layui-nav-img"> -->
                    ${sessionScope.loginAdmin.name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="${ctx}/admin/exit">退出 <i class="layui-icon layui-icon-close" style="font-size: 18px"></i></a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll" style="background-color: #3A353F"><!--可修改颜色,侧边栏总-->
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul id="uli" class="layui-nav layui-nav-tree"  lay-filter="test"><!--可修改颜色-->
                <li class="layui-nav-item layui-nav-itemed" style="background-color: #4C525F">
                    <a class="" href="javascript:;">数据管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${ctx}/admin/flower/flowerManagement">商品列表</a></dd>
                        <dd><a href="${ctx}/admin/orderform/order">订单列表</a></dd>
                        <dd><a href="${ctx}/admin/comment/all">用户评论</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item" style="background-color: #4C525F"><a href="">店员管理</a></li>
                <li class="layui-nav-item" style="background-color: #4C525F"><a href="${ctx}/admin/userInfo">用户管理</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body" style="background-color: #E9E9EB;text-align:center;">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <h1 style="text-align: center;margin-bottom: 25px;margin-top: 20px">添加一种商品</h1>
            <div style="width: 500px;margin: 0px auto"><!--enctype="multipart/form-data" modelAttribute="flower"-->
                <form class="layui-form layui-form-pane" action="${ctx}/admin/flower/flowerManagement/add" method="post" enctype="multipart/form-data">
                    <div class="layui-form-item" style="margin-bottom: 30px">
                        <label class="layui-form-label">商品名</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" required lay-verify="required" placeholder="Name" autocomplete="off" class="layui-input" style="width: 400px">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-bottom: 30px">
                        <label class="layui-form-label">种类</label>
                        <div class="layui-input-block">
                            <input type="text" name="type" required lay-verify="required" placeholder="Type" autocomplete="off" class="layui-input" style="width: 400px">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-bottom: 30px">
                        <label class="layui-form-label">库存</label>
                        <div class="layui-input-block">
                            <input type="text" name="stock" required lay-verify="required" placeholder="Stock" autocomplete="off" class="layui-input" style="width: 400px">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-bottom: 30px">
                        <label class="layui-form-label">价格</label>
                        <div class="layui-input-block">
                            <input type="text" name="price" required lay-verify="required" placeholder="Price" autocomplete="off" class="layui-input" style="width: 400px">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-bottom: 20px">
                        <label class="layui-form-label">花语</label>
                        <div class="layui-input-block">
                            <input type="text" name="floMean" required lay-verify="required" placeholder="FlowerMean" autocomplete="off" class="layui-input" style="width: 400px">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-bottom: 10px">
                        <div class="layui-input-block">
                            <!-- 用一个div来当作美化的上传按钮，file按钮被透明化 -->
                            <div id="btn" style="width: 100px;margin-left: 90px;margin-bottom: 10px">
                                文件上传
                                <input type="file" name="pictureFile" class="file" onclick="daojishi()"> <%--onclick="daojishi()"--%>
                            </div>
<%--                            <c:if test="${sessionScope.flower.photo!=null}">
                                <img src="${ctx}/${sessionScope.flower.photo}" width="50" height="50">
                            </c:if>--%>
                            <!-- 文件名显示区域 -->
                            <div id="filename"></div>
                        </div>
                        ${requestScope.msg}
                        <button type="submit" class="layui-btn" id="test1" style="margin-top: 10px">
                            <i class="layui-icon">&#xe67c;</i>提交
                        </button>

                        <script src="https://www.jq22.com/jquery/jquery-3.3.1.js"></script>
                        <!-- 轮询文件名 -->
                        <script>
                            function daojishi() {
                                setInterval("getname()",1000);
                            }
                        </script>

                        <!-- 获取文件名 -->
                        <script>
                            function getname() {
                                var filename = $("#btn .file").val();
                                $("#filename").text(filename);
                            }
                        </script>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        电子商务系统好麻烦啊不如删库跑路算啦(ó﹏ò｡)
    </div>
</div>
<script src="${ctx}/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>