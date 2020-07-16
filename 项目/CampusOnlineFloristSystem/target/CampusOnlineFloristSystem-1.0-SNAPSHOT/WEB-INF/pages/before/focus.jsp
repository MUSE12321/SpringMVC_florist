<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% pageContext.setAttribute("ctx", request.getContextPath()); %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">
    <title>收藏</title>

    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="${ctx}/flowers/assets/img/favicon.ico" type="image/x-icon" />

    <!-- Google fonts include -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,900%7CYesteryear" rel="stylesheet">

    <!-- All Vendor & plugins CSS include -->
    <link href="${ctx}/flowers/assets/css/vendor.css" rel="stylesheet">
    <!-- Main Style CSS -->
    <link href="${ctx}/flowers/assets/css/style.css" rel="stylesheet">
    <!--layui样式-->
    <link href="${ctx}/layui/css/layui.css" rel="stylesheet">
    <script type="text/javascript" src="${ctx}/layui/layui.js" charset="utf-8" ></script>

    <script type="text/javascript">
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
<%--<c:if test="${sessionScope.flower != null}">--%>
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
                                <li><a href="${ctx}/index1.jsp">Home</a></li>
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
                                    <li><a href="${ctx}/login.jsp">login</a></li>
                                    <li><a href="${ctx}/reg.jsp">register</a></li>
                                    <li><a href="${ctx}/user/userCenter">my account</a></li>
                                    <li><a href="${ctx}/orderform/userorder">my order</a></li>
                                    <li><a href="${ctx}/user/exit">exit</a></li>
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
                        <a href="${ctx}/index1.jsp">
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
<!-- end Header Area -->

<!-- off-canvas menu start -->
<aside class="off-canvas-wrapper">
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
                        <li><a href="${ctx}/index1.jsp">Home</a></li>
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
                                <a class="dropdown-item" href="${ctx}/user/userCenter">my account</a>
                                <a class="dropdown-item" href="${ctx}/user/login">login</a>
                                <a class="dropdown-item" href="${ctx}/reg.jsp">register</a>
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
</aside>
<!-- off-canvas menu end -->

<!-- main wrapper start -->

<!-- main wrapper start -->
<main>
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area common-bg">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <h1>My Collections</h1>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="product-collect.jsp"><i class="layui-icon">&#xe658;</i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">My Collections</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!--开始样式-->
    <div class="shop-main-wrapper section-space">
        <div class="container">
            <div class="row">
                <!-- product details wrapper start -->
                <div class="col-lg-12 order-1 order-lg-2">
                    <!-- product details inner end -->
                    <div class="product-details-inner">
                        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                            <ul class="layui-tab-title" id="tabHeader">

                                <li class="layui-this">全部收藏</li>
                                <li>有优惠</li>
                                <li>低库存</li>
                                <li>已失效</li>
                            </ul>
                            <div class="layui-tab-content" id="tabBody">
                                <div class="layui-tab-item layui-show">
                                    <form action="${ctx}/orderform/select" method="post">
                                        <input type="text" name="key" required lay-verify="required" placeholder="Input the keywords..." autocomplete="off" class="layui-input" style="float: left;width: 200px;margin-right: 10px">
                                        <!-- <img src="assets/img/icon/sort.png">  -->
                                        <button type="submit" class="layui-btn layui-btn-radius layui-btn-primary"><i class="layui-icon layui-icon-search" style="font-size:18px"></i>
                                            Sort</button>
                                    </form>

                                    <table class="layui-table" lay-size="lg">
                                        <colgroup>
                                            <col align="left">
                                            <col align="left">
                                            <col align="left">
                                            <col align="left">
                                            <col align="left">
                                            <col align="left">
                                            <col align="left">
                                            <col>
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th><input type="checkbox" onclick="checkAll(checkall)" id="checkall" name="checkall"></th>
                                            <th>商品名</th>
                                            <th>类型</th>
                                            <th>花语</th>
                                            <th>库存</th>
                                            <th>价格</th>
                                            <th>样式</th>
                                            <th>操作</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <form action="${ctx}/${flower_id}/detailFlower" var="flower" method="get">
                                            <tbody>
                                            <tr>
                                                <td>
                                                    <input type="checkbox" name="info" value="" onclick="checkAllInfo()">
                                                </td>
                                                <td>${flower.getName()}</td>
                                                <td>${flower.getType()}</td>
                                                <td>${flower.getFloMean()}</td>
                                                <td>${flower.getStock()}</td>
                                                <td>￥${flower.getPrice()}</td>
                                                <td><img src="${ctx}/${flower.getPhoto()}" style="width: 50px;height: 50px"></td>
                                                <td>
                                                    <a href="${ctx}/cart/putCart">
                                                        <button type="button" class="layui-btn">
                                                            <i class="layui-icon">&#xe657;</i> 添加
                                                        </button>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="javaScript:deleteflowers('${flower_id}')">
                                                        <button type="button" class="layui-btn" <%--onclick="return confirm('是否确定删除该条记录?');" --%>>
                                                            <i class="layui-icon">&#xe640;</i>删除
                                                        </button>
                                                    </a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </form>
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
                        </div>

                        <!--选项卡js-->
                        <script>
                            //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
                            layui.use('element', function(){
                                var $ = layui.jquery,
                                    element = layui.element;
                            });
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>



</main>



<!-- Start Footer Area Wrapper -->
<footer class="footer-wrapper">
    <div style="height: 200px">

    </div>

</footer>
<!-- End Footer Area Wrapper -->



<!-- Scroll to top start -->
<div class="scroll-top not-visible">
    <i class="fa fa-angle-up"></i>
</div>
<!-- Scroll to Top End -->

<!-- All vendor & plugins & active js include here -->
<!--All Vendor Js -->
<script src="${ctx}/flowers/assets/js/vendor.js"></script>
<!-- Active Js -->
<script src="${ctx}/flowers/assets/js/active.js"></script>

</body>

</html>

