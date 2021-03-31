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

						<!-- product information of the order -->
						
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
						</div>
						<!-- / product information of the order-->

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
							</div>
						<!-- / Cart Total view -->
						
						<!--  -->
<div class="abc" style= "margin-top:18px">
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
	            <form:hidden  path="accountOrder.id" class="form-control" readonly="true"/>
	    		<form:hidden path="amount" class="form-control" readonly="true"/>
	    		
	        <div class="form-group col-sm-6">
	            <label>Tên tài khoản</label>
	            <form:input path="accountOrder.username" class="form-control" readonly="true"/>
	        </div>  
	        <div class="form-group col-sm-6">
	            <label>Ngày đặt</label>
	            <form:input path="orderDate" class="form-control" readonly="true"/>
	            
	        </div>
	        <div class="form-group col-sm-6">
				<label>Họ và tên</label>
				<form:input path="receiver" class="form-control"/>
			</div>
	        <div class="form-group col-sm-6">
				<label>Số điện thoại</label>
				<form:input path="phone" class="form-control" />
			</div>
	        <div class="form-group col-sm-12">
	            <label>Địa chỉ nhận hàng</label>
	            <form:textarea path="address" class="form-control" rows="3"/>
	        </div>
    </div>
    <div class="panel-footer text-right">
    	<!-- Order Details -->
    	<input name="details" type="hidden"> <!-- tất cả giỏ hàng nằm trong 1 trường ẩn details-->
        <button class="btn btn-primary">
        	<span class="glyphicon glyphicon-user"></span>  ĐẶT HÀNG
        </button>
    </div>
</div>
</form:form>

</div>
<!--  -->
						
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Cart view section -->



<script>
	$(function(){
		cart.show_all();
		$("[name=amount]").val(cart.amount);
		$("[name=details]").val(cart.details);
	})
</script>