<%@ page pageEncoding="utf-8"%>
<!--  content -->
  <!-- catg header banner section -->
<section id="aa-catg-head-banner">
 <img src="/static/assets/images/checkout-banner.png" alt="banner thanh toán">
  <div class="aa-catg-head-banner-area">
   <div class="container">
    <div class="aa-catg-head-banner-content">
      <h2>Thanh toán</h2>
      <ol class="breadcrumb">
        <li><a href="index.html">Trang chủ</a></li>
        <li style="color:#fff">Thông tin thanh toán</li>
      </ol>
    </div>
   </div>
 </div>
</section>
<!-- / catg header banner section -->

<!-- Cart view section -->
<section id="checkout">
 <div class="container">
   <div class="row">
     <div class="col-md-12">
      <div class="checkout-area">
        <form action="" method="post">
          <div class="row">
            <div class="col-md-8">
              <div class="checkout-left">
                <div class="panel-group" >
              
                         <p> Bạn cần đăng nhập để thanh toán! Đăng nhập <a href="dangNhap.html" style="color: #754110">tại đây!</a></p>
              
                  <!-- Shipping Address -->
                  <div class="panel panel-default aa-checkout-billaddress">
                    <div class="panel-heading">
                      <h4 class="panel-title" style="color:#754110">
                          Địa chỉ giao hàng
                      </h4>
                    </div>
                    <div id="collapseFour">
                      <div class="panel-body">
                       <div class="row">
                          <div class="col-md-12">
                            <div class="aa-checkout-single-bill">
                              <input type="text" placeholder="Họ Tên*" required="required" name="transaction_name">
                            </div>                             
                          </div>
                        
                        </div> 
                       
                        <div class="row">
                          <div class="col-md-6">
                            <div class="aa-checkout-single-bill">
                              <input type="email" placeholder="Email*" required="required" name="transaction_email">
                            </div>                             
                          </div>
                          <div class="col-md-6">
                            <div class="aa-checkout-single-bill">
                              <input type="tel" placeholder="Số điện thoại*" required="required" name="transaction_phone">
                            </div>
                          </div>
                        </div> 
                        <div class="row">
                          <div class="col-md-12">
                            <div class="aa-checkout-single-bill">
                              <textarea cols="8" rows="3" required="required" placeholder="Địa chỉ*" name="transaction_address"></textarea>
                            </div>                             
                          </div>                            
                        </div>
                         <div class="row">
                          <div class="col-md-12">
                            <div class="aa-checkout-single-bill">
                              <textarea cols="8" rows="3" placeholder="Ghi chú" name="transaction_mess"></textarea>
                            </div>                             
                          </div>                            
                        </div>     
                        
                        <div class="row">
                          <div class="col-md-12">
                            <div class="aa-checkout-single-bill">
                                <input type="date" placeholder="Password" name="transaction_created" id="the-date" style="display: none">             
                            </div>                             
                          </div>                            
                        </div>             
                        
                        <div class="row" style="display: none">
                          <div class="col-md-12">
                            <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="userid_session" name="transaction_usersession" value="${username }"> 
                                
                               <input type="text" placeholder="totalmoney_session" name="transaction_amount" value="${sumprice}">         
                            </div>                             
                          </div>                            
                        </div>              
                      </div>
                    </div>
                  </div>
           
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="checkout-right">
                <h4>Thông tin đơn hàng</h4>
                <div class="aa-order-summary-area">
                  <table class="table table-responsive">
                    <thead>
                      <tr>
                        <th>Sản phẩm</th>
                        <th>Số tiền</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                      <tr>
                        <td>Hoa <strong> x  1</strong></td>
                        <td>100 VNĐ</td>
                      </tr>
                     
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Tạm tính</th>
                        <td>100 VNĐ</td>
                      </tr>
                       <tr>
                        <th>Thuế</th>
                        <td>100 VNĐ</td>
                      </tr>
                       <tr>
                        <th>Tổng cộng</th>
                        <td><strong>100 VNĐ</strong></td>
                      </tr>
                    </tfoot>
                  </table>
                </div>
                <h4>Hình thức thanh toán</h4>
                <div class="aa-payment-method">                    
                  <label for="cashdelivery"><input type="radio" id="cashdelivery" name="transaction_payment" checked value="0"> Thanh toán khi nhận hàng (COD) </label>
                  <label for="paypal"><input type="radio" id="paypal" name="transaction_payment" value="1" > Thanh toán bằng thể ngân hàng (ATM) </label>
                  <img src="assets/img/paypal.jpg" border="0" alt="PayPal Acceptance Mark">    
                  <input type="submit" value="Đặt hàng" class="aa-browse-btn">
                </div>
                 
                 <br>
                         <p style="color: red">Bạn đã đặt hàng thành công!</p>
              
              </div>
            </div>
          </div>
        </form>
       </div>
     </div>
   </div>
 </div>
</section>
<!-- / Cart view section -->
<!--  end content-->
 <script>
      var date = new Date();
      var day = date.getDate();
      var month = date.getMonth() + 1;
      var year = date.getFullYear();
      if (month < 10) month = "0" + month;
      if (day < 10) day = "0" + day;
      var today = year + "-" + month + "-" + day;
      document.getElementById('the-date').value = today;
</script>
