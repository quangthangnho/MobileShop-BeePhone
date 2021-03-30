<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<div class="panel panel-success">
    <div class="panel-heading">
        <div class="panel-title">BÁO CÁO CÁC MẶT HÀNG ĐÃ MUA CỦA BẠN</div>
    </div>
	<table class="table table-hover">
	    <thead class="bg-danger">
	        <tr>
	            <th>Product</th>
	            <th>Total Amount</th>
	            <th>Total Quantity</th>
	            <th>Min Price</th>
	            <th>Max Price</th>
	            <th>Average Price</th>
	        </tr>
	    </thead>
	    <tbody>
	    <c:forEach var="repo" items="${reports}">
			<tr>
			    <td>${repo.group}</td>
			    <td>$<fmt:formatNumber value="${repo.sum}" minFractionDigits="2"/></td>
			    <td>${repo.count}</td>
			    <td>$<fmt:formatNumber value="${repo.min}" minFractionDigits="2"/></td>
			    <td>$<fmt:formatNumber value="${repo.max}" minFractionDigits="2"/></td>
			    <td>$<fmt:formatNumber value="${repo.avg}" minFractionDigits="2"/></td>
			</tr>
	    </c:forEach>
	    </tbody>
	</table>
</div>