<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html dir="ltr" lang="vi">
<!--<![endif]-->

<head>
    <%@include file="/WEB-INF/cp/layout/script/head.jsp" %>
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css">
    <script src="/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    <style>
        bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }
        @media (min-width: 768px) {
            bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        html,
        body {
            height: 100%;
        }

        body {
            display: flex;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 330px;
            padding: 15px;
        }

        .form-signin .form-floating:focus-within {
            z-index: 2;
        }

        .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

    </style>
    <link href="https://zunezx.com/public/asset/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet"
          media="screen">
    <script src="https://zunezx.com/public/asset/javascript/bootstrap/js/bootstrap.min.js"
            type="text/javascript"></script>
    <link href="https://zunezx.com/public/asset/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href="https://zunezx.com/public/home/stylesheet/stylesheet.css" rel="stylesheet" type="text/css">
    <script src="https://zunezx.com/public/asset/javascript/jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="https://zunezx.com/public/home/js/jquery.marquee.min.js" type="text/javascript"></script>
    <%--    <link rel="stylesheet" href="assets/style.css">--%>
</head>
<body>
<header>

</header>
</div>
<style>
    header,
    footer {
        display: none
    }
</style>
<h1 style="display: none">ZUNE.ZX | UNISEX BRAND THIẾT KẾ PHONG CÁCH NHẬT</h1>
<section class="box-video-run-bg no-pad">
    <div class="video__player">
        <video data-object-fit="cover" preload="auto" playsinline="" muted="true" autoplay="autoplay" loop="loop"
               webkit-playsinline="">
            <source data-src="https://zunezx.com/upload/video/trim.9782FFB2-C3E3-48C5-9B1F-118EBB9CFA15.MOV"
                    data-video-normaldef="https://zunezx.com/upload/video/trim.9782FFB2-C3E3-48C5-9B1F-118EBB9CFA15.MOV"
                    data-video-highdef="https://zunezx.com/upload/video/trim.9782FFB2-C3E3-48C5-9B1F-118EBB9CFA15.MOV"
                    src="https://zunezx.com/upload/video/trim.9782FFB2-C3E3-48C5-9B1F-118EBB9CFA15.MOV">
        </video>
    </div>
    <div class="header-welcome">

        <div class="header-welcome-container">
            <div class="left">
                <div class="logo hidden-xs">
                    <a href="" title=""><img src="https://zunezx.com/upload/image/data/Shape-1-b9f.png" title=""
                                             alt="" class="img-responsive"></a>
                </div>
                <span class="menu-welcome-mobile visible-xs"><i class="fa fa-bars"></i></span>
                <div class="menu-welcome">
                    <div class="item-menu">
                        <a href="" target="_self" title="Trang chủ">Trang chủ</a>
                    </div>
                    <div class="item-menu">
                        <a target="_self" title="Bộ Sưu Tập">Bộ Sưu Tập</a>
                    </div>
                    <div class="item-menu">
                        <a  title="Tất cả sản phẩm">Tất cả sản
                            phẩm</a>
                    </div>
                    <div class="item-menu">
                        <a  target="_self" title="Cửa hàng">Cửa hàng</a>
                    </div>
                </div>
            </div>

            <div class="text-center" style=" margin-top: 136px;  margin-left: -91px;">
                <%--                <main class="form-signin w-100 m-auto">--%>
                <form method="post" action="/login?action=index">
                    <%--                        <h1 class="display-4 text-center mb-3">Sign in</h1>--%>
                    <%--                        <img class="mb-4" src="/assets/images/1ha.png" alt="" width="72" height="57">--%>
                    <h1 class="h3 mb-3 fw-normal">
                        <img src="https://zunezx.com/upload/image/data/Shape-1-b9f.png" alt=""
                             style="width:100px; height:100px; ">
                    </h1>
                    <div class="form-floating">
                        <input type="text" value="${userName}" name="username" class="form-control" id="floatingInput"
                               placeholder="name@example.com"
                               style="background-image: linear-gradient(45deg, black, transparent); color: #a2d4ed">
                        <label for="floatingInput" style="color: #f5f5f5">Tên tài khoản</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" value="${passWord}" name="password" class="form-control"
                               id="floatingPassword" placeholder="Password"
                               style="background-image: linear-gradient(45deg, black, transparent); color: #a2d4ed">
                        <label for="floatingInput" style="color: #f5f5f5">
                            Mật khẩu</label>
                    </div>
                    <button type="submit" style=" background-color: #1e1818;color: #e6d4d4;">Dăng Nhập<i class="fa-solid fa-arrow-right-to-bracket" ></i></button>
                    <div>
                        <div class="footer" style="bottom: auto; background-color: #777777; color: red">
                            <ul class="error">
                                <c:forEach items="${requestScope['error']}" var="item">
                                    <li>${item}</li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </form>
                </main>
            </div>
            <div class="right">
                <div class="item-right account">
                    <a href="/login" title="" style="color: #f5f5f5;">Tài khoản
                        <br>
                        <img src="https://zunezx.com/public/home/img/w-account.png" alt=""></a>
                </div>
                <div class="item-right account">
                    <a href="/login?action=register" style="color: #f5f5f5;">
                        Đăng kí tài khoản
                        <br>
                    </a>
                    <a href="">
                            <i class="fa-duotone fa-user-astronaut"></i>
                    </a>
                </div>


            </div>
        </div>
    </div>
</section>

</body>
<%--<div class="text-center" style="background-image: linear-gradient(45deg, black, transparent);">--%>
<%--<main class="form-signin w-100 m-auto">--%>
<%--    <form method="post" action="" >--%>
<%--        <h1 class="display-4 text-center mb-3">Sign in</h1>--%>
<%--        <img class="mb-4" src="/assets/images/1ha.png" alt="" width="72" height="57">--%>
<%--        <h1 class="h3 mb-3 fw-normal">Please sign in</h1>--%>
<%--        <div class="form-floating">--%>
<%--            <input type="text"  value="${userName}" name="username" class="form-control" id="floatingInput" placeholder="name@example.com">--%>
<%--            <label for="floatingInput">User name</label>--%>
<%--        </div>--%>
<%--        <div class="form-floating">--%>
<%--            <input type="password"  value="${passWord}" name="password" class="form-control" id="floatingPassword" placeholder="Password">--%>
<%--            <label for="floatingPassword">Password</label>--%>
<%--        </div>--%>
<%--        <button class="w-100 btn btn-lg btn-primary" type="submit" value="login">Sign in</button>--%>
<%--        <div>--%>
<%--            <div class="footer" style="bottom: auto; background-color: #777777; color: red" >--%>
<%--                <ul class="error">--%>
<%--                    <c:forEach items="${requestScope['errors']}" var="item">--%>
<%--                        <li>${item}</li>--%>
<%--                    </c:forEach>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <p class="mt-5 mb-3 text-muted">© 2017–2022</p>--%>
<%--    </form>--%>
<%--</main>--%>
<%--</div>--%>
</html>