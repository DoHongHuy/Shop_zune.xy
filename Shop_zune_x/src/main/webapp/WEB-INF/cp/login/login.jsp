<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html dir="ltr" lang="vi">
<head>
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
    <%@include file="/WEB-INF/cp/layout/script/head_menu.jsp"%>
    </head>
    <div class="fb-widget">
        <div class="ctrlq fb-close">
        </div>
        <div class="fb-page fb_iframe_widget" data-href="https://www.facebook.com/zunezxvn" data-tabs="messages"
             data-width="360" data-height="400" data-small-header="true" data-hide-cover="true"
             data-show-facepile="false" fb-xfbml-state="rendered"
             fb-iframe-plugin-query="app_id=443271375714375&amp;container_width=0&amp;height=400&amp;hide_cover=true&amp;href=https%3A%2F%2Fwww.facebook.com%2Fzunezxvn&amp;locale=en_US&amp;sdk=joey&amp;show_facepile=false&amp;small_header=true&amp;tabs=messages&amp;width=360">
        </div>
        <div class="fb-credit">
        </div>

    </div>
    </html>

<header>
    <%@include file="/WEB-INF/cp/layout/script/header_menuProduct.jsp"%>
</header>
    <div class="has-bg__container">
        <div class="container">
            <div class="row">
                <div class="collectionWrapper">
                    <div class="col-xs-12">
                        <div id="content">

                            <h2 class="box-heading wow fadeInUp animated mb-30"><span style="background-color: #050303;">Đăng nhập</span></h2>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6">
                                    <div class="well">
                                        <form action="https://zunezx.com/dang-nhap.html" method="post"
                                              enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label class="control-label" for="input-email">Nhập email:</label>
                                                <input type="text" name="email" value="" placeholder="" id="input-email"
                                                       class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label" for="input-password">Mật khẩu:</label>
                                                <input type="password" name="password" value="" placeholder=""
                                                       id="input-password" class="form-control">
                                                <a class="mt-15" style="display: inline-block"
                                                   href="https://zunezx.com/quen-mat-khau.html">Quên mật khẩu?</a>
                                            </div>
                                            <input type="submit" value="Đăng nhập" class="btn btn-primary">
                                            <input type="hidden" name="redirect"
                                                   value="https://zunezx.com/tai-khoan.html">
                                        </form>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <div class="well">
                                        <h4>Đăng ký tài khoản</h4>
                                        <p>Bằng cách tạo tài khoản bạn sẽ có thể mua sắm nhanh hơn, cập nhật tình trạng
                                            đơn hàng, theo dõi những đơn hàng đã đặt.</p>
                                        <a href="https://zunezx.com/dang-ky.html" class="btn btn-primary">Đăng ký</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<body class="text-center" style="background-image: linear-gradient(45deg, black, transparent);">
<main class="form-signin w-100 m-auto">
    <form method="post" action="" >
        <h1 class="display-4 text-center mb-3">Sign in</h1>
        <img class="mb-4" src="/assets/images/1ha.png" alt="" width="72" height="57">
        <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
        <div class="form-floating">
            <input type="text"  value="${userName}" name="username" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">User name</label>
        </div>
        <div class="form-floating">
            <input type="password"  value="${passWord}" name="password" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit" value="login">Sign in</button>
        <div>
            <div class="footer" style="bottom: auto; background-color: #777777; color: red" >
                <ul class="error">
                    <c:forEach items="${requestScope['errors']}" var="item">
                        <li>${item}</li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <p class="mt-5 mb-3 text-muted">© 2017–2022</p>
    </form>
</main>
</body>
    <footer>
        <%@include file="/WEB-INF/cp/layout/script/footer_menu.jsp"%>


        </footer>