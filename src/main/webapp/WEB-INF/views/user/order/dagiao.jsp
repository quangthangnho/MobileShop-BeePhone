<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>


<section id="cart-view">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-view-area">
					<div class="cart-view-table">

						<!--  -->
						<jsp:include page="index.jsp"></jsp:include>
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="panel-title">Đã giao</div>
							</div>
							Thông báo: <p style="color: red">${message}${param.message}</p>
							<table class="table table-hover">
								<thead class="bg-danger">
									<tr>
										<th>Ngày đặt</th>
										<th>Địa chỉ nhận hàng</th>
										<th>Tổng tiền</th>
										<th>Trạng thái</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${orders}">
										<tr>
											<td>${item.orderDate}</td>
											<td>${item.address}</td>
											<td><fmt:formatNumber value="${item.amount}" minFractionDigits="0" /> VNĐ
											</td>
													
											<td><c:choose>
													<c:when test="${item.status == 0}">
														<label class="label label-primary">CHỜ XÁC NHẬN</label>
													</c:when>
													<c:when test="${item.status == 1}">
														<label class="label label-info">CHỜ LẤY HÀNG</label>
													</c:when>
													<c:when test="${item.status == 2}">
														<label class="label label-success">ĐANG GIAO
														</label>
													</c:when>
													<c:when test="${item.status == 3}">
														<label class="label label-success">ĐÃ GIAO
														</label>
													</c:when>
													<c:when test="${item.status == -1}">
														<label class="label label-danger">ĐÃ HỦY</label>
													</c:when>
												</c:choose></td>
												
											<td class="text-right">
												
												<c:if test="${item.status <= 0}">
													<a href="/order/cancel/${item.id}"
														class="btn btn-sm btn-danger"> <span
														class="glyphicon glyphicon-trash"></span>
													</a>
													
												</c:if> 
												<a href="/order/detail/${item.id}"
												class="btn btn-sm btn-success"> <span
													class="glyphicon glyphicon-search"></span>
												</a>
												
											</td>
												
											
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!--  -->

					</div>
				</div>
			</div>
		</div>
	</div>
</section>

