<%@ page pageEncoding="utf-8"%>

<!-- Cart view section -->
<section id="cart-view">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-view-area">
					<div class="cart-view-table">
				
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>Bỏ chọn</th>
											<th>Sản phẩm</th>
											<th>Đơn Giá</th>
											<th>Số Tiền</th>
											<th>Thành Tiền</th>
					
										</tr>
									</thead>
									<tbody class="cart-items">
									</tbody>
									
								</table>
								<input onclick="cart.update(${item.id})" class="aa-cart-view-btn" type="submit" value="Cập nhật giỏ hàng">
								<div class="panel-footer">
									<a onclick="cart.clear()" href="" class="btn btn-danger"> <span
										class="glyphicon glyphicon-trash"></span> Clear
									</a>
								</div>
							</div>
					
						<!-- Cart Total view -->
						<div class="cart-view-total">
							<h4>Tổng tiền</h4>
							<table class="aa-totals-table">
								<tbody>
									<tr>
										<th>Tạm tính</th>
										<td><strong class="aa-cartbox-total-price"></strong><strong> VNĐ</strong></td>
									</tr>
									<tr>
										<th>VAT</th>
										<td>0</td>
									</tr>
									<tr>
										<th>Tổng cộng</th>
										<td><strong class="aa-cartbox-total-price"></strong><strong> VNĐ</strong></td>
									</tr>
								</tbody>
							</table>
							<a href="/order/checkout" class="aa-cart-view-btn">Thanh toán</a>
							<button
								onclick="document.getElementById('id01').style.display='block'"
								style="width: auto;" class="color">Thanh toán (thêm địa chỉ mới)</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Cart view section -->

<!-- thông số kỹ thuật -->

					<div id="id01" class="modal">

						<form:form action="/order/checkout" modelAttribute="form">
							method="post">
							<div class="imgcontainer">
								<span
									onclick="document.getElementById('id01').style.display='none'"
									class="close" title="Close Modal">&times;</span>
							</div>

							<div class="container bscroll">
								<ul class="parameterfull">
									<li data-id="29" data-index="1"><label>Thêm 1 Địa Chỉ Mới</label></li>

									<li >
      									<input type="text" id="name" name="name" placeholder="Họ và tên">
      									<input type="text" id="phone" name="phone" placeholder="Số điện thoại">
      									<input type="text" id=address name="address" placeholder="Địa chỉ">
      									<div>
      										<input name="details" type="hidden">
      										<a href="" class="aa-cart-view-btn">Hoàn thành</a>
      									</div>
      									
									</li> 
									
									
								</ul>
							</div>

							<div class="container">
								<button type="button"
									onclick="document.getElementById('id01').style.display='none'"
									class="cancelbtn">Cancel</button>

							</div>
						</form:form>
					</div>


					<!-- thông số kỹ thuật -->



<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}



input[type=submit]:hover {
  background-color: #45a049;
}
</style>

<script>
$(function(){
	cart.show_all();
});


</script>