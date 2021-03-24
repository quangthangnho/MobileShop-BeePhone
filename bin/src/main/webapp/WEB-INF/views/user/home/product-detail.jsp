<%@ page pageEncoding="utf-8"%>
 <!--  content -->
    <!-- catg header banner section -->
    <section id="aa-catg-head-banner">
        <img src="/static/assets/images/banner1-product.png" alt="banner sản phẩm">
        <div class="aa-catg-head-banner-area">
            <div class="container">
                <div class="aa-catg-head-banner-content">
                    <h2>Chi tiết sản phẩm</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Trang chủ</a></li>
                        <li><a href="sanPham.html">Sản phẩm</a></li>
                        <li style="color:#fff">name </li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <!-- / catg header banner section -->

    <!-- product category -->
    <section id="aa-product-details">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-product-details-area">
                        <div class="aa-product-details-content">
                            <div class="row">
                                <!-- Modal view slider -->

                                <div class="col-md-5 col-sm-5 col-xs-12">
                                    <div class="aa-product-view-slider">
                                        <div id="demo-1" class="simpleLens-gallery-container">
                                            <div class="simpleLens-container">
                                                <div class="simpleLens-big-image-container"><a
                                                        data-lens-image="assets/images/products/img-test/hanh_baro.jpg"
                                                        class="simpleLens-lens-image"><img
                                                            src="assets/images/products/img-test/hanh_baro.jpg"
                                                            class="simpleLens-big-image"></a></div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-- Modal view content -->

                                <div class="col-md-7 col-sm-7 col-xs-12">
                                    <div class="aa-product-view-content">
                                        <h3>Nokia </h3>
                                        <div class="aa-price-block">

                                            <span class="aa-product-price"><strong>225 VNĐ</strong></span>
                                            <span class="aa-product-price"><del>225 VNĐ</del></span>


                                            <p class="aa-product-avilability">Tình trạng: còn hàng <span>

                                                </span></p>
                                        </div>
                                        <p>Nokia</p>
                                        <div class="aa-prod-quantity">

                                            <p class="aa-prod-category">

                                                <strong>Danh mục:</strong> <a href="product.jsp">nokia</a>

                                            </p>
                                        </div>
                                        <div class="aa-prod-view-bottom">
                                            <a class="aa-add-to-cart-btn" href="">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="aa-product-details-bottom">
                            <ul class="nav nav-tabs aa-products-tab" id="myTab2">
                                <li class="active"><a href="#description" data-toggle="tab" class="">Mô tả</a></li>
                                <li><a href="#review" data-toggle="tab">Đánh giá</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="description">
                                    <p>content </p>
                                </div>
                                <div class="tab-pane fade " id="review">
                                    <div class="aa-product-review-area">
                                        <ul class="aa-review-nav">

                                            <li>
                                                <div class="media">
                                                    <div class="media-body">
                                                        <h4 class="media-heading"><strong>name</strong> -
                                                            <span>created</span></h4>
                                                        <div class="aa-product-rating">
                                                            <span class="fa fa-star"></span>
                                                            <span class="fa fa-star"></span>
                                                            <span class="fa fa-star"></span>
                                                            <span class="fa fa-star"></span>
                                                            <span class="fa fa-star"></span>
                                                        </div>
                                                        <p>content</p>
                                                    </div>
                                                </div>
                                            </li>

                                        </ul>
                                        <h4>Thêm đánh giá</h4>

                                        <!-- review form -->
                                        <form action="" method="post" class="aa-review-form">
                                            <div class="form-group">
                                                <label for="name">Tên</label>
                                                <input type="text" class="form-control" id="name" placeholder="Name"
                                                    name="name">
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input type="email" class="form-control" id="email"
                                                    placeholder="example@gmail.com" name="email">
                                            </div>
                                            <div class="form-group">
                                                <label for="message">Đánh giá của bạn</label>
                                                <textarea class="form-control" rows="3" id="content"
                                                    name="content"></textarea>
                                            </div>

                                            <button type="submit" class="btn btn-default aa-review-submit">Gửi</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Related product -->
                        <div class="aa-product-related-item">
                            <h3>SẢN PHẨM LIÊN QUAN</h3>
                            <ul class="aa-product-catg aa-related-item-slider">
                                <!-- start single product item -->

                                <li>
                                    <figure>
                                        <a class="aa-product-img" href=""><img
                                                src="assets/images/products/img-test/rau_cai.jpg" alt=""></a>
                                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm
                                            vào giỏ hàng</a>
                                        <figcaption>
                                            <h4 class="aa-product-title"><a href="">name</a>
                                            </h4>
                                            <span class="aa-product-price">price
                                                <u>VNĐ</u></span><span class="aa-product-price"></span>
                                            <span class="aa-product-price"><del>225 VNĐ</del></span>

                                        </figcaption>
                                    </figure>
                                    <!-- product badge -->
                                    <span class="aa-badge aa-sale">- discount%</span>
                                </li>

                                <li>
                                    <figure>
                                        <a class="aa-product-img" href=""><img
                                                src="assets/images/products/img-test/rau_cai.jpg" alt=""></a>
                                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm
                                            vào giỏ hàng</a>
                                        <figcaption>
                                            <h4 class="aa-product-title"><a href="">name</a>
                                            </h4>
                                            <span class="aa-product-price">price
                                                <u>VNĐ</u></span><span class="aa-product-price"></span>
                                            <span class="aa-product-price"><del>225 VNĐ</del></span>
                                        </figcaption>
                                    </figure>
                                    <!-- product badge -->
                                    <span class="aa-badge aa-sale">- discount%</span>
                                </li>

                                <li>
                                    <figure>
                                        <a class="aa-product-img" href=""><img
                                                src="assets/images/products/img-test/rau_cai.jpg" alt=""></a>
                                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm
                                            vào giỏ hàng</a>
                                        <figcaption>
                                            <h4 class="aa-product-title"><a href="">name</a>
                                            </h4>
                                            <span class="aa-product-price">price
                                                <u>VNĐ</u></span><span class="aa-product-price"></span>
                                            <span class="aa-product-price"><del>225 VNĐ</del></span>
                                        </figcaption>
                                    </figure>
                                    <!-- product badge -->
                                    <span class="aa-badge aa-sale">- discount%</span>
                                </li>

                                <li>
                                    <figure>
                                        <a class="aa-product-img" href=""><img
                                                src="assets/images/products/img-test/rau_can_tay.jpg" alt=""></a>
                                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm
                                            vào giỏ hàng</a>
                                        <figcaption>
                                            <h4 class="aa-product-title"><a href="">name</a>
                                            </h4>
                                            <span class="aa-product-price">price
                                                <u>VNĐ</u></span><span class="aa-product-price"></span>


                                            <span class="aa-product-price"><del>225 VNĐ</del></span>
                                        </figcaption>
                                    </figure>
                                    <!-- product badge -->
                                    <span class="aa-badge aa-sale">- discount%</span>
                                </li>

                                <!-- start single product item -->
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- / product category -->
    <!--  end content-->