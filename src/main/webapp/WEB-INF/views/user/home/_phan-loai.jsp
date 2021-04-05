<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<section id="aa-popular-category">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-popular-category-area">
              <!-- start prduct navigation -->
              <ul class="nav nav-tabs aa-products-tab">
                <li class="active"><a href="#sanphammoi" data-toggle="tab">Sản Phẩm Mới</a></li>
                <li><a href="#sanphambanchay" data-toggle="tab">Sản Phẩm Có Nhiều Lượt Xem</a></li>
                <li><a href="#sanphamgiamgia" data-toggle="tab">Sản Phẩm Giảm Giá</a></li>
              </ul>
              <!-- Tab panes -->
              <div class="tab-content">
                <!-- Start men popular category -->
                <div class="tab-pane fade in active" id="sanphammoi">
                  <ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->
                    <c:forEach items="${listSPM}" var="element" begin="0" end="7">
                    <li>
                      <figure>
                        <a class="aa-product-img" href="/product/-detail/${element.id}"><img src="/static/images/products/${element.image}"
                              alt="polo shirt img"></a>
                        <%@include file="_buttons.jsp"%>
                        <figcaption>
                            <h4 class="aa-product-title"><a href="/product/detail/${element.id}">${element.name}</a></h4>
                            <span class="aa-product-price"><fmt:formatNumber type = "number"  maxFractionDigits  = "6" value = "${element.price_discount}" /> VNĐ</span>
                            <span class="aa-product-price"><del>
                            <fmt:formatNumber type = "number"  maxFractionDigits  = "6" value = "${element.unitPrice}" />
                             VNĐ</del></span>
                          </figcaption>
                      </figure>
                      <!-- product badge -->
                      <span class="aa-badge aa-sale">-${element.discount}%</span>
                    </li>
                     </c:forEach>
                    <!-- start single product item -->
                    <!-- start single product item -->

                  </ul>

                </div>
                <!-- / popular product category -->
                <!-- start featured product category -->
                <div class="tab-pane fade" id="sanphambanchay">
                  <ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->

                    <c:forEach items="${listProduct_View}" var="element" begin="0" end="7">
                    <li>
                      <figure>
                        <a class="aa-product-img" href="/product/detail/${element.id}"><img src="/static/images/products/${element.image}"
                              alt="polo shirt img"></a>
                        <%@include file="_buttons.jsp"%>
                        <figcaption>
                            <h4 class="aa-product-title"><a href="/product/detail">${element.name}</a></h4>
                            <span class="aa-product-price"><fmt:formatNumber type = "number"  maxFractionDigits  = "6" value = "${element.price_discount}" /> VNĐ</span>
                            <span class="aa-product-price"><del>
                            <fmt:formatNumber type = "number"  maxFractionDigits  = "6" value = "${element.unitPrice}" />
                             VNĐ</del></span>
                          </figcaption>
                      </figure>
                      <!-- product badge -->
                      <span class="aa-badge aa-sale">-${element.discount}%</span>
                    </li>
                     </c:forEach>
                      <!-- start single product item -->
                      <!-- start single product item -->
                  </ul>

                </div>
                <!-- / featured product category -->

                <!-- start latest product category -->
                <div class="tab-pane fade" id="sanphamgiamgia">

                  <ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->
						<c:forEach items="${listProduct_Discount}" var="element" begin="0" end="7">
                    <li>
                      <figure>
                        <a class="aa-product-img" href="/product/detail/${element.id}"><img src="/static/images/products/${element.image}"
                              alt="polo shirt img"></a>
                        <%@include file="_buttons.jsp"%>
                        <figcaption>
                            <h4 class="aa-product-title"><a href="/product/detail">${element.name}</a></h4>
                            <span class="aa-product-price"><fmt:formatNumber type = "number"  maxFractionDigits  = "6" value = "${element.price_discount}" /> VNĐ</span>
                            <span class="aa-product-price"><del>
                            <fmt:formatNumber type = "number"  maxFractionDigits  = "6" value = "${element.unitPrice}" />
                             VNĐ</del></span>
                          </figcaption>
                      </figure>
                      <!-- product badge -->
                      <span class="aa-badge aa-sale">-${element.discount}%</span>
                    </li>
                     </c:forEach>
                 
                    <!-- start single product item -->
                    <!-- start single product item -->
                  </ul>
                </div>
                <!-- / latest product category -->
              </div>
              <div class="more-product">
                <a class="aa-browse-btn" href="">Xem Tất Cả Sản Phẩm <span class="fa fa-long-arrow-right"></span></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>