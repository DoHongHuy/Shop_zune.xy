<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>

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
            <h2 class="box-heading wow fadeInUp animated text-center mb-40"><span>Tất cả sản phẩm</span></h2>

            <form method="get" enctype="multipart/form-data">
                <img src="https://zunezx.com/public/home/img/w-search.png" alt="Tìm kiếm...">
                <h2>Tìm kiếm sản phẩm</h2>

                <div>
                    Từ khoá :  <input type="text"  name="key" style=" color: #0a0a08;">
                </div>
                <div>
                    <label class="control-label" >Loại sản phẩm</label><br>
                    <select class="control-label" name="type" id="type" style="background-color: #090707; color: #fcf8e3;">
                        <option value=" ">All</option>
                        <c:forEach items="${applicationScope.listCategories}"
                                   var="type">
                            <option value="${type.getId()}" class="form-control" >${type.getName()}</option>
                        </c:forEach>
                    </select>
                </div>
                <button class="btn" type="submit" name="search">
                    <i class="fe-search" style=" color: #0a0a08;">Tìm kiếm
                    </i>
                </button>
            </form>
            <div>


            </div>
<%--            <img class="icon-in-menu" src="https://zunezx.com/public/home/img/w-search.png" alt="Tìm kiếm...">--%>
            <div class="box-all-product -type-1">
                <div class="row">
                    <c:forEach items="${requestScope['productList']}" var="item">
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <div class="product-item">
                                <div class="img">
                                    <a href="/products?action=show&id=1">
                                        <img src="${item.getImg()}"
                                             class="img-responsive main-img main"
                                             style="width:500px; height:345px; "
                                        ></a>
                                    <a href="/products/?action=show&id=1">
                                        <img src="${item.getImg()}"
                                             class="img-responsive sub-img"
                                             style="width:500px; height:400px; ">
                                    </a>
                                </div>
                                <div class="info">
                                    <h4>
                                        <a href="">${item.getName()}</a>
                                    </h4>
                                </div>
                                <div class="box-price">
                                    <span class="price">Giá bán: ${item.getPrice()}</span>
                                </div>
                                <div class="box-price">
                                    <span class="quantity">Số lượng: ${item.getQuantity()}</span>
                                </div>
                                <div class="box-price">
                                    <span class="quantity">
                                        <c:forEach items="${applicationScope.listCategories}"
                                                var="type">
                                            <c:if test="${type.getId()==item.getIdType()}">
                                                <c:out value="Loại sản phẩm: ${type.getName()}"/>
                                            </c:if>
                                        </c:forEach>
                                    </span>

                                </div>
                                <div class="actions text-center">
                                    <a href="/products?action=edit&id=${item.getId()}" >
                                        <button type="button" class="btn btn-outline-primary" style="  color: #140a0a;"><i
                                                class="fa-solid fa-pen-to-square"></i></button>
                                    </a>
                                    <a href="/products?action=delete&id=${item.getId()} " style="color: red ;"
                                       onclick="return confirm('Bạn muốn xoá sản phẩm này: ')")>
                                        <button type="button" class="btn btn-outline-primary"><i
                                                class="fa-solid fa-trash-can"></i></button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                    <%--                    <c:forEach items="${requestScope['productList']}" var="item">--%>
                    <%--                        <tr>--%>
                    <%--                            <td>--%>
                    <%--                                <img  src="/images/erd.png"></img>${item.getImg()}</td>--%>
                    <%--                            <td>${item.getName()}</td>--%>
                    <%--                            <td>${item.getPrice()}</td>--%>
                    <%--                            <td>${item.getQuantity()}</td>--%>
                    <%--                            <td>${item.getQuantity()}</td>--%>
                    <%--                            <td>${item.getQuantity()}</td>--%>
                    <%--                            <td>${item.getQuantity()}</td>--%>
                    <%--                            <td></td>--%>
                    <%--                            <td></td>--%>
                    <%--                            <td>--%>
                    <%--                                    &lt;%&ndash;      <a href="/product?action=edit&id=${item.getId()}">&ndash;%&gt;--%>
                    <%--                                    &lt;%&ndash;        <button type="button" class="btn btn-outline-primary"> <i class="fa-solid fa-pen-to-square"></i></button>&ndash;%&gt;--%>
                    <%--                                    &lt;%&ndash;      </a>&ndash;%&gt;--%>
                    <%--                                    &lt;%&ndash;      <a href="/product?action=delete&id=${item.getId()}">&ndash;%&gt;--%>
                    <%--                                    &lt;%&ndash;        <button type="button" class="btn btn-outline-primary"><i class="fa-solid fa-trash-can"></i></button>&ndash;%&gt;--%>
                    <%--                                    &lt;%&ndash;      </a>&ndash;%&gt;--%>
                    <%--                            </td>--%>
                    <%--                        </tr>--%>
                    <%--                    </c:forEach>--%>

                   </div>
<%--                <div class="paginate text-center">--%>
<%--                    <ul class="pagination">--%>
<%--                        <li><a href="https://zunezx.com/san-pham.html">|&lt;</a></li>--%>
<%--                        <li><a href="https://zunezx.com/san-pham.html">&lt;</a></li>--%>
<%--                        <li><a href="https://zunezx.com/san-pham.html">1</a></li>--%>
<%--                        <li class="active"><span>2</span></li>--%>
<%--                        <li><a href="https://zunezx.com/san-pham.html?page=3">3</a></li>--%>
<%--                        <li><a href="https://zunezx.com/san-pham.html?page=3">&gt;</a></li>--%>
<%--                        <li><a href="https://zunezx.com/san-pham.html?page=3">&gt;|</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
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
