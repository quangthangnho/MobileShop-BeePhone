<%@ page pageEncoding="utf-8"%>


  <section id="menu">
    <div class="container">
      <div class="menu-area">
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <div class="navbar-collapse collapse">
            <!-- Left nav -->
            <ul class="nav navbar-nav">
              <li><a href="/home/index">TRANG CHỦ</a></li>
              <li><a href="/home/about">GIỚI THIỆU</a></li>
              <li><a href="/home/product">SẢN PHẨM</span></a>
                <ul class="dropdown-menu">
                  <li><a href="">RAU CỦ QUẢ</a></li>
                  <li><a href="">CÁC LOẠI HẠT</a></li>
                  <li><a href="">TINH DẦU</a></li>
                  <li><a href="">MẬT ONG</a></li>
                </ul>
              </li>
              <li><a href="/home/news">TIN TỨC</a></li>
              <li><a href="/home/policy">CHÍNH SÁCH</a></li>
              <li><a href="/home/contact">LIÊN HỆ</a></li>
              <li class="aa-search">
                <!-- search box -->
				<jsp:include page="search.jsp"></jsp:include>
                <!-- / search box -->
              </li>
            </ul>
          </div>
          <!--/.nav-collapse -->

        </div>
      </div>
    </div>
  </section>