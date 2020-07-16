<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% pageContext.setAttribute("ctx", request.getContextPath()); %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">
    <title></title>

    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="${ctx}/flowers/assets/img/favicon.ico" type="image/x-icon" />

    <!-- Google fonts include -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,900%7CYesteryear" rel="stylesheet">

    <!-- All Vendor & plugins CSS include -->
    <link href="${ctx}/flowers/assets/css/vendor.css" rel="stylesheet">
    <!-- Main Style CSS -->
    <%--    <link href="<%=request.getContextPath()%>/assets/css/style.css" rel="stylesheet">--%>
    <link href="${ctx}/flowers/assets/css/style.css" rel="stylesheet">
    <!--layui样式-->
    <link href="${ctx}/layui/css/layui.css" rel="stylesheet">
    <script type="text/javascript" src="${ctx}/layui/layui.js" charset="utf-8" ></script>


</head>

<body>

            <!-- header middle area start -->
            <div class="header-main-area sticky">
                <div class="container">
                    <div class="row align-items-center position-relative">

                        <!-- start logo area -->
                        <div class="col-lg-3">
                            <div class="logo">
                                <a href="${ctx}/index1.jsp">
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
                                                ${sessionScope.loginUser.account}
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
                                    <img src="${ctx}/flower/assets/img/logo/logo.png" alt="Brand Logo">
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
                                    <a class="dropdown-item" href="#">$USD</a>
                                    <a class="dropdown-item" href="#">$EURO</a>
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
                            <h1>My Information</h1>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="flowers/product-collect.jsp"><i class="layui-icon">&#xe658;</i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">My Information</li>
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
                    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                        <div class="layui-tab-content" id="tabBody">
                            <h1 style="text-align: center;margin-bottom: 10px;margin-top:-50px;font-size: 30px">修改信息</h1>
                            <div  style="background-color: #E9E9EB;text-align:center;height:20px"/>
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
    </div>
            <!-- 内容主体区域 -->
            <div class="row" style="padding: 15px;">
                <div style="width: 500px;margin: 0px auto">

                    <form class="layui-form layui-form-pane" action="${ctx}/user/update" method="post">
                        <div class="layui-form-item" style="margin-bottom: 30px">
                            <label class="layui-form-label">登录名</label>
                            <div class="layui-input-block">
                                <!--数据交互，故name对应服务器中的字段-->
                                <input type="text" name="account"  value="${sessionScope.loginUser.account}" autocomplete="off" class="layui-input" style="width: 400px">
                            </div>
                        </div>
                        <div class="layui-form-item" style="margin-bottom: 30px">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="text" name="password"  value="${sessionScope.loginUser.password}" autocomplete="off" class="layui-input" style="width: 400px">
                            </div>
                        </div>
                        <div class="layui-form-item" style="margin-bottom: 30px">
                            <label class="layui-form-label">姓名</label>
                            <div class="layui-input-block">
                                <input type="text" name="name" required lay-verify="required" value="${sessionScope.loginUser.name}" autocomplete="off" class="layui-input" style="width: 400px">
                            </div>
                        </div>
                        <div class="layui-form-item" style="margin-bottom: 30px">
                            <label class="layui-form-label">年龄</label>
                            <div class="layui-input-block">
                                <input type="text" name="age"  value="${sessionScope.loginUser.age}" autocomplete="off" class="layui-input" style="width: 400px">
                            </div>
                        </div>

                        <div class="layui-form-item" style="margin-bottom: 20px">
                            <label class="layui-form-label">性别</label>
                            <div class="layui-input-block">
                                <input type="text" name="sex"  value="${sessionScope.loginUser.sex}" autocomplete="off" class="layui-input" style="width: 400px">
                            </div>
                        </div>


                        <div class="layui-form-item" style="margin-bottom: 20px">
                            <label class="layui-form-label">地址</label>
                            <div class="layui-input-block">
                                <input type="text" name="address" required lay-verify="required" value="${sessionScope.loginUser.address}" autocomplete="off" class="layui-input" style="width: 400px">
                            </div>
                        </div>
                        <div class="layui-form-item" style="margin-bottom: 20px">
                            <label class="layui-form-label">电话</label>
                            <div class="layui-input-block">
                                <!--required lay-verify="required" 不能为空-->
                                <input type="text" name="phone" required lay-verify="required" value="${sessionScope.loginUser.phone}" autocomplete="off" class="layui-input" style="width: 400px">
                            </div>
                        </div>
                        <div class="layui-form-item" style="margin-bottom: 20px">
                            <label class="layui-form-label">E-mail</label>
                            <div class="layui-input-block">
                                <input type="text" name="email"  value="${sessionScope.loginUser.email}" autocomplete="off" class="layui-input" style="width: 400px">
                            </div>
                        </div>

                        <div style="text-align: center">
                            <button type="submit" class="layui-btn" id="test1" style="margin-top: 10px;">
                                <i class="layui-icon">&#xe67c;</i>提交
                            </button>
                        </div>
                    </form>
                </div>
            </div>

</main>


    <!-- Scroll to top start -->
    <div class="scroll-top not-visible">
        <i class="fa fa-angle-up"></i>
    </div>
    <!-- Scroll to Top End -->

    <!-- All vendor & plugins & active js include here -->
    <!--All Vendor Js -->
    <script src="<%=request.getContextPath()%>/assets/js/vendor.js"></script>
    <!-- Active Js -->
    <script src="<%=request.getContextPath()%>/assets/js/active.js"></script>

</body>

</html>
