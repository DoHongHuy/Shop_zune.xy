<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <%@include file="/WEB-INF/cp/layout/script/header_menu.jsp"%>



<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <title>Đăng Ký Tài Khoản</title>--%>
<%--    <link href="https://zunezx.com/upload/image/data/website/zunezx-bb3.png" rel="icon">--%>
<%--    <link href="https://zunezx.com/public/asset/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet"--%>
<%--          media="screen">--%>
<%--    <link href="https://zunezx.com/public/asset/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet"--%>
<%--          type="text/css">--%>
<%--    <link href="https://zunezx.com/public/asset/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css"--%>
<%--          type="text/css" rel="stylesheet" media="screen">--%>
<%--    <link href="https://zunezx.com/public/home/js/rs-plugin/css/settings.css" type="text/css" rel="stylesheet"--%>
<%--          media="screen">--%>
<%--    <link href="https://zunezx.com/public/home/stylesheet/stylesheet.css" rel="stylesheet" type="text/css">--%>
<%--    <script src="https://zunezx.com/public/asset/javascript/jquery/jquery-2.2.4.min.js" type="text/javascript"></script>--%>
<%--    <script src="https://zunezx.com/public/asset/javascript/bootstrap/js/bootstrap.min.js"--%>
<%--            type="text/javascript"></script>--%>

</head>

<header>
    <div class="container visible-xs">
        <div class="row header-mobile">
            <div class="col-xs-4">
                <a href="javascript:void(0);" class="menu-mobile">
                    <i class="fa fa-bars"></i>
                </a>
            </div>
            <div class="col-xs-4">
                <div class="logo text-center">
                    <a href="https://zunezx.com/" title="Zune.zx - Unisex" class="logo-link"><img
                            src="https://zunezx.com/upload/image/data/Shape-1-b9f.png" title="Zune.zx - Unisex"
                            alt="Zune.zx - Unisex" class="img-responsive center-block"></a>
                </div>
            </div>
            <div class="col-xs-4">
                <div class="pull-right">
                    <a href="javascript:void(0)" title="search" class="header-search header-search-mobile"><img
                            class="icon-in-menu" src="https://zunezx.com/public/home/img/w-search.png"
                            style="filter: brightness(0);" alt="Tìm kiếm..."></a>
                    <a href="https://zunezx.com/gio-hang.html" title="Giỏ hàng" class="header-cart"><img
                            class="icon-in-menu" style="filter: brightness(0);"
                            src="https://zunezx.com/public/home/img/w-shop.png" alt="Giỏ hàng"></a>
                    <a style="margin-left: 10px" href="https://zunezx.com/tai-khoan.html" title="Tài khoản"><img
                            class="icon-in-menu" src="https://zunezx.com/public/home/img/w-account.png"
                            style="filter: brightness(0);" alt="Tài khoản"></a>
                </div>
            </div>
        </div>
        <div class="searchForm wds-search-header">
            <input type="text" class="input-control" name="search" value="" title="Tìm kiếm..."
                   placeholder="Tìm kiếm...">
            <button class="button wds-search-header-button" title="Tìm kiếm..."><i class="hoverButton"></i><i
                    class="fa fa-search"></i></button>
        </div>
    </div>
    <div class="logo text-center hidden-xs">
        <a href="https://zunezx.com/" title="Zune.zx - Unisex"><img
                src="https://zunezx.com/upload/image/data/Shape-1-b9f.png" title="Zune.zx - Unisex"
                alt="Zune.zx - Unisex" class="img-responsive center-block"></a>
    </div>
    <nav>
        <div class="text-center menu-wrap">
            <ul class="list-unstyled main-nav list-inline">
                <li>
                    <a href="https://zunezx.com/bo-suu-tap-cs2" target="_self" title="Bộ Sưu Tập">Bộ Sưu Tập</a>
                </li>
                <li class="list-unstyled">
                    <a href="https://zunezx.com/san-pham.html" target="_self" title="Tất cả sản phẩm">Tất cả sản
                        phẩm</a>
                    <ul class="list-unstyled">
                        <li>
                            <a href="https://zunezx.com/san-pham-sale.html" target="_self" title="Giảm giá">Giảm giá</a>
                        </li>
                        <li class="has-sub">
                            <a href="https://zunezx.com/ao-cp50" target="_self" title="ÁO">ÁO</a>
                            <ul class="list-unstyled">
                                <li>
                                    <a href="https://zunezx.com/blazers-cp160" target="_self"
                                       title="Blazers">Blazers</a>
                                </li>
                                <li>
                                    <a href="https://zunezx.com/jackets-kimono-cp130" target="_self"
                                       title="Jackets / Kimono">Jackets / Kimono</a>
                                </li>
                                <li>
                                    <a href="https://zunezx.com/hoodies-sweaters-cp128" target="_self"
                                       title="Hoodies / Sweaters">Hoodies / Sweaters</a>
                                </li>
                                <li>
                                    <a href="https://zunezx.com/shirts-cp132" target="_self" title="Shirts">Shirts</a>
                                </li>
                                <li>
                                    <a href="https://zunezx.com/t-shirts-cp136" target="_self"
                                       title="T-Shirts">T-Shirts</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="https://zunezx.com/quan-cp68" target="_self" title="QUẦN">QUẦN</a>
                        </li>
                        <li>
                            <a href="https://zunezx.com/combat-boots-cp170" target="_self" title="COMBAT BOOTS">COMBAT
                                BOOTS</a>
                        </li>
                        <li>
                            <a href="https://zunezx.com/set-phoi-san-cp152" target="_self" title="SET PHỐI SẴN">SET PHỐI
                                SẴN</a>
                        </li>
                        <li>
                            <a href="https://zunezx.com/phu-kien-cp120" target="_self" title="PHỤ KIỆN">PHỤ KIỆN</a>
                        </li>
                        <li class="has-sub">
                            <a href="https://zunezx.com/sub-brand-cp172" target="_self" title="SUB - BRAND">SUB -
                                BRAND</a>
                            <ul class="list-unstyled">
                                <li>
                                    <a href="https://zunezx.com/hologram-vn-cp146" target="_self"
                                       title="HOLOGRAM.VN">HOLOGRAM.VN</a>
                                </li>
                                <li>
                                    <a href="https://zunezx.com/case-by-zune-zx-cp162" target="_self"
                                       title="CASE BY ZUNE.ZX">CASE BY ZUNE.ZX</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="https://zunezx.com/ootd-feedback.html" target="_self" title="Feedback">Feedback</a>
                </li>
                <li>
                    <a href="https://zunezx.com/cua-hang.html" target="_self" title="Cửa hàng">Cửa hàng</a>
                </li>
                <li>
                    <a href="dieu-kien-va-chinh-sach-thanh-vien-i16.html" target="_self" title="Thành viên">Thành
                        viên</a>
                </li>
                <li>
                    <a href="https://zunezx.com/huong-dan-chon-size-i18.html" target="_self"
                       title="Hướng dẫn chọn size">Hướng dẫn chọn size</a>
                </li>
                <li>
                    <a href="huong-dan-dat-hang-i14.html" target="_self" title="Hướng dẫn mua hàng ">Hướng dẫn mua hàng
                    </a>
                </li>
                <li>
                    <a href="https://zunezx.com/ve-chung-toi.html" target="_self" title="Về chúng tôi">Về chúng tôi</a>
                </li>
                <li>
                    <a href="https://zunezx.com/tin-tuc-cn4" target="_self" title="Tin tức">Tin tức</a>
                </li>
                <li class="hidden-xs search-pc">
                    <a href="javascript:void(0)" title="search" class="header-search header-search-pc"><img
                            class="icon-in-menu" src="https://zunezx.com/public/home/img/w-search.png"
                            alt="Tìm kiếm..."></a>
                    <div class="searchForm wds-search-header">
                        <input type="text" class="input-control" name="search" value="" title="Tìm kiếm..."
                               placeholder="Tìm kiếm...">
                        <button class="button wds-search-header-button" title="Tìm kiếm..."><i
                                class="hoverButton"></i><i class="fa fa-search"></i></button>
                    </div>
                </li>
                <li class="hidden-xs header-account-link">
                    <a href="https://zunezx.com/tai-khoan.html" title="Tài khoản"><img class="icon-in-menu"
                                                                                       src="https://zunezx.com/public/home/img/w-account.png" alt="Tài khoản"></a>
                </li>
                <li class="hidden-xs">
                    <a href="https://zunezx.com/gio-hang.html" title="Giỏ hàng" class="header-cart"><img
                            class="icon-in-menu" src="https://zunezx.com/public/home/img/w-shop.png" alt="Giỏ hàng"></a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<div class="has-bg__container">
    <div class="container">
        <div class="row">
            <div class="collectionWrapper">
                <div class="col-xs-12">
                    <div id="content">

                        <div class="register__wrapper">
                            <h2 class="box-heading wow fadeInUp animated mb-30"><span>Đăng Ký Tài Khoản</span></h2>
                            <form action="https://zunezx.com/dang-ky.html" method="post" enctype="multipart/form-data"
                                  class="form-horizontal">
                                <div class="form-group required" style="display:  none ;">
                                    <label class="col-sm-2 control-label">Nhóm khách hàng</label>
                                    <div class="col-sm-10">
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="customer_group_id" value="1"
                                                       checked="checked"> Mặc định
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-5">
                                        <div class="control-wrap">
                                            <label >Họ tên *</label>
                                            <input type="text" name="fullname" value="" placeholder=""
                                                   id="input-fullname" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-3">
                                        <div class="control-wrap">
                                            <label >Số điện thoại *</label>
                                            <input type="tel" name="telephone" value="" placeholder="" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-4">
                                        <div class="control-wrap">
                                            <label >Ngày/tháng/năm sinh *</label>
                                            <input type="text" name="birthday" value="" placeholder="dd/mm/yyyy"  class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="control-wrap">
                                    <div class="control-wrap">
                                        <label >Email *</label>
                                        <input type="email" name="email" value="" placeholder="" id="input-email"
                                               class="form-control">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="control-wrap">
                                            <label >Mật khẩu *</label>
                                            <input type="password" name="password" value="" placeholder=""
                                                   id="input-password" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="control-wrap">
                                            <label >Nhập lại mật khẩu *</label>
                                            <input type="password" name="confirm" value="" placeholder=""
                                                   id="input-confirm" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="buttons">
                                    <div class="text-right">
                                        <input type="submit" value="Tiếp tục" class="btn btn-primary">
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <%@include file="/WEB-INF/cp/layout/script/footer_menu.jsp"%>
</footer>
</body>er><html>