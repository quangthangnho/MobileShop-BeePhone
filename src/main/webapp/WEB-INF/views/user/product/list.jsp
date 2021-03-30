<%@page import="java.util.ArrayList"%>
<%@page import="com.poly.dao.ProductDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.poly.entity.ProductEntity"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> <!-- nhúng thư viện core -->

   <!--  content -->
    <!-- catg header banner section -->
    <section id="aa-catg-head-banner">
        <img src="/static/assets/images/banner1-product.png" alt="banner sản phẩm">
        <div class="aa-catg-head-banner-area">
            <div class="container">
                <div class="aa-catg-head-banner-content">
                    <h2>Sản phẩm</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Trang chủ</a></li>
                        <li style="color:#fff">Danh sách sản phẩm</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- / catg header banner section -->

    <!-- product category -->
    <section id="aa-product-category">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
                    <div class="aa-product-catg-content">
                        <div class="aa-product-catg-body">
                            <ul class="aa-product-catg">
                                <!-- start single product item -->
                                			<%
                                            	double a = 13000000;
                                            	String.format("%1$,.0f", a);
                                            	out.print(">>>> " + String.format("%1$,.0f", a));
                                            %>
                                            
                                           
                                <p style="margin-left: 30px">Thông báo lỗi: Chưa có sản phẩm!</p>
                                <c:forEach var="prod" items="${list}">
                                <li>
                                    <figure>
                                        <a class="aa-product-img" href="/product/detail/${prod.id}"><img src="/static/assets-a/assets/images/products/${prod.image}" alt=""></a>
                                        <%@include file="_buttons.jsp"%>
                                        
                                        <figcaption>
                                            <h4 class="aa-product-title"><a href="/product/detail/${prod.id}">${prod.name}</a></h4>
                                            <span class="aa-product-price">${(prod.unitPrice) * (100- prod.discount)/100} VNĐ</span><span
                                                class="aa-product-price"></span>
                                            
                                            <span class="aa-product-price"><del>${(prod.unitPrice) } VNĐc</del></span>
                               
                               				
                                        
                                        </figcaption>
                                    </figure>
                                    <!-- product badge -->
                                   
                                    <span class="aa-badge aa-sale">${prod.discount}%</span>
                                </li>
                                </c:forEach>
                                
                            </ul>
                            <!-- / quick view modal -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
                    <aside class="aa-sidebar">
                        <!-- single sidebar -->
                        <c:import url="/layout/category"></c:import>
                        <!-- single sidebar -->

                        <!-- single sidebar -->
                        <!-- single sidebar -->
                    </aside>
                </div>

            </div>
        </div>
    </section>
    <!-- / product category -->
    <!--  end content-->
