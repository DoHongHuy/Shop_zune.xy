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
                                            <div >
                                                    <div class="col-xs-12 col-sm-6">
                                                        <div >

                                                            <form  method="post" enctype="multipart/form-data">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="name">Nhập tên sản phẩm:</label>
                                                                    <input type="text" id="name" name="name"
                                                                           class="form-control">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label" for="price" >Nhập giá sản phẩm:</label>
                                                                    <input type="number" name="price" id="price" value="" placeholder=""
                                                                            class="form-control">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="quantity" class="control-label" >Nhập số lượng:</label>
                                                                    <input type="number" id="quantity" name="quantity" value="" placeholder=""
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
<%--                                                                    <c:forEach items="${applicationScope.listCategories}"--%>
<%--                                                                               var="type">--%>
<%--                                                                        <c:if test="${type.getId()==item.getIdType()}">--%>
<%--                                                                            <c:out value="Loại sản phẩm: ${type.getName()}"/>--%>
<%--                                                                        </c:if>--%>
<%--                                                                    </c:forEach>--%>



<%--                                                                    <c:forEach items="${listCountry }" var="country">--%>
<%--                                                                        <option value="${country.getId() }">${country.getName() }</option>--%>
<%--                                                                    </c:forEach>--%>

                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="information" class="control-label" >Mô tả sản phẩm</label>
                                                                    <input type="text" id="information" name="information" value="" placeholder=""
                                                                           class="form-control">
                                                                </div>
                                                                <div class="">

                                                                    <label for="img" class="" >Ảnh sản phẩm</label>
                                                                    <input type="file" id="img" name="img">
                                                                </div>
                                                                <input type="submit" class="btn btn-primary" value="Cập nhập">
<%--                                                                <input type="hidden" name="redirect"--%>
<%--                                                                       value="https://zunezx.com/tai-khoan.html">--%>
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
<footer>

</footer>

</body>

</html>
