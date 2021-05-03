<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section id="cart-view">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-view-area">
					<div class="cart-view-table">
						
						<!--  -->
						<div class="panel panel-primary">
						    <div class="panel-heading">
						        <div class="panel-title">
						        	<span class="glyphicon glyphicon-th-list"></span> THÔNG TIN ĐẶT HÀNG
						        </div>
						    </div>
						    <div class="panel-body">
						    	<div class="row">
							        <div class="form-group col-sm-6">
							            <label>Tên tài khoản</label>
							            <div class="form-control">${order.accountOrder.username}</div>
							        </div>  
							        <div class="form-group col-sm-6">
							            <label>Ngày đặt</label>
							            <div class="form-control">${order.orderDate}</div>
							        </div>
							    </div>  
							    <div class="row">
							    	<div class="form-group col-sm-6">
							            <label>Họ và tên</label>
							            <div class="form-control">${order.receiver}</div>
							        </div>
							        
							        <div class="form-group col-sm-6">
							            <label>Số điện thoại</label>
							            <div class="form-control">${order.phone}</div>
							        </div>
							        
							        <div class="form-group col-sm-6">
							            <label>Tổng tiền</label>
							            <div class="form-control"><fmt:formatNumber value="${order.amount}" minFractionDigits="0"/> &#8363;</div>
							          
							        </div>
							        <div class="form-group col-sm-6">
							            <label>Trạng thái</label>
							            <div class="form-control">
							            
							           <c:choose>
									    	<c:when test="${order.status == 0}"><label class="label label-primary" style="background-color:#43c801">CHỜ XÁC NHẬN</label></c:when>
									    	<c:when test="${order.status == 1}"><label class="label label-info" style="background-color:#ffc801">CHỜ LẤY HÀNG</label></c:when>
									    	<c:when test="${order.status == 2}"><label class="label label-success" style="background-color:#0072ab">ĐANG GIAO</label></c:when>
									    	<c:when test="${order.status == 3}"><label class="label label-success" style="background-color:#6cf">ĐÃ GIAO</label></c:when>
									    	<c:when test="${order.status == -1}"><label class="label label-danger" style="background-color:#c00">ĐÃ HỦY</label></c:when>
									 </c:choose>
							            </div>
							        </div>
							    </div>
							    <div class="row">
							        <div class="form-group col-sm-12">
							    
							            <label>Phương thức thanh toán</label>
							            
							            <c:choose>
							            	<c:when test="${order.payment == 0}"><label class="label label-primary" style=" background-color:#004400">Giao tận nơi</label></c:when>
									    	<c:when test="${order.payment == 1}"><label class="label label-primary" style=" background-color:#0000FF">Nhận tại cửa hàng</label></c:when>
									    	<c:when test="${order.payment == 2}"><label class="label label-primary">Thanh toán khi nhận hàng</label></c:when>
							            </c:choose>
							        
							        </div>
							    </div>
							    <div class="row">
							        <div class="form-group col-sm-12">
							            <label>Địa chỉ nhận hàng</label>
							            <textarea class="form-control" id="" name="" rows="3" cols="128" disabled>${order.address}</textarea>
							        </div>
							    </div>
						    </div>

						    <div class="panel-heading">
						        <div class="panel-title">CHI TIẾT ĐƠN HÀNG</div>
						    </div>
							<table class="table table-hover">
							    <thead class="bg-danger">
							        <tr>
							    
							            <th>Sản phẩm</th>
							            <th>Đơn giá</th>
							            <th>Số lượng</th>
							            <th>Thành tiền</th>
							        </tr>
							    </thead>
							    <tbody>
							    <c:forEach var="item" items="${order.orderDetails}">
									<tr>
				
									    <td><img src="/static/images/products/${item.productOrderDetail.image}" style="width:60px; height: 60px;"> ${item.productOrderDetail.name}</td>
									    <td> 
									    	<span class="cart-item-unit-price-before"><fmt:formatNumber value="${item.unitPrice}" minFractionDigits="0"/> &#8363;</span> 
									    	<fmt:formatNumber value="${(item.unitPrice* 100)/100 * (100 - item.productOrderDetail.discount)/100}" minFractionDigits="0"/> &#8363;
									    </td>
									    <td>${item.quatity}</td>
									    <td><fmt:formatNumber value="${Math.round(item.unitPrice*item.quatity* 100)/100 * (100 - item.productOrderDetail.discount)/100}" minFractionDigits="0"/> &#8363;</td>
						
									</tr>
							    </c:forEach>
							    </tbody>
							</table>
							<div class="panel-footer text-right">
								<c:if test="${order.status <= 0}">
								
									<input  name="details" type="hidden">
							        <a href="/order/cancel/${order.id}"  class="btn btn-danger">
							        	<span class="glyphicon glyphicon-trash"></span> Hủy đơn hàng
							        </a>
							     
						        </c:if>
						        <a href="/order/list" class="btn btn-info">
						        	<span class="glyphicon glyphicon-list"></span> Danh sách đơn hàng của bạn
						        </a>
						    </div>
						</div>
						<!--  -->
						
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
