<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% pageContext.setAttribute("ctx", request.getContextPath()); %>
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
<c:if test="${sessionScope.orderform != null}">
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
            <h1 style="text-align: center;margin-bottom: 25px;margin-top: 20px">修改订单</h1>
            <div style="width: 500px;margin: 0px auto">

                <form class="layui-form layui-form-pane" action="${ctx}/orderform/${sessionScope.orderform.id}/update">
                    <div class="layui-form-item" style="margin-bottom: 30px">
                        <label class="layui-form-label">收件人姓名</label>
                        <div class="layui-input-block">
                            <input type="text" name="conName"  value="${sessionScope.orderform.conName}" autocomplete="off" class="layui-input" style="width: 400px">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-bottom: 30px">
                        <label class="layui-form-label">收件人性别</label>
                        <div class="layui-input-block">
                            <input type="text" name="conSex" required lay-verify="required" value="${sessionScope.orderform.conSex}" autocomplete="off" class="layui-input" style="width: 400px">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-bottom: 30px">
                        <label class="layui-form-label">收件人电话</label>
                        <div class="layui-input-block">
                            <input type="text" name="conPhone" required lay-verify="required" value="${sessionScope.orderform.conPhone}" autocomplete="off" class="layui-input" style="width: 400px">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-bottom: 30px">
                        <label class="layui-form-label">地址</label>
                        <div class="layui-input-block">
                            <input type="text" name="address" required lay-verify="required" value="${sessionScope.orderform.address}" autocomplete="off" class="layui-input" style="width: 400px">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-bottom: 20px">
                        <label class="layui-form-label">备注</label>
                        <div class="layui-input-block">
                            <input type="text" name="remark"  value="${sessionScope.orderform.remark}" autocomplete="off" class="layui-input" style="width: 400px">
                        </div>
                    </div>

                        <button type="submit" class="layui-btn" id="test1" style="margin-top: 10px">
                            <i class="layui-icon">&#xe67c;</i>提交
                        </button>
                </form>
            </div>
        </div>

    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        电子商务系统好麻烦啊不如删库跑路算啦(ó﹏ò｡)
    </div>
</div>
<script src="layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</c:if>
</body>
</html>