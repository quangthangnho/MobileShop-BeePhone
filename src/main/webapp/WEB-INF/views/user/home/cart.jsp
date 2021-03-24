<%@ page pageEncoding="utf-8"%>
 <!--  content -->
<!-- catg header banner section -->
<section id="aa-catg-head-banner">
 <img src="/static/assets/images/banner-cart.png" alt="banner giỏ hàng">
 <div class="aa-catg-head-banner-area">
   <div class="container">
    <div class="aa-catg-head-banner-content">
      <h2>Giỏ hàng</h2>
      <ol class="breadcrumb">
        <li><a href="index.html">Trang chủ </a></li>
        <li style="color:#fff">Thông tin giỏ hàng</li>
      </ol>
    </div>
   </div>
 </div>
</section>
<!-- / catg header banner section -->

<!-- Cart view section -->
<section id="cart-view">
 <div class="container">
   <div class="row">
     <div class="col-md-12">
       <div class="cart-view-area">
         <div class="cart-view-table">
           <form action="" method="post">
             <div class="table-responsive">
                <table class="table">
                  <thead>
                    <tr>
                      <th>Bỏ chọn</th>
                      <th>Mô tả</th>
                      <th>Sản phẩm</th>
                      <th>Giá</th>
                      <th>Số lượng</th>
                      <th>Giảm giá</th>
                      <th>Thành Tiền</th>
                    </tr>
                  </thead>
                  <tbody>
                
                    <tr>
                      <td><a class="remove" href=""><fa class="fa fa-close"></fa></a></td>
                      <td><a href=""><img src="assets/images/rau_mui.jpg"></a></td>
                      <td><a class="aa-cart-title" href="">name </a></td>
                      <td>100 VNĐ</td>
                      <td><input class="aa-cart-quantity" type="number" name="" value="1" min=1></td>
                      <td>10 %</td>
                      <td>100 VNĐ</td>
                    </tr>
                 
                     <tr>
                      <td colspan="6" class=""><strong>TỔNG TIỀN</strong></td>
                      <td><strong>100 VNĐ</strong></td>
                    </tr>
                    <tr>
                      <td colspan="7" class="aa-cart-view-bottom">
                        <input class="aa-cart-view-btn" type="submit" value="Cập nhật giỏ hàng">
                      </td>
                    </tr>
                   
                    </tbody>
                </table>
                </div>
           </form>
           <!-- Cart Total view -->
           <div class="cart-view-total">
             <h4>Thông tin giỏ hàng</h4>
             <table class="aa-totals-table">
               <tbody>
                 <tr>
                   <th>Tạm tính</th>
                   <td>100 VNĐ</td>
                 </tr>
                 <tr>
                   <th>VAT</th>
                   <td>0 VNĐ</td>
                 </tr>
                 <tr>
                   <th>Tổng cộng</th>
                   <td><strong>100 VNĐ</strong></td>
                 </tr>
               </tbody>
             </table>
             <a href="" class="aa-cart-view-btn">Thanh toán</a>
           </div>
         </div>
       </div>
     </div>
   </div>
  </div>
</section>
<!-- / Cart view section -->

<!--  end content-->