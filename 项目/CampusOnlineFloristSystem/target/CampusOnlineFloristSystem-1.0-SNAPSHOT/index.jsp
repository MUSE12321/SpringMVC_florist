<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% pageContext.setAttribute("ctx",request.getContextPath());%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">
    <title>Home</title>

    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="${ctx}/flowers/assets/img/favicon.ico" type="image/x-icon" />

    <!-- Google fonts include -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,900%7CYesteryear" rel="stylesheet">

    <!-- All Vendor & plugins CSS include -->
    <link href="${ctx}/flowers/assets/css/vendor.css" rel="stylesheet">
    <!-- Main Style CSS -->
    <link href="${ctx}/flowers/assets/css/style.css" rel="stylesheet">



</head>

<body>

<!-- Start Header Area -->
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
                            <a href="index.jsp">
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
                                        <li><a href="${ctx}/flower/flowerHome">Home</a></li>
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
                            <a href="${ctx}/flower/flowerHome">
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
<main>
    <!-- slider area start -->
    <section class="slider-area">
        <div class="hero-slider-active slick-arrow-style slick-arrow-style_hero slick-dot-style">
            <!-- single slider item start -->
            <div class="hero-single-slide ">
                <div class="hero-slider-item bg-img" data-bg="${ctx}/flowers/assets/img/slider/home1-slide1.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="hero-slider-content slide-1">
                                    <span>valentine gift</span>
                                    <h1>Fresh Your Mind</h1>
                                    <h2>& Feeling love</h2>
                                    <a href="${ctx}/flower/flowerShop" class="btn-hero">shop now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single slider item end -->

            <!-- single slider item start -->
            <div class="hero-single-slide">
                <div class="hero-slider-item bg-img" data-bg="${ctx}/flowers/assets/img/slider/home1-slide2.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="hero-slider-content slide-2">
                                    <span>valentine gift</span>
                                    <h1>Fresh Your Mind</h1>
                                    <h2>& Feeling love</h2>
                                    <a href="${ctx}/flower/flowerShop" class="btn-hero">shop now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single slider item start -->
        </div>
    </section>
    <!-- slider area end -->

    <!-- banner statistics start -->
    <section class="banner-statistics section-space">
        <div class="container">
            <div class="row mbn-30">
                <!-- start store item -->
                <div class="col-md-4">
                    <div class="banner-item mb-30">
                        <figure class="banner-thumb">
                            <a href="#">
                                <img src="${ctx}/flowers/assets/img/banner/img1-top-floda1.jpg" alt="">
                            </a>
                            <figcaption class="banner-content">
                                <h2 class="text1">Top friday</h2>
                                <h2 class="text2">Yellow Gold</h2>
                                <a class="store-link" href="#">buy it now</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- start store item -->

                <!-- start store item -->
                <div class="col-md-4">
                    <div class="banner-item mb-30">
                        <figure class="banner-thumb">
                            <a href="#">
                                <img src="${ctx}/flowers/assets/img/banner/img1-top-floda2.jpg" alt="">
                            </a>
                            <figcaption class="banner-content text-center">
                                <h2 class="text1">Black friday</h2>
                                <h2 class="text2">Orchid stick</h2>
                                <a class="store-link" href="#">buy it now</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- start store item -->

                <!-- start store item -->
                <div class="col-md-4">
                    <div class="banner-item mb-30">
                        <figure class="banner-thumb">
                            <a href="#">
                                <img src="${ctx}/flowers/assets/img/banner/img1-top-floda3.jpg" alt="">
                            </a>
                            <figcaption class="banner-content">
                                <h2 class="text1">10% off</h2>
                                <h2 class="text2">tulip flower</h2>
                                <a class="store-link" href="#">buy it now</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- start store item -->
            </div>
        </div>
    </section>
    <!-- banner statistics end -->

    <!-- service policy start -->
    <section class="service-policy-area section-space p-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <!-- start policy single item -->
                    <div class="service-policy-item">
                        <div class="icons">
                            <img src="${ctx}/flowers/assets/img/icon/free_shipping.png" alt="">
                        </div>
                        <div class="policy-terms">
                            <h5>free shipping</h5>
                            <p>Free shipping all order</p>
                        </div>
                    </div>
                    <!-- end policy single item -->
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <!-- start policy single item -->
                    <div class="service-policy-item">
                        <div class="icons">
                            <img src="${ctx}/flowers/assets/img/icon/support247.png" alt="">
                        </div>
                        <div class="policy-terms">
                            <h5>SUPPORT 24/7</h5>
                            <p>Support 24 hours a day</p>
                        </div>
                    </div>
                    <!-- end policy single item -->
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <!-- start policy single item -->
                    <div class="service-policy-item">
                        <div class="icons">
                            <img src="${ctx}/flowers/assets/img/icon/money_back.png" alt="">
                        </div>
                        <div class="policy-terms">
                            <h5>Money Return</h5>
                            <p>30 days for free return</p>
                        </div>
                    </div>
                    <!-- end policy single item -->
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <!-- start policy single item -->
                    <div class="service-policy-item">
                        <div class="icons">
                            <img src="${ctx}/flowers/assets/img/icon/promotions.png" alt="">
                        </div>
                        <div class="policy-terms">
                            <h5>ORDER DISCOUNT</h5>
                            <p>On every order over $15</p>
                        </div>
                    </div>
                    <!-- end policy single item -->
                </div>
            </div>
        </div>
    </section>
    <!-- service policy end -->

    <!--商品-->
    <!-- our product area start -->
    <section class="our-product section-space">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center">
                        <h2>New Products</h2>
                        <p>Accumsan vitae pede lacus ut ullamcorper sollicitudin quisque libero</p>
                    </div>
                </div>
            </div>
            <div class="row mtn-40">
                <!-- product single item start -->
                <c:forEach items="${requestScope.get('flowerList')}" var="flower" begin="1" end="8">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product-item mt-40">
                        <figure class="product-thumb">
                            <a href="${ctx}/flower/${flower.getId()}/detailFlower">
                                <img class="pri-img" src="${ctx}/${flower.getPhoto()}" alt="product">
                                <img class="sec-img" src="${ctx}/${flower.getPhoto()}" alt="product">
                            </a>
                            <div class="product-badge">
                                <div class="product-label new">
                                    <span>new</span>
                                </div>
                                <div class="product-label discount">
                                    <span>10%</span>
                                </div>
                            </div>
                            <div class="button-group">
                                <a href="#" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i class="lnr lnr-heart"></i></a>
                                <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" data-placement="left" title="Quick View"><i class="lnr lnr-magnifier"></i></span></a>
                                <a href="#" data-toggle="tooltip" data-placement="left" title="Add to Cart"><i class="lnr lnr-cart"></i></a>
                            </div>
                        </figure>
                        <div class="product-caption">
                            <p class="product-name">
                                <a href="${ctx}/flower/{name}/detailFlower">${flower.getName()}</a>
                            </p>
                            <div class="price-box">
                                <span class="price-regular">￥${flower.getPrice()}</span>
                                <span class="price-old"><del>￥${flower.getPrice()*1.2}</del></span>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
                <!-- product single item end -->

                <div class="col-12">
                    <div class="view-more-btn">
                        <a class="btn-hero btn-load-more" href="${ctx}/flower/flowerShop">view more products</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- our product area end -->

    <!-- banner statistics start -->
    <section class="banner-statistics-right">
        <div class="container">
            <div class="row">
                <!-- start banner item start -->
                <div class="col-md-6">
                    <div class="banner-item banner-border">
                        <figure class="banner-thumb">
                            <a href="#">
                                <img src="${ctx}/flowers/assets/img/banner/banner-1.jpg" alt="">
                            </a>
                            <figcaption class="banner-content banner-content-right">
                                <h2 class="text1">for you</h2>
                                <h2 class="text2">Tulip Flower</h2>
                                <a class="store-link" href="#">shop now</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- start banner item end -->

                <!-- start banner item start -->
                <div class="col-md-6">
                    <div class="banner-item banner-border">
                        <figure class="banner-thumb">
                            <a href="#">
                                <img src="${ctx}/flowers/assets/img/banner/banner-2.jpg" alt="">
                            </a>
                            <figcaption class="banner-content banner-content-right">
                                <h2 class="text1">for you</h2>
                                <h2 class="text2">Flower & Box</h2>
                                <a class="store-link" href="#">shop now</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
                <!-- start banner item end -->
            </div>
        </div>
    </section>
    <!-- banner statistics end -->

    <!-- Instagram Feed Area Start -->
    <div class="instagram-feed-area">
        <div class="instagram-feed-thumb">
            <div id="instafeed" class="instagram-carousel" data-userid="6666969077" data-accesstoken="6666969077.1677ed0.d325f406d94c4dfab939137c5c2cc6c2">
            </div>
        </div>
    </div>
    <!-- Instagram Feed Area End -->

</main>
<!-- main wrapper end -->

<!-- Start Footer Area Wrapper -->
<footer class="footer-wrapper">

    <!-- footer widget area start -->
    <div class="footer-widget-area">
        <div class="container">
            <div class="footer-widget-inner section-space">
                <div class="row mbn-30">
                    <!-- footer widget item start -->
                    <div class="col-lg-5 col-md-6 col-sm-8">
                        <div class="footer-widget-item mb-30">
                            <div class="footer-widget-title">
                                <h5>My account</h5>
                            </div>
                            <ul class="footer-widget-body accout-widget">
                                <li class="address">
                                    <em><i class="lnr lnr-map-marker"></i></em>
                                    184 Main Rd E, St Albans VIC 3021, Australia
                                </li>
                                <li class="email">
                                    <em><i class="lnr lnr-envelope"></i>Mail us: </em>
                                    <a href="mailto:test@yourdomain.com">yourmail@gmail.com</a>
                                </li>
                                <li class="phone">
                                    <em><i class="lnr lnr-phone-handset"></i> Phones: </em>
                                    <a href="tel:(012)800456789-987">(012) 800 456 789-987</a>
                                </li>
                            </ul>
                            <div class="payment-method">
                                <img src="${ctx}/flowers/assets/img/payment-pic.png" alt="payment method">
                            </div>
                        </div>
                    </div>
                    <!-- footer widget item end -->

                    <!-- footer widget item start -->
                    <div class="col-lg-2 col-md-6 col-sm-4">
                        <div class="footer-widget-item mb-30">
                            <div class="footer-widget-title">
                                <h5>categories</h5>
                            </div>
                            <ul class="footer-widget-body">
                                <li><a href="#">Ecommerce</a></li>
                                <li><a href="#">shopify</a></li>
                                <li><a href="#">Prestashop</a></li>
                                <li><a href="#">Opencart</a></li>
                                <li><a href="#">Magento</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- footer widget item end -->

                    <!-- footer widget item start -->
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="footer-widget-item mb-30">
                            <div class="footer-widget-title">
                                <h5>information</h5>
                            </div>
                            <ul class="footer-widget-body">
                                <li><a href="${ctx}/flower/flowerHome">Home</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact Us</a></li>
                                <li><a href="#">Exchanges</a></li>
                                <li><a href="#">Shipping</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- footer widget item end -->

                    <!-- footer widget item start -->
                    <div class="col-lg-2 offset-lg-1 col-md-6 col-sm-6">
                        <div class="footer-widget-item mb-30">
                            <div class="footer-widget-title">
                                <h5>Quick Links</h5>
                            </div>
                            <ul class="footer-widget-body">
                                <li><a href="#">Store Location</a></li>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Orders Tracking</a></li>
                                <li><a href="#">Size Guide</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- footer widget item end -->
                </div>
            </div>
        </div>
    </div>
    <!-- footer widget area end -->

    <!-- footer bottom area start -->
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 order-1 order-md-2">
                    <div class="footer-social-link">
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer bottom area end -->

</footer>
<!-- End Footer Area Wrapper -->

<!-- Quick view modal start -->
<div class="modal" id="quick_view">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <!-- product details inner end -->
                <div class="product-details-inner">
                    <div class="row">
                        <div class="col-lg-5 col-md-5">
                            <div class="product-large-slider">
                                <div class="pro-large-img">
                                    <img src="${ctx}/flowers/assets/img/product/product-details-img1.jpg" alt="product-details" />
                                </div>
                                <div class="pro-large-img">
                                    <img src="${ctx}/flowers/assets/img/product/product-details-img2.jpg" alt="product-details" />
                                </div>
                                <div class="pro-large-img">
                                    <img src="${ctx}/flowers/assets/img/product/product-details-img3.jpg" alt="product-details" />
                                </div>
                                <div class="pro-large-img">
                                    <img src="${ctx}/flowers/assets/img/product/product-details-img4.jpg" alt="product-details" />
                                </div>
                            </div>
                            <div class="pro-nav slick-row-10 slick-arrow-style">
                                <div class="pro-nav-thumb">
                                    <img src="${ctx}/flowers/assets/img/product/product-details-img1.jpg" alt="product-details" />
                                </div>
                                <div class="pro-nav-thumb">
                                    <img src="${ctx}/flowers/assets/img/product/product-details-img2.jpg" alt="product-details" />
                                </div>
                                <div class="pro-nav-thumb">
                                    <img src="${ctx}/flowers/assets/img/product/product-details-img3.jpg" alt="product-details" />
                                </div>
                                <div class="pro-nav-thumb">
                                    <img src="${ctx}/flowers/assets/img/product/product-details-img4.jpg" alt="product-details" />
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7">
                            <div class="product-details-des quick-details">
                                <h3 class="product-name">Orchid flower white stick</h3>
                                <div class="ratings d-flex">
                                    <span><i class="lnr lnr-star"></i></span>
                                    <span><i class="lnr lnr-star"></i></span>
                                    <span><i class="lnr lnr-star"></i></span>
                                    <span><i class="lnr lnr-star"></i></span>
                                    <span><i class="lnr lnr-star"></i></span>
                                    <div class="pro-review">
                                        <span>1 Reviews</span>
                                    </div>
                                </div>
                                <div class="price-box">
                                    <span class="price-regular">$70.00</span>
                                    <span class="price-old"><del>$90.00</del></span>
                                </div>
                                <h5 class="offer-text"><strong>Hurry up</strong>! offer ends in:</h5>
                                <div class="product-countdown" data-countdown="2019/08/25"></div>
                                <div class="availability">
                                    <i class="fa fa-check-circle"></i>
                                    <span>200 in stock</span>
                                </div>
                                <p class="pro-desc">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                    eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
                                <div class="quantity-cart-box d-flex align-items-center">
                                    <h5>qty:</h5>
                                    <div class="quantity">
                                        <div class="pro-qty"><input type="text" value="1"></div>
                                    </div>
                                    <div class="action_link">
                                        <a class="btn btn-cart2" href="#">Add to cart</a>
                                    </div>
                                </div>
                                <div class="useful-links">
                                    <a href="#" data-toggle="tooltip" title="Compare"><i
                                            class="lnr lnr-sync"></i>compare</a>
                                    <a href="#" data-toggle="tooltip" title="Wishlist"><i
                                            class="lnr lnr-heart"></i>wishlist</a>
                                </div>
                                <div class="like-icon">
                                    <a class="facebook" href="#"><i class="fa fa-facebook"></i>like</a>
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i>tweet</a>
                                    <a class="pinterest" href="#"><i class="fa fa-pinterest"></i>save</a>
                                    <a class="google" href="#"><i class="fa fa-google-plus"></i>share</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- product details inner end -->
            </div>
        </div>
    </div>
</div>
<!-- Quick view modal end -->

<!-- offcanvas search form start -->
<div class="offcanvas-search-wrapper">
    <div class="offcanvas-search-inner">
        <div class="offcanvas-close">
            <i class="lnr lnr-cross"></i>
        </div>
        <div class="container">
            <div class="offcanvas-search-box">
                <form class="d-flex bdr-bottom w-100">
                    <input type="text" placeholder="Search entire storage here...">
                    <button class="search-btn"><i class="lnr lnr-magnifier"></i>search</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- offcanvas search form end -->

<!-- offcanvas mini cart start -->
<div class="offcanvas-minicart-wrapper">
    <div class="minicart-inner">
        <div class="offcanvas-overlay"></div>
        <div class="minicart-inner-content">
            <div class="minicart-close">
                <i class="lnr lnr-cross"></i>
            </div>
            <div class="minicart-content-box">
                <div class="minicart-item-wrapper">
                    <ul>
                        <li class="minicart-item">
                            <div class="minicart-thumb">
                                <a href="product-details.html">
                                    <img src="${ctx}/flowers/assets/img/cart/cart-1.jpg" alt="product">
                                </a>
                            </div>
                            <div class="minicart-content">
                                <h3 class="product-name">
                                    <a href="product-details.html">Flowers bouquet pink for all flower lovers</a>
                                </h3>
                                <p>
                                    <span class="cart-quantity">1 <strong>&times;</strong></span>
                                    <span class="cart-price">$100.00</span>
                                </p>
                            </div>
                            <button class="minicart-remove"><i class="lnr lnr-cross"></i></button>
                        </li>
                        <li class="minicart-item">
                            <div class="minicart-thumb">
                                <a href="product-details.html">
                                    <img src="${ctx}/flowers/assets/img/cart/cart-2.jpg" alt="product">
                                </a>
                            </div>
                            <div class="minicart-content">
                                <h3 class="product-name">
                                    <a href="product-details.html">Jasmine flowers white for all flower lovers</a>
                                </h3>
                                <p>
                                    <span class="cart-quantity">1 <strong>&times;</strong></span>
                                    <span class="cart-price">$80.00</span>
                                </p>
                            </div>
                            <button class="minicart-remove"><i class="lnr lnr-cross"></i></button>
                        </li>
                    </ul>
                </div>

                <div class="minicart-pricing-box">
                    <ul>
                        <li>
                            <span>sub-total</span>
                            <span><strong>$300.00</strong></span>
                        </li>
                        <li>
                            <span>Eco Tax (-2.00)</span>
                            <span><strong>$10.00</strong></span>
                        </li>
                        <li>
                            <span>VAT (20%)</span>
                            <span><strong>$60.00</strong></span>
                        </li>
                        <li class="total">
                            <span>total</span>
                            <span><strong>$370.00</strong></span>
                        </li>
                    </ul>
                </div>

                <div class="minicart-button">
                    <a href="#"><i class="fa fa-shopping-cart"></i> view cart</a>
                    <a href="#"><i class="fa fa-share"></i> checkout</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- offcanvas mini cart end -->

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