<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!-- các đơn hàng ,bieu do char -->

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
								<div class="panel-title">ĐÃ GIAO</div>
							</div>
							<table class="table table-hover">
								<thead class="bg-danger">
									<tr>
										<th>Ngày đặt</th>
										<th>Địa chỉ nhận hàng</th>
										<th>Tổng tiền</th>
										<th>Trạng thái</th>
										<th>Phương thức thanh toán</th>
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
														<label class="label label-primary" style="background-color:#43c801">CHỜ XÁC NHẬN</label>
													</c:when>
													<c:when test="${item.status == 1}">
														<label class="label label-info" style="background-color:#ffc801">CHỜ LẤY HÀNG</label>
													</c:when>
													<c:when test="${item.status == 2}">
														<label class="label label-success" style="background-color:#0072ab">ĐANG GIAO
														</label>
													</c:when>
													<c:when test="${item.status == 3}">
														<label class="label label-success" style="background-color:#6cf">ĐÃ GIAO
														</label>
													</c:when>
													<c:when test="${item.status == -1}">
														<label class="label label-danger" style="background-color:#c00">ĐÃ HỦY</label>
													</c:when>
												</c:choose>
											</td>
											<td><c:choose>
													<c:when test="${item.payment == 0}">
														<label class="label label-primary" style=" background-color:#004400">Giao tận nơi</label>
													</c:when>
													<c:when test="${item.payment == 1}">
														<label class="label label-primary" style=" background-color:#0000FF">Nhận tại cửa hàng</label>
													</c:when>
													<c:when test="${item.payment == 2}">
														<label class="label label-primary" style=" background-color:#9c27b0">Thanh toán khi nhận hàng</label>
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

						<jsp:include page="_report.jsp" />

						<jsp:include page="_report-chart.jsp" />

						<!--  -->

					</div>
				</div>
			</div>
		</div>
	</div>
</section>

