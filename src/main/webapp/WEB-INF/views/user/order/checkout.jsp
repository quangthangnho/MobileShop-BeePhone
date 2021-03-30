<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
							<input onclick="cart.update(${item.id})" class="aa-cart-view-btn"
								type="submit" value="Cập nhật giỏ hàng">
							<div class="panel-footer">
								<a onclick="cart.clear()" href="" class="btn btn-danger"> <span
									class="glyphicon glyphicon-trash"></span> Clear
								</a>
							</div>
						</div>

						<!-- Cart Total view -->
						<form:form action="/order/checkout" modelAttribute="form">
							<div class="cart-view-total">
								<h4>Tổng tiền</h4>
								<table class="aa-totals-table">
									<tbody>
										<tr>
											<th>Tạm tính</th>
											<td><strong class="aa-cartbox-total-price"></strong><strong>
													VNĐ</strong></td>
										</tr>
										<tr>
											<th>VAT</th>
											<td>0</td>
										</tr>
										<tr>
											<th>Tổng cộng</th>
											<td><strong class="aa-cartbox-total-price"></strong><strong>
													VNĐ</strong></td>
										</tr>
									</tbody>
								</table>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<section id="cart-view">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-view-area">
					<div class="cart-view-table">
						<div class="table-responsive">
						
							<form:form action="/order/checkout" modelAttribute="form">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<div class="panel-title ">
											<em class="pull-right"> <span
												class="glyphicon glyphicon-warning-sign"></span> ${message}
											</em> <span class="glyphicon glyphicon-th-list"></span> THÔNG TIN KHÁCH HÀNG
										</div>
									</div>
									<div class="panel-body">
										<div class="form-group col-sm-4">
											<label>ID</label>
											<form:input path="accountOrder.id" class="form-control" readonly="true" />
										</div>
										<div class="form-group col-sm-4">
											<label>Tài khoản</label>
											<form:input path="accountOrder.username" class="form-control" readonly="true" />
										</div>
										<div class="form-group col-sm-4">
											<label>Họ và tên</label>
											<form:input path="receiver" class="form-control"/>
										</div>
										<div class="form-group col-sm-4">
											<label>Số điện thoại</label>
											<form:input path="phone" class="form-control" />
										</div>
										<div class="form-group col-sm-4">
											<label>Order Date</label>
											<form:input path="orderDate" class="form-control" readonly="true" />
										</div>
										<div class="form-group col-sm-4">
											<label>Tổng tiền</label>
											<div class="input-group">
												<label class="input-group-addon">VNĐ</label>
												<form:input path="amount" class="form-control" readonly="true" />
											</div>
										</div>
										
										<div class="form-group col-sm-12">
											<label>Ship Address</label>
											<form:textarea path="address" class="form-control" rows="3" />
										</div>
									</div>
									<div class="panel-footer text-right">
										<!-- Order Details -->
										<input name="details" type="hidden">
										<button class="aa-cart-view-btn">
											<span class="glyphicon glyphicon-user"></span> ĐẶT HÀNG
										</button>
									</div>
								</div>
							</form:form>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



<script>
	$(function(){
		cart.show_all();
		$("[name=amount]").val(cart.amount);
		$("[name=details]").val(cart.details);
	})
</script>