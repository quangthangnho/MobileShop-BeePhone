<%@ page pageEncoding="utf-8"%>

<header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              <div class="aa-header-top-left">
                <div class="cellphone hidden-xs">
                  <p><span class="fas fa-home"></span>Website bán điện thoại</p>
                </div>
                <!-- start language -->
                <div class="aa-language">
                  <div class="dropdown">
                    <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1" data-toggle="dropdown"
                      aria-haspopup="true" aria-expanded="true">
                      <img src="/static/assets/img/flag/vietnam.png" alt="english flag">Việt Nam
                    </a>
                  </div>
                </div>
                <!-- / language -->
                <!-- start cellphone -->
                <!-- / cellphone -->
              </div>
              <!-- / header top left -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
                  <li>
                    <a><strong>Chào </strong>Khải</a>
                  </li>
                  <li class="hidden-xs"><a href="">Đăng xuất</a></li>
                  <li class="hidden-xs"><a href="/account/registration">Đăng ký</a></li>
                  <li><a href="/account/login">Đăng nhập</a></li>
                  <!--  data-toggle="modal" data-target="#login-modal" -->
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header top  -->

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- logo  -->
              <div class="aa-logo">
                <!-- Text based logo -->
                <!-- img based logo -->
                <a href="index"><img src="/static/assets/images/logo1.png" alt="logo img" width="100%"></a>
              </div>
              <!-- / logo  -->
              <!-- Shipping service -->
              <div class="aa-shipping-box">
                <a class="aa-shipping-boxsmall">
                  <span class="aa-shipping-boxsmall-icon fas fa-shipping-fast"></span>
                  <span class="aa-shipping-box-text">
                    <div class="aa-shipping-title">Miễn phí vận chuyển</div>
                    <div class="">Khu vực TP HCM</div>
                  </span>

                </a>
                <a class="aa-shipping-boxsmall">
                  <span class="aa-shipping-boxsmall-icon fas fa-phone"></span>
                  <span class="aa-shipping-box-text">
                    <div class="aa-shipping-title">Hỗ trợ: 037.7026.186</div>
                    <div class="">Tư vấn 24/7 miễn phí</div>
                  </span>

                </a>
                <a class="aa-shipping-boxsmall">
                  <span class="aa-shipping-boxsmall-icon fas fa-shipping-fast"></span>
                  <span class="aa-shipping-box-text">
                    <div class="aa-shipping-title">Giao hàng toàn quốc</div>
                    <div class="">Đảm bảo uy tín, chất lượng</div>
                  </span>

                </a>
              </div>
              <!-- cart box -->
              <jsp:include page="cart.jsp"></jsp:include>
              <!-- / cart box -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header bottom  -->
  </header>