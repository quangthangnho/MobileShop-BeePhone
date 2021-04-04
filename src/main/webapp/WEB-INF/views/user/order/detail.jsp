<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
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
							            <div class="form-control"><fmt:formatNumber value="${order.amount}" minFractionDigits="0"/> VNĐ</div>
							          
							        </div>
							        <div class="form-group col-sm-6">
							            <label>Trạng thái</label>
							            <div class="form-control">
							           <c:choose>
									    	<c:when test="${order.status == 0}"><label class="label label-primary">Chưa hoàn thành</label></c:when>
									    	<c:when test="${order.status == 1}"><label class="label label-info">Đang xử lý</label></c:when>
									    	<c:when test="${order.status == 2}"><label class="label label-success">Đã hoàn thành</label></c:when>
									    	<c:when test="${order.status == -1}"><label class="label label-danger">Hủy</label></c:when>
									 </c:choose>
							            </div>
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
						        <div class="panel-title">ĐƠN HÀNG</div>
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
				
									    <td><img src="/static/assets-a/assets/images/products/${item.productOrderDetail.image}" style="width:60px; height: 60px;"> ${item.productOrderDetail.name}</td>
									    <td> 
									    	<span class="cart-item__unit-price--before"><fmt:formatNumber value="${item.unitPrice}" minFractionDigits="0"/> VNĐ</span> 
									    	<fmt:formatNumber value="${(item.unitPrice* 100)/100 * (100 - item.productOrderDetail.discount)/100}" minFractionDigits="0"/> VNĐ
									    </td>
									    <td>${item.quatity}</td>
									    <td><fmt:formatNumber value="${Math.round(item.unitPrice*item.quatity* 100)/100 * (100 - item.productOrderDetail.discount)/100}" minFractionDigits="0"/> VNĐ</td>
						
									</tr>
							    </c:forEach>
							    </tbody>
							</table>
							<div class="panel-footer text-right">
								<c:if test="${order.status <= 0}">
							        <a href="/order/cancel/${order.id}" class="btn btn-danger">
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
