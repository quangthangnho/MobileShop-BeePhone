<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>


<!-- Cart view section -->
<section id="cart-view">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-view-area">
					<div class="cart-view-table">
							
							<!-- product infomation of the order -->
							<a href="/product/list" style="color: red"> << Tiếp tục mua hàng</a>
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>Bỏ chọn</th>
											<th>Sản phẩm</th>
											<th>Đơn Giá</th>
											<th>Số Lượng</th>
											<th>Thành Tiền</th>
					
										</tr>
									</thead>
									<tbody class="cart-items">
									</tbody>
								</table>
								<input onclick="cart.update(${item.id})" class="aa-cart-view-btn" type="submit" title="Cập nhật giỏ hàng" value="Cập nhật giỏ hàng">
								<div class="">
									<a onclick="cart.clear()" href="" class="btn btn-danger" title="Xóa tất cả"> <span
										class="glyphicon glyphicon-trash"></span> Xóa tất cả
									</a>
								</div>
							</div>
							<!-- / product infomation of the order-->
					
						<!-- Cart Total view  -->
						<div class="cart-view-total">
							<h4>Tổng tiền</h4>
							<table class="aa-totals-table">
								<tbody>
									<tr>
										<th>Tổng tiền hàng</th>
										<td><strong class="aa-cartbox-total-price"></strong><strong> VNĐ</strong></td>
									</tr>
									<tr>
										<th>Phí vận chuyển</th>
										<td>0</td>
									</tr>
									<tr>
										<th>Tổng thanh toán</th>
										<td><strong class="aa-cartbox-total-price"></strong><strong> VNĐ</strong></td>
									</tr>
								</tbody>
							</table>
							<a href="/order/checkout" class="aa-cart-view-btn" title="Thanh toán">Thanh toán</a>
						</div>
						<!-- / Cart Total view-->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Cart view section -->

<style>

</style>

<script>
$(function(){
	cart.show_all();
});


</script>