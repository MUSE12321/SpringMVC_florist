<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% pageContext.setAttribute("ctx",request.getContextPath());%>
<html>
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="${ctx}/flowers/assets/img/favicon.ico" type="image/x-icon" />

    <!-- Google fonts include -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,900%7CYesteryear" rel="stylesheet">

    <!-- All Vendor & plugins CSS include -->
    <link href="${ctx}/flowers/assets/css/vendor.css" rel="stylesheet">
    <!-- Main Style CSS -->
    <link href="${ctx}/flowers/assets/css/index.css" rel="stylesheet">
    <!--layui样式-->
    <link href="${ctx}/layui/css/layui.css" rel="stylesheet">
    <script type="text/javascript" src="${ctx}/layui/layui.js" charset="utf-8" ></script>

    <script type="text/javascript">
        //确认
        function  goOrderConfirm(){
            window.location.href="${ctx}/cart/orderConfirm";
        }
        //清空
        function godelete(){
            if(window.confirm("真的清空购物车吗？")){
                window.location.href="${ctx}/cart/clear";
                return true;
            }
            return false;
        }
        //删除
        function deleteflowers(flower_id){
            if(window.confirm("真的删除该商品吗？")){
                window.location.href="${ctx}/cart/deleteflowers?id=" + flower_id;
                return true;
            }
            return false;
        }
    </script>
</head>
<body>
<%--<!-- Start Header Area -->
<header class="header-area">
    <!-- main header start -->
    <div class="main-header d-none d-lg-block">
        <!-- header top start -->
        <div class="header-top bdr-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="welcome-message">
                            <p>Welcome to FlowerWorld online store</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header top end -->

        <!-- header middle area start -->
        <div class="header-main-area sticky">
            <div class="container">
                <div class="row align-items-center position-relative">

                    <!-- start logo area -->
                    <div class="col-lg-3">
                        <div class="logo">
                            <a href="${ctx}/index.jsp">
                                <img src="${ctx}/flowers/assets/img/logo/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- start logo area -->

                    <!-- main menu area start -->
                    <div class="col-lg-6 position-static">
                        <div class="main-menu-area">
                            <div class="main-menu">
                                <!-- main menu navbar start -->
                                <nav class="desktop-menu">
                                    <ul>
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="${ctx}/flower/flowerShop">Shop</a></li>
                                    </ul>
                                </nav>
                                <!-- main menu navbar end -->
                            </div>
                        </div>
                    </div>
                    <!-- main menu area end -->

                    <!-- mini cart area start -->
                    <div class="col-lg-3">
                        <div class="header-configure-wrapper">
                            <div class="header-configure-area">
                                <ul class="nav justify-content-end">
                                    <li>
                                        <a href="#" class="offcanvas-btn">
                                            <i class="lnr lnr-magnifier"></i>
                                        </a>
                                    </li>
                                    <li class="user-hover">
                                        <a href="#">
                                            <i class="lnr lnr-user"></i>
                                        </a>
                                        <ul class="dropdown-list">
                                            <li><a href="${ctx}/user/login">login</a></li>
                                            <li><a href="#">register</a></li>
                                            <li><a href="#">my account</a></li>
                                            <li><a href="${ctx}/admin">admin</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="lnr lnr-heart"></i>
                                            <div class="notification">0</div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="minicart-btn">
                                            <i class="lnr lnr-cart"></i>
                                            <div class="notification">2</div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- mini cart area end -->

                </div>
            </div>
        </div>
        <!-- header middle area end -->
    </div>
    <!-- main header start -->

    <!-- mobile header start -->
    <div class="mobile-header d-lg-none d-md-block sticky">
        <!--mobile header top start -->
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                    <div class="mobile-main-header">
                        <div class="mobile-logo">
                            <a href="index.jsp">
                                <img src="${ctx}/flowers/assets/img/logo/logo.png" alt="Brand Logo">
                            </a>
                        </div>
                        <div class="mobile-menu-toggler">
                            <div class="mini-cart-wrap">
                                <a href="#">
                                    <i class="lnr lnr-cart"></i>
                                </a>
                            </div>
                            <div class="mobile-menu-btn">
                                <div class="off-canvas-btn">
                                    <i class="lnr lnr-menu"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- mobile header top start -->
    </div>
    <!-- mobile header end -->
</header>
<!-- end Header Area -->--%>

<!-- end Header Area -->

<!-- off-canvas menu start -->
<%--<aside class="off-canvas-wrapper">
    <div class="off-canvas-overlay"></div>
        <div class="off-canvas-inner-content">
            <div class="btn-close-off-canvas">
                <i class="lnr lnr-cross"></i>
            </div>

        <div class="off-canvas-inner">
            <!-- search box start -->
            <div class="search-box-offcanvas">
                <form>
                    <input type="text" placeholder="Search Here...">
                    <button class="search-btn"><i class="lnr lnr-magnifier"></i></button>
                </form>
            </div>
            <!-- search box end -->

            <!-- mobile menu start -->
            <div class="mobile-navigation">

                <!-- mobile menu navigation start -->
                <nav>
                    <ul class="mobile-menu">
                        <li><a href="${ctx}/flower/flowerHome">Home</a></li>
                        <li><a href="${ctx}/flower/flowerShop">Shop</a></li>
                    </ul>
                </nav>
                <!-- mobile menu navigation end -->
            </div>
            <!-- mobile menu end -->

            <div class="mobile-settings">
                <ul class="nav">
                    <li>
                        <div class="dropdown mobile-top-dropdown">
                            <a href="#" class="dropdown-toggle" id="currency" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Currency
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="currency">
                                <a class="dropdown-item" href="#">$ USD</a>
                                <a class="dropdown-item" href="#">$ EURO</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="dropdown mobile-top-dropdown">
                            <a href="#" class="dropdown-toggle" id="myaccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                My Account
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="myaccount">
                                <a class="dropdown-item" href="#">my account</a>
                                <a class="dropdown-item" href="${ctx}/login.jsp">login</a>
                                <a class="dropdown-item" href="#">register</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- offcanvas widget area start -->
            <div class="offcanvas-widget-area">
                <div class="off-canvas-contact-widget">
                    <ul>
                        <li><i class="fa fa-mobile"></i>
                            <a href="#">0123456789</a>
                        </li>
                        <li><i class="fa fa-envelope-o"></i>
                            <a href="#">info@yourdomain.com</a>
                        </li>
                    </ul>
                </div>
                <div class="off-canvas-social-widget">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-pinterest-p"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                </div>
            </div>
            <!-- offcanvas widget area end -->
        </div>
    </div>
</aside>--%>
<!-- off-canvas menu end -->

<main>
    <div class="breadcrumb-area common-bg">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <h1>My Cart</h1>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="${ctx}/cart/focus">
                                        <i class="layui-icon">&#xe658;</i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">My Cart</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <%--  <form action="${ctx}/cart/putCart" method="post">--%>
    <div class="shop-main-wrapper section-space">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 order-1 order-lg-2">
                    <div class="product-details-inner">
                        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                            <ul class="layui-tab-title" id="tabHeader">
                                <li class="layui-this">我的购物车</li>
                                <li>已付款</li>
                                <li>未付款</li>
                                <li>已失效</li>
                            </ul>
                            <div class="layui-tab-content" id="tabBody">
                                <div class="layui-tab-item layui-show">
                                    <form action="${ctx}/cart/selectCart" method="post">
                                        <input type="text" name="key" required lay-verify="required" placeholder="Input the keywords..." autocomplete="off" class="layui-input" style="float: left;width: 200px;margin-right: 10px">
                                        <!-- <img src="assets/img/icon/sort.png">  -->
                                        <button type="submit" class="layui-btn layui-btn-radius layui-btn-primary"><i class="layui-icon layui-icon-search" style="font-size:18px"></i>
                                            Sort</button>
                                    </form>
                                    <table class="layui-table" lay-size="lg">
                                        <tr>
                                            <th><input type="checkbox" onclick="checkAll(checkall)" id="checkall" name="checkall"></th>
                                            <th>商品信息</th>
                                            <th>单价（元）</th>
                                            <th>数量</th>
                                            <th>小计</th>
                                            <th>操作</th>
                                        </tr>
                                            <%--<c:forEach var="" items="">--%>
                                                <tr>
                                                    <td>
                                                        <input type="checkbox" name="info" value="" onclick="checkAllInfo()">
                                                    </td>
                                                    <td>
                                                        <img src="${ctx}/${sessionScope.bean.getPhoto()}" style="width: 50px;height: 50px">
                                                    </td>
                                                    <td>
                                                        ￥${sessionScope.bean.getPrice()}
                                                    </td>
                                                    <td >
                                                        <span>${sessionScope.cartlist1.shoppingnum}</span>
                                                    </td>
                                                    <td >
                                                        ￥&nbsp;<span>${(sessionScope.bean.getPrice()*sessionScope.cartlist1.shoppingnum)}</span>&nbsp;
                                                    </td>
                                                    <td>
                                                        <a style="cursor: pointer;" href="javaScript:deleteflowers('${sessionScope.bean.getId()}')">
                                                            <button type="button" class="layui-btn" >
                                                                <i class="layui-icon">&#xe640;</i>删除
                                                            </button>
                                                        </a>
                                                    </td>
                                                </tr>
                                          <%--  </c:forEach>--%>

                                        <tr>
                                            <td colspan="5" align="right">
                                                <a href="${ctx}/flower/flowerShop">
                                                    <button type="button" class="layui-btn" >
                                                        继续<i class="layui-icon">&#xe602;</i>
                                                    </button>
                                                </a>
                                            </td>
                                            <td align="center">
                                                <button onclick="godelete()" type="button" class="layui-btn" >
                                                    <i class="layui-icon">&#xe640;</i>清空购物车
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="5">
                                                <font>
                                                    购物金额总计(不含运费) ￥&nbsp;
                                                    <span id="stotal"></span>
                                                    <%--${sessionScope.total}--%>${(sessionScope.bean.getPrice()*sessionScope.cartlist1.shoppingnum)}元
                                                </font>
                                            </td>
                                            <td align="center">
                                                <a style="cursor: pointer;" href="javascript:goOrderConfirm()">
                                                    <button type="button" class="layui-btn">
                                                        确认订单
                                                    </button>
                                                </a>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><%--
    </form>--%>
</main>

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


<!--选项卡js-->
<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var $ = layui.jquery,
            element = layui.element;
    });
</script>

<!-- All vendor & plugins & active js include here -->
<!--All Vendor Js -->
<script src="${ctx}/flowers/assets/js/vendor.js"></script>
<!-- Active Js -->
<script src="${ctx}/flowers/assets/js/active.js"></script>
</body>
</html>

