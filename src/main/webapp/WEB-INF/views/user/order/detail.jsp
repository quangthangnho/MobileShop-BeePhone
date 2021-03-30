<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
							            <label>Order Id</label>
							            <div class="form-control">${order.id}</div>
							        </div>   
							        <div class="form-group col-sm-6">
							            <label>ID tài khoản</label>
							            <div class="form-control">${order.accountOrder.id}</div>
							        </div>  
							        <div class="form-group col-sm-6">
							            <label>Tên tài khoản</label>
							            <div class="form-control">${order.accountOrder.username}</div>
							        </div>  
							    </div>  
							    <div class="row">
							        <div class="form-group col-sm-6">
							            <label>Order Date</label>
							            <div class="form-control">${order.orderDate}</div>
							        </div>
							        <div class="form-group col-sm-6">
							            <label>Tổng tiền</label>
							            <div class="form-control">${order.amount} VNĐ</div>
							        </div>
							    </div>
							    <div class="row">
							    	<div class="form-group col-sm-6">
							            <label>Order Status</label>
							            <div class="form-control">
							           <c:choose>
									    	<c:when test="${order.status == 0}"><label class="label label-primary">Not Yet(chưa)</label></c:when>
									    	<c:when test="${order.status == 1}"><label class="label label-info">In Progress(đang xử lý)</label></c:when>
									    	<c:when test="${order.status == 2}"><label class="label label-success">Completed(đã xử lý xong)</label></c:when>
									    	<c:when test="${order.status == -1}"><label class="label label-danger">Canceled(hủy)</label></c:when>
									 </c:choose>
							            </div>
							        </div>
							        <div class="form-group col-sm-6">
							            <label>Ship Address</label>
							            <div class="form-control">${order.address}</div>
							        </div>
							    </div>
						    </div>

						    <div class="panel-heading">
						        <div class="panel-title">ĐƠN HÀNG</div>
						    </div>
							<table class="table table-hover">
							    <thead class="bg-danger">
							        <tr>
							            <th>Id</th>
							            <th>Name</th>
							            <th>Unit Price</th>
							            <th>Quantity</th>
							            <th>Amount</th>
							        </tr>
							    </thead>
							    <tbody>
							    <c:forEach var="item" items="${order.orderDetails}">
									<tr>
									    <td>${item.productOrderDetail.id}</td>
									    <td>${item.productOrderDetail.name}</td>
									    <td><fmt:formatNumber value="${item.unitPrice}" minFractionDigits="0"/> VNĐ</td>
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
