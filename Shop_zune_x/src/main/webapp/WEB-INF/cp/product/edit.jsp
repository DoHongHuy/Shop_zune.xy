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
    <%@include file="/WEB-INF/cp/layout/script/header_menuProduct.jsp"%>
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
    <div class="container">
        <div id="content" class="product__all__page">
            <h1 class="heading-title hidden">Tất cả sản phẩm</h1>
            <h2 class="box-heading wow fadeInUp animated text-center mb-40"><span>Sửa sản phẩm</span></h2>
            <div class="box-all-product-type-1">
                <div class="row">
                    <div class="">
                        <div class="container">
                            <div class="row">
                                <div class="collectionWrapper" >
                                    <div class="col-xs-12">
                                        <div>
                                            <div class="col-xs-12 col-sm-6">
                                                <div >
                                                    <form  method="post" enctype="multipart/form-data">
                                                        <div class="form-group">
                                                            <label class="control-label" for="name">Nhập tên sản phẩm:</label>
                                                            <input type="text" id="name" name="name" value="${requestScope['product'].name}"
                                                                   class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label" for="price" >Nhập giá sản phẩm:</label>
                                                            <input type="number" name="price" id="price" value="${requestScope['product'].price}" placeholder=""
                                                                   class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="quantity" class="control-label" >Nhập số lượng:</label>
                                                            <input type="number" id="quantity" name="quantity" value="${requestScope['product'].quantity}" placeholder=""
                                                                   class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label" >Loại sản phẩm</label><br>
                                                            <%--                                                                    <input type="number" name="idType" value="" placeholder=""--%>
                                                            <%--                                                                           id="idType" class="form-control">--%>

                                                                <select class="control-label" name="idType" id="idType" style="background-color: #110e0e; color: #fcf8e3;">
                                                                <c:forEach items="${applicationScope.listCategories}"
                                                                           var="type">
                                                                    <option value="${type.getId() }" class="form-control" >${type.getName() }</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="information" class="control-label" >Mô tả sản phẩm</label>
                                                            <input type="text" id="information" name="information" value="${requestScope['product'].information}" placeholder=""
                                                                   class="form-control">
                                                        </div>
                                                        <div >
                                                            <label for="img" >Ảnh sản phẩm</label>
                                                            <input type="file" id="img" name="img" placeholder=""${requestScope['product'].img}"" value="${requestScope['product'].img}">

                                                        </div>
                                                        <input type="submit" class="btn btn-primary" value="Cập nhập">
                                                    </form>


                    <div  style="color: red;;font-size: 24px;">
                        <c:if test="${requestScope['success'] == true}">
                            <ul class="success" style="color: #2f55a0; text-align: initial">
                                <li> Cập nhập thành công </li>
                            </ul>
                        </c:if>
                        <c:if test="${!requestScope['errors'].isEmpty()}">
                            <ul class="error">
                                <c:forEach items="${requestScope['errors']}" var="item">
                                    <li>${item}</li>
                                </c:forEach>
                            </ul>
                        </c:if>
                        <%--            </c:if>--%>
                    </div>


                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </h2>
                </div>
                <div class="paginate text-center">

                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <%@include file="/WEB-INF/cp/layout/script/footer_menu.jsp" %>
</footer>

</footer>

</body>

</html>
