<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<h4 class="card-title">ĐANG GIAO</h4>
<div><jsp:include page="menu.jsp" flush="true" /></div>
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
				<th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="item" items="${listdanggiao}">
				<tr>
					<td>${item.id}</td>
					<td>${item.orderDate}</td>
					<td>${item.address}</td>
					<td><fmt:formatNumber value="${item.amount}" minFractionDigits="0"/> VNĐ</td>
					<td><c:choose>
						<c:when test="${item.status == 0}">
							<label class="label label-primary" style=" background-color:#43c801">CHỜ XÁC NHẬN</label>
						</c:when>
						<c:when test="${item.status == 1}">
							<label class="label label-info" style=" background-color: #ffc801" >CHỜ LẤY HÀNG</label>
						</c:when>
						<c:when test="${item.status == 2}">
							<label class="label label-success" style=" background-color: #0072ab">ĐANG GIAO
							</label>
						</c:when>
						<c:when test="${item.status == 3}">
							<label class="label label-success" style=" background-color: #6cf">ĐÃ GIAO
							</label>
						</c:when>
						<c:when test="${item.status == -1}">
							<label class="label label-danger" style=" background-color: #c00">ĐÃ HỦY</label>
						</c:when>
					</c:choose></td>
					<td class="td-actions text-right">
						<a href="/admin/order/edit/${item.id}" class="btn btn-sm btn-warning" title="Detail">
			    			<i class="fa fa-pencil"></i>
			    		</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

 