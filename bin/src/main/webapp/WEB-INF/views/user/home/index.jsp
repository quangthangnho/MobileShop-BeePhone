<%@ page pageEncoding="utf-8"%>

<!-- Start slider -->
  <section id="aa-slider">
    <div class="aa-slider-area">
      <div id="sequence" class="seq">
        <div class="seq-screen">
          <ul class="seq-canvas">
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="/static/assets/images/slide_5.PNG" alt="Men slide img" />
              </div>
              <div class="seq-title">
                <a data-seq href="" class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="/static/assets/images/slide_6.PNG" alt="Wristwatch slide img" />
              </div>
              <div class="seq-title">
                <a data-seq href="" class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="/static/assets/images/slide_7.PNG" alt="Women Jeans slide img" />
              </div>
              <div class="seq-title">
                <a data-seq href="" class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="/static/assets/images/slide_8.PNG" alt="Shoes slide img" />
              </div>
              <div class="seq-title">
                <a data-seq href="" class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
              </div>
            </li>
          </ul>
        </div>
        <!-- slider navigation btn -->
        <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
          <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
          <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
        </fieldset>
      </div>
    </div>
  </section>

  <!-- / slider -->

  <!-- Start Promo section -->
  <section id="aa-promo">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-promo-area">
            <div class="row">
              <!-- promo left -->
              <div class="col-md-5 no-padding">
                <div class="aa-promo-left">
                  <div class="aa-promo-banner">
                    <img src="/static/assets/images/samsung-galaxy-s21-ultra-1_1.jpg" alt="dâu tây Đà Lạt">
                    <div class="aa-prom-content">
                      <span>Giảm giá 35%</span>
                      <h4>Samsung Galaxy S21 Ultra</h4>
                    </div>
                  </div>
                </div>
              </div>
              <!-- promo right -->
              <div class="col-md-7 no-padding">
                <div class="aa-promo-right">
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">
                      <img src="/static/assets/images/samsung-galaxy-a31.jpg" alt="hạt tiêu daklak">
                      <div class="aa-prom-content">
                        <span>Sản Phẩm độc quyền</span>
                        <h4>Samsung Galaxy A31</h4>
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">
                      <img src="/static/assets/images/apple-iphone-xr-64-gb-chinh-hang-vn_3_.png" alt="img">
                      <div class="aa-prom-content">
                        <span>Sản phẩm nhập khẩu</span>
                        <h4>Apple Iphone XR 64gb Chinh Hãng</h4>
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">
                      <img src="/static/assets/images/iphone-12-pro-max_1__7.png" alt="img">
                      <div class="aa-prom-content">
                        <span>Giảm giá 25%</span>
                        <h4>Iphone 12 Pro Max</h4>
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">
                      <img src="/static/assets/images/section5_tc.jpg" alt="img">
                      <div class="aa-prom-content">
                        <span>Sản phẩm độc quyền</span>
                        <h4>Mật ong rừng Tây Bắc</h4>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Promo section -->

  <!-- Products section -->
  <section id="aa-product">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-product-area">
              <div class="aa-product-inner">
                <!-- start prduct navigation -->
                <ul class="nav nav-tabs aa-products-tab">
                  <li class="active"><a href="#iphone" data-toggle="tab">Iphone</a></li>
                  <li><a href="#hat" data-toggle="tab">SAMSUNG</a></li>
                  <li><a href="#traicay" data-toggle="tab">XIAOMI</a></li>
                  <li><a href="#matong" data-toggle="tab">OPPO</a></li>
                  <li><a href="" data-toggle="tab">HUAWEI</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                  <!-- Start men product category -->
                  <div class="tab-pane fade in active" id="iphone">
                    <ul class="aa-product-catg">
                      <!-- start single product item -->

                      <li>
                        <figure>
                          <a class="aa-product-img" href="product-detail"><img src="/static/assets/images/products/img-test/product-1_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="product-detail">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>

                      </li>

                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-2_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>

                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-3_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>

                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-4_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>
                      <!-- start single product item -->
                    </ul>

                  </div>
                  <!-- / men product category -->
                  <!-- start women product category -->
                  <div class="tab-pane fade" id="hat">
                    <ul class="aa-product-catg">
                      <!-- start single product item -->
                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-6_auto_x1.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>
                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-1_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>

                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-2_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>

                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-3_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>
                      <!-- start single product item -->
                    </ul>
                  </div>
                  <!-- / women product category -->
                  <!-- start sports product category -->
                  <div class="tab-pane fade" id="traicay">
                    <ul class="aa-product-catg">
                      <!-- start single product item -->

                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-4_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>
                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-6_auto_x1.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>
                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-1_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>

                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-2_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>
                      <!-- start single product item -->
                    </ul>

                  </div>
                  <!-- / sports product category -->
                  <!-- start electronic product category -->
                  <div class="tab-pane fade" id="matong">
                    <ul class="aa-product-catg">
                      <!-- start single product item -->
                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-3_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>
                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-4_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>

                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-6_auto_x1.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>

                      <li>
                        <figure>
                          <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-1_auto_x2.jpg"
                              alt="polo shirt img"></a>
                          <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                            hàng</a>
                          <figcaption>
                            <h4 class="aa-product-title"><a href="">name </a></h4>
                            <span class="aa-product-price">price VNĐ</span>
                            <span class="aa-product-price"><del>price VNĐ</del></span>
                          </figcaption>
                        </figure>
                        <!-- product badge -->
                        <span class="aa-badge aa-sale">- discount%</span>
                      </li>

                      <!-- start single product item -->
                    </ul>

                  </div>
                  <!-- / electronic product category -->
                </div>
                <div class="more-product">
                  <a class="aa-browse-btn" href="sanPham.html">Xem Tất Cả Sản Phẩm <span class="fa fa-long-arrow-right"></span></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Products section -->

  <!-- banner section -->
  <section id="aa-banner">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-banner-area">
              <a href="#"><img src="/static/assets/images/c.png" alt="banner trang chủ"></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- popular section -->
  <section id="aa-popular-category">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-popular-category-area">
              <!-- start prduct navigation -->
              <ul class="nav nav-tabs aa-products-tab">
                <li class="active"><a href="#sanphammoi" data-toggle="tab">Sản Phẩm Mới</a></li>
                <li><a href="#sanphambanchay" data-toggle="tab">Sản Phẩm Bán Chạy</a></li>
                <li><a href="#sanphamgiamgia" data-toggle="tab">Sản Phẩm Giảm Giá</a></li>
              </ul>
              <!-- Tab panes -->
              <div class="tab-content">
                <!-- Start men popular category -->
                <div class="tab-pane fade in active" id="sanphammoi">
                  <ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->
                    <li>
                      <figure>
                        <a class="aa-product-img" href=""><img  src="/static/assets/images/products/img-test/600_600_7_plus_1.jpg"
                            alt="polo shirt img"></a>
                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                          hàng</a>
                        <figcaption>
                          <h4 class="aa-product-title"><a href="">product.name </a></h4>
                          <span class="aa-product-price">1 VNĐ</span>
                          <span class="aa-product-price"><del>1 VNĐ</del></span>
                        </figcaption>
                      </figure>
                      <!-- product badge -->
                      <span class="aa-badge aa-sale">-1%</span>
                    </li>

                    <li>
                      <figure>
                        <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-1_auto_x2.jpg"
                            alt="polo shirt img"></a>
                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                          hàng</a>
                        <figcaption>
                          <h4 class="aa-product-title"><a href="">product.name </a></h4>
                          <span class="aa-product-price">1 VNĐ</span>
                          <span class="aa-product-price"><del>1 VNĐ</del></span>
                        </figcaption>
                      </figure>
                      <!-- product badge -->
                      <span class="aa-badge aa-sale">-1%</span>

                    </li>

                    <li>
                      <figure>
                        <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-3.jpg"
                            alt="polo shirt img"></a>
                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                          hàng</a>
                        <figcaption>
                          <h4 class="aa-product-title"><a href="">product.name </a></h4>
                          <span class="aa-product-price">1 VNĐ</span>
                          <span class="aa-product-price"><del>1 VNĐ</del></span>
                        </figcaption>
                      </figure>
                      <!-- product badge -->
                      <span class="aa-badge aa-sale">-1%</span>
                    </li>

                    <li>
                      <figure>
                        <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-4.jpg"
                            alt="polo shirt img"></a>
                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                          hàng</a>
                        <figcaption>
                          <h4 class="aa-product-title"><a href="">product.name </a></h4>
                          <span class="aa-product-price">1 VNĐ</span>
                          <span class="aa-product-price"><del>1 VNĐ</del></span>
                        </figcaption>
                      </figure>


                      <!-- product badge -->
                      <span class="aa-badge aa-sale">-1%</span>
                    </li>

                    <li>
                      <figure>
                        <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-5.jpg"
                            alt="polo shirt img"></a>
                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                          hàng</a>
                        <figcaption>
                          <h4 class="aa-product-title"><a href="">product.name </a></h4>
                          <span class="aa-product-price">1 VNĐ</span>
                          <span class="aa-product-price"><del>1 VNĐ</del></span>
                        </figcaption>
                      </figure>
                      <!-- product badge -->
                      <span class="aa-badge aa-sale">-1%</span>
                    </li>

                    <!-- start single product item -->
                    <!-- start single product item -->

                  </ul>

                </div>
                <!-- / popular product category -->
                <!-- start featured product category -->
                <div class="tab-pane fade" id="sanphambanchay">
                  <ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->

                    <li>
                      <figure>
                        <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-6.jpg"
                            alt="polo shirt img"></a>
                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                          hàng</a>
                        <figcaption>
                          <h4 class="aa-product-title"><a href="">name </a></h4>
                          <span class="aa-product-price">price VNĐ</span>
                          <span class="aa-product-price"><del>price VNĐ</del></span>
                        </figcaption>
                      </figure>
                      <!-- product badge -->
                      <span class="aa-badge aa-sale">- 1%</span>
                      <!-- start single product item -->
                      <!-- start single product item -->
                  </ul>

                </div>
                <!-- / featured product category -->

                <!-- start latest product category -->
                <div class="tab-pane fade" id="sanphamgiamgia">

                  <ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->

                    <li>
                      <figure>
                        <a class="aa-product-img" href=""><img src="/static/assets/images/products/img-test/product-1.jpg"
                            alt="polo shirt img"></a>
                        <a class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ
                          hàng</a>
                        <figcaption>
                          <h4 class="aa-product-title"><a href="">name </a></h4>
                          <span class="aa-product-price">price VNĐ</span>
                          <span class="aa-product-price"><del>price VNĐ</del></span>
                        </figcaption>
                      </figure>
                      <!-- product badge -->
                      <span class="aa-badge aa-sale">- 1%</span>
                    </li>
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
  <!-- / popular section -->
  <!-- Support section -->
  <section id="aa-support">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-support-area">
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-truck"></span>
                <h4>MIỄN PHÍ VẬN CHUYỂN</h4>
                <P>Chúng tôi đã áp dụng gói miễn phí vận chuyển cho đơn hàng trên 280.000VNĐ.</P>
              </div>
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-clock-o"></span>
                <h4>GIAO HÀNG NHANH</h4>
                <P>Chúng tôi đảm bảo hàng đến tay khách hàng nhanh và đảm bảo sản phẩm an toàn.</P>
              </div>
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-phone"></span>
                <h4>HỖ TRỢ 24/7</h4>
                <P>Hỗ trợ tư vấn và đặt hàng mọi lúc mọi nơi, đảm bảo thời gian cho khách hàng.</P>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Support section -->
  <!-- Testimonial -->
  <section id="aa-testimonial">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-testimonial-area">
            <ul class="aa-testimonial-slider">
              <!-- single slide -->
              <li>
                <div class="aa-testimonial-single">
                  <img class="aa-testimonial-img" src="/static/assets/images/avatar.jpg" alt="avatar 1">
                  <span class="fa fa-quote-left aa-testimonial-quote"></span>
                  <p>Tôi đã mua hàng ở cửa hàng khá nhiều lần rồi, và tôi cảm thấy sản phẩm của cửa hàng
                    được giao khá nhanh và sản phẩm thì tốt.</p>
                  <div class="aa-testimonial-info">
                    <p>Ngọc Huy</p>
                    <span>Nhân viên kinh doanh</span>
                  </div>
                </div>
              </li>
              <!-- single slide -->
              <li>
                <div class="aa-testimonial-single">
                  <img class="aa-testimonial-img" src="/static/assets/images/avater-2.jpg" alt="avatar 2">
                  <span class="fa fa-quote-left aa-testimonial-quote"></span>
                  <p> Về chất lượng của sản phẩm thì khỏi phải bàn, rau củ luôn tươi xanh nhìn rất thích. Tôi sẽ mua
                    hàng ở đây thường xuyên<p>
                      <div class="aa-testimonial-info">
                        <p>Mỹ Tân</p>
                        <span>Diễn Viên</span>
                      </div>
                </div>
              </li>
              <!-- single slide -->
              <li>
                <div class="aa-testimonial-single">
                  <img class="aa-testimonial-img" src="/static/assets/images/avatar-1.jpg" alt="avatar 3">
                  <span class="fa fa-quote-left aa-testimonial-quote"></span>
                  <p>Nhiều lần đi làm bận rộn, không có thời gian ra siêu thị nên tôi thường mua hàng online ở đây. Chất
                    lượng sản phẩm và dịch vụ ở đây rất là tốt!</p>
                  <div class="aa-testimonial-info">
                    <p>Oanh Oanh</p>
                    <span>Sinh viên</span>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Testimonial -->

  <!-- Latest Blog -->
  <section id="aa-latest-blog">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-latest-blog-area">
            <h2>TIN TỨC</h2>
            <div class="row">
              <!-- single latest blog -->

              <div class="col-md-4 col-sm-4">
                <div class="aa-latest-blog-single">
                  <figure class="aa-blog-img">
                    <a href="new-detail"><img src="/static/assets/images/news/iphone-12-pro-va-iphone-12-pro-max-ra-mat-xung-danh-iphone-cao-cap-nhat-6.jpg" alt="Tin tức title"></a>
                    <figcaption class="aa-blog-img-caption">
                      <span href="new-detail"><i class="fa fa-clock-o"></i>created</span>
                    </figcaption>
                  </figure>
                  <div class="aa-blog-info">
                    <h3 class="aa-blog-title"><a href="new-detaill">title</a></h3>
                    <p class="desc-boardnews">content</p>
                    <a href="chiTietTinTuc.html" class="aa-read-mor-btn">Xem thêm<span class="fa fa-long-arrow-right"></span></a>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Latest Blog -->

  <!-- Client Brand -->

  <!-- / Client Brand -->