<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html dir="ltr" lang="vi">
<head>
    <%@include file="/WEB-INF/cp/layout/script/head.jsp" %>
</head>
<body>
<div class="fb-livechat" style="display: block;">
    <div class="ctrlq fb-overlay">
    </div>
    <div class="fb-widget">
        <div class="ctrlq fb-close">
        </div>

        <div class="fb-credit">
        </div>
        <div id="fb-root" class=" fb_reset fb_reset">
            <div style="position: absolute;
                    top: -10000px;
                    width: 0px;
                    height: 0px;">
                <div>
                    <iframe name="fb_xdm_frame_https" id="fb_xdm_frame_https" aria-hidden="true"
                            title="Facebook Cross Domain Communication Frame" tabindex="-1" frameborder="0"
                            allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media"
                            src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=fcd083b3c0bbc8&amp;"
                            style="border: none; opacity: 1;">
                    </iframe>
                </div>
                <div>
                </div>
            </div>
            <div style="position: absolute; top: -10000px; width: 0px; height: 0px;">
                <div></div>
            </div>
        </div>
    </div>
</div>

<header>
    <%@include file="/WEB-INF/cp/layout/script/header_menuProduct.jsp" %>
</header>
</div>
<section id="slideshow" class="slider no-pad">
    <div class="tp-banner-container" style="overflow: visible;">
        <div class="tp-bullets simplebullets round hidebullets"
             style="bottom: 20px; left: 50%; margin-left: -59px;">
            <div class="bullet first"></div>
            <div class="bullet"></div>
            <div class="bullet selected"></div>
            <div class="bullet"></div>
            <div class="bullet last"></div>
            <div class="tpclear"></div>
        </div>
        <div style="position: absolute; top: 9582px; margin-top: -20px; left: 20px;"
             class="tp-leftarrow tparrows default round hidearrows">
            <div class="tp-arr-allwrapper">
                <div class="tp-arr-iwrapper">
                    <div class="tp-arr-imgholder">
                    </div>
                    <div class="tp-arr-imgholder2"></div>
                    <div class="tp-arr-titleholder"></div>
                    <div class="tp-arr-subtitleholder"></div>
                </div>
            </div>
        </div>
        <div style="position: absolute; top: 9582px; margin-top: -20px; right: 20px;"
             class="tp-rightarrow tparrows default round hidearrows">
            <div class="tp-arr-allwrapper">
                <div class="tp-arr-iwrapper">
                    <div class="tp-arr-imgholder"></div>
                    <div class="tp-arr-imgholder2"></div>
                    <div class="tp-arr-titleholder"></div>
                    <div class="tp-arr-subtitleholder"></div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        jQuery('.tp-banner').show().revolution({
            dottedOverlay: 'none',
            delay: 3000,
            startwidth: 1600,
            startheight: 650,

            hideThumbs: 200,
            thumbWidth: 50,
            thumbHeight: 40,
            thumbAmount: 2,

            navigationType: 'bullet',
            navigationArrows: 'solo',
            navigationStyle: 'round',

            touchenabled: 'on',
            onHoverStop: 'off',

            swipe_velocity: 0.7,
            swipe_min_touches: 1,
            swipe_max_touches: 1,
            drag_block_vertical: false,

            spinner: 'none',
            keyboardNavigation: 'off',

            navigationHAlign: 'center',
            navigationVAlign: 'bottom',
            navigationHOffset: 0,
            navigationVOffset: 20,

            soloArrowLeftHalign: 'left',
            soloArrowLeftValign: 'center',
            soloArrowLeftHOffset: 20,
            soloArrowLeftVOffset: 0,

            soloArrowRightHalign: 'right',
            soloArrowRightValign: 'center',
            soloArrowRightHOffset: 20,
            soloArrowRightVOffset: 0,

            shadow: 0,
            fullWidth: 'on',
            fullScreen: 'off',

            stopLoop: 'off',
            stopAfterLoops: -1,
            stopAtSlide: -1,

            shuffle: 'off',

            autoHeight: 'off',
            forceFullWidth: 'off',
            fullScreenAlignForce: 'off',
            minFullScreenHeight: 0,
            hideNavDelayOnMobile: 1500,

            hideThumbsOnMobile: 'off',
            hideBulletsOnMobile: 'off',
            hideArrowsOnMobile: 'off',
            hideThumbsUnderResolution: 0,

            hideSliderAtLimit: 0,
            hideCaptionAtLimit: 0,
            hideAllCaptionAtLilmit: 0,
            startWithSlide: 0,
            fullScreenOffsetContainer: ''
        });
    </script>
</section>


<div class="has-bg__container">
    <div class="container" id="product">
        <div id="content">
            <h1 class="heading-title hidden">RAW SUDE SHIRT</h1>
            <div class="row mb-35">
                <div class="col-xs-12 col-sm-5">
                    <div class="product-popup popup-gallery slick-initialized slick-slider">
                        <img src="/images/index.png" alt="" style="height: 536px;  width: 485px;">
                    </div>
                </div>
                <div class="col-xs-12 col-sm-7">
                    <h2 class="detail-product-name">RAW SUDE SHIRT</h2>
                    <div class="product-meta">
                        <p>Mã sản phẩm: SHIRT</p>
                        <p>Tình trạng: Còn hàng</p>
                        <p class="product-detail-price">
                            Giá:
                            <span class="price"> 590,000đ </span>
                        </p>
                        <div class="price-installment">Hoặc <span>196,667đ</span> x3 kỳ với <a target="_blank"
                                                                                               href="https://fundiin.vn/ecompopup/">Fundiin</a>.
                            <i>(Chưa bao gồm phí vận chuyển)</i>
                        </div>
                    </div>
                    <p class="product-option">
                        Kích thước:
                        <span data-option="1227">
                                        M
                                    </span>
                        <span data-option="1228">
                                        L
                                    </span>
                        <select name="option[702]" id="input-option702" class="form-control hidden">
                            <option value=""> --- Chọn ---</option>
                            <option value="1227">
                                M
                            </option>
                            <option value="1228">
                                L
                            </option>
                        </select>
                    </p>
                    <p class="product-option">
                        Màu sắc:
                        <span data-option="1230">
                                        Black
                                    </span>
                        <span data-option="1229">
                                        White
                                    </span>
                        <select name="option[703]" id="input-option703" class="form-control hidden">
                            <option value=""> --- Chọn ---</option>
                            <option value="1230">
                                Black
                            </option>
                            <option value="1229">
                                White
                            </option>
                        </select>
                    </p>
                    <div class="product-form">
                        <p class="pull-left">Số lượng:&nbsp;</p>
                        <div class="product-control-group pull-left">
                            <button class="button"
                                    onclick="var result = document.getElementById('product-qty'); var prodDetailQty = result.value; if( !isNaN( prodDetailQty ) &amp;&amp; prodDetailQty > 1 ) result.value--;return false;">
                                -
                            </button>
                            <input type="number" name="quantity" min="1" value="1" max="10" class="qty"
                                   id="product-qty" title="Số lượng"
                                   onblur="if ($(this).val() > 10) {$(this).val(10)}">
                            <input type="hidden" name="product_id" value="811">
                            <button class="button button-last"
                                    onclick="var result = document.getElementById('product-qty'); var prodDetailQty = result.value; if(!isNaN(prodDetailQty) &amp;&amp; Number(document.getElementById('product-qty').value) >= Number(10)) alert('Số lượng tối đa còn: 10 sản phẩm'); if( !isNaN(prodDetailQty) &amp;&amp; Number(result.value) < Number(10)) result.value++; return false;">
                                +
                            </button>
                        </div>
                        <div class="clearfix"></div>
                        <a href="https://zunezx.com/upload/image/data/san-pham/accessories/Ảnh-chụp-Màn-hình-2020-06-11-lúc-1.16.50-CH-629.png"
                           class="btn btn-primary image-link">
                            Size Chart
                        </a>
                        <div class="clearfix"></div>
                        <button onclick="addToCart(true)" data-loading-text="Đang xử lý..."
                                class="btn btn-primary">
                            Mua hàng ngay
                        </button>
                        <button onclick="addToCart()" data-loading-text="Đang xử lý..."
                                class="btn btn-primary">
                            Thêm vào giỏ hàng
                        </button>
                    </div>


                </div>

            </div>
        </div>
    </div>
</div>
<footer>
    <%@include file="/WEB-INF/cp/layout/script/footer_menu.jsp" %>
</footer>
</body>

</html>
