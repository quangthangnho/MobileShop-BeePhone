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
                                <p style="margin-left: 30px">Thông báo lỗi: Chưa có sản phẩm!</p>
                                <li>
                                    <figure>
                                        <a class="aa-product-img" href="/home/product"><img src="assets/images/hat-mac-ca.jpg" alt=""></a>
                                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm
                                            vào giỏ hàng</a>
                                        <figcaption>
                                            <h4 class="aa-product-title"><a href="/home/product">name</a></h4>
                                            <span class="aa-product-price">price VNĐ</span><span
                                                class="aa-product-price"></span>
                                            
                                            <span class="aa-product-price"><del>price VNĐ</del></span>
                                        </figcaption>
                                    </figure>
                                    <!-- product badge -->
                                    <span class="aa-badge aa-sale">- discount%</span>
                                </li>
                            </ul>
                            <!-- / quick view modal -->
                        </div>

                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
                    <aside class="aa-sidebar">
                        <!-- single sidebar -->
                        <div class="aa-sidebar-widget">
                            <h3>Danh mục</h3>
                            <c:forEach var="c" items="${cates}">
	                            <ul class="aa-catg-nav">
	                            	
	                          		
	                                    <li><a href="">${c.name}</a></li>
									
	                            </ul>
                            </c:forEach>
                        </div>
                        <!-- single sidebar -->

                        <!-- single sidebar -->
                        <div class="aa-sidebar-widget">
                            <h3>Sản phẩm gần đây</h3>
                            <div class="aa-recently-views">
                                <ul>
                                    <li>
                                        <a href="chiTietSP.html" class="aa-cartbox-img"><img alt="img"
                                                src="assets/images/products/img-test/rau_cai.jpg"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="chiTietSP.html">name </a></h4>
                                            <p>price VNĐ</p>
                                            <p>price VNĐ</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- single sidebar -->
                    </aside>
                </div>

            </div>
        </div>
    </section>
    <!-- / product category -->
    <!--  end content-->
