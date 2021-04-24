<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>


<h4 class="card-title">THÔNG TIN ĐẶT HÀNG</h4>
<div class="material-datatables">
	<table id="datatables"
		class="table table-striped table-no-bordered table-hover"
		cellspacing="0" width="100%" style="width: 100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>NGÀY ĐẶT HÀNG</th>
				<th>ĐỊA CHỈ</th>
				<th>SỐ TIỀN</th>
				<th>TRẠNG THÁI</th>
				<th>THANH TOÁN</th>
				<th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
			</tr>
		</thead>

		<tbody id="myTableallOrder">
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.id}</td>
					<td>${item.orderDate}</td>
					<td>${item.address}</td>
					<td><fmt:formatNumber value="${item.amount}" minFractionDigits="0"/> VNĐ</td>
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
					
					<td><c:choose>
						<c:when test="${item.payment == 0}">
							<label class="label label-primary">Ví AirPay</label>
						</c:when>
						<c:when test="${item.payment == 1}">
							<label class="label label-primary">Thẻ Tín dụng/Ghi nợ</label>
						</c:when>
						<c:when test="${item.payment == 2}">
							<label class="label label-primary">Thanh toán khi nhận hàng
							</label>
						</c:when>
					</c:choose></td>
					<td class="td-actions text-right">
						<a href="${ctrl}/edit/${item.id}" class="btn btn-sm btn-warning" title="Chi tiết">
			    			<i class="fa fa-pencil"></i>
			    		</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

 