<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<section id="cart-view">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-view-area">
					<div class="cart-view-table">

						<!--  -->

						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="panel-title">YOUR ORDER LIST</div>
							</div>
							<table class="table table-hover">
								<thead class="bg-danger">
									<tr>
										<th>Id</th>
										<th>Order Date</th>
										<th>Address</th>
										<th>Amount</th>
										<th>Status</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${orders}">
										<tr>
											<td>${item.id}</td>
											<td>${item.orderDate}</td>
											<td>${item.address}</td>
											<td>$<fmt:formatNumber value="${item.amount}"
													minFractionDigits="2" /></td>
											<td><c:choose>
													<c:when test="${item.status == 0}">
														<label class="label label-primary">Not Yet(chưa)</label>
													</c:when>
													<c:when test="${item.status == 1}">
														<label class="label label-info">In Progress(đang
															xử lý)</label>
													</c:when>
													<c:when test="${item.status == 2}">
														<label class="label label-success">Completed(đã xử
															lý xong)</label>
													</c:when>
													<c:when test="${item.status == -1}">
														<label class="label label-danger">Canceled(hủy)</label>
													</c:when>
												</c:choose></td>
											<td class="text-right"><c:if test="${item.status <= 0}">
													<a href="/order/cancel/${item.id}"
														class="btn btn-sm btn-danger"> <span
														class="glyphicon glyphicon-trash"></span>
													</a>
												</c:if> <a href="/order/detail/${item.id}"
												class="btn btn-sm btn-success"> <span
													class="glyphicon glyphicon-search"></span>
											</a></td>
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
