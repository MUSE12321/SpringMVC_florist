<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" isErrorPage="true" %>
<% pageContext.setAttribute("ctx", request.getContextPath()); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>花意老板叫你回家吃饭世界</title>
    <link rel="stylesheet" href="${ctx}/layui/css/layui.css">

    <script src="${ctx}/assets/js/jquery-3.4.1.min.js"></script>
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
                    <%--${adminName}--%>${sessionScope.loginAdmin.name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="#">基本资料</a></dd>
                    <dd><a href="#">安全设置</a></dd>
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

    <div class="layui-body" style="background-color: #E9E9EB">
        <!-- 内容主体区域 -->
        <form action="${ctx}/admin/comment/getByKeys" method="post" style="width: 300px">
            <input type="text" name="key" required lay-verify="required" placeholder="Input the keywords..." autocomplete="off" class="layui-input" style="float: left;width: 200px;margin-right: 10px">
            <!-- <img src="assets/img/icon/sort.png">  -->
            <button type="submit" class="layui-btn layui-btn-radius layui-btn-primary"><i class="layui-icon layui-icon-search" style="font-size:18px"></i> Sort</button>
        </form>
        <div style="padding: 15px;">
            <table class="layui-table">
                <thead>
                <tr>
                    <th>买家编号</th>
                    <th>买家昵称</th>
                    <th>商品编号</th>
                    <th>订单编号</th>
                    <th>日期</th>
                    <th>评价</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <!--数据内容-->
                <c:forEach items="${requestScope.get('CommentList')}" var="comment">
                    <tr>
                        <td>${comment.getUserId()}</td>
                        <td>${comment.getLoginName()}</td>
                        <td>${comment.getFloId()}</td>
                        <td>${comment.getOrderId()}</td>
                        <td>${comment.getDate()}</td>
                        <td>${comment.getComment()}</td>
                        <td>
                            <a class="layui-btn layui-btn-xs" lay-event="edit" href="${ctx}/admin/comment/${comment.getId()}/deleteById" onclick="return confirm('是否确定删除该条记录?');">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <script type="text/javascript">
                //全选事件监听
                function checkAll(checkall) {
                    arr = document.getElementsByName('info');
                    if(checkall.checked==true) {
                        for(i=0;i<arr.length;i++){
                            arr[i].checked = true;
                        }
                    } else {
                        for(i=0;i<arr.length;i++) {
                            if ((arr[i]).checked == false) {
                                arr[i].checked = true;
                            } else {
                                arr[i].checked = false;
                            }
                        }
                    }
                }
                //所有按钮监听
                function checkAllInfo() {
                    arr = document.getElementsByName('info');
                    var flag = false;
                    for(i=0;i<arr.length;i++){
                        if((arr[i]).checked==false){
                            flag = true;
                        }
                    }
                    if(flag){
                        document.getElementById("checkall").checked = false;
                    }else{
                        document.getElementById("checkall").checked = true;
                    }
                }
            </script>
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