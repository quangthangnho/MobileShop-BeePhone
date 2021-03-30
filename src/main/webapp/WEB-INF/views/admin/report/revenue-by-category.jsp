<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<jsp:include page="index.jsp" flush="true" />
<div class="panel panel-success">
    <div class="panel-heading">
        <strong class="panel-title">BÁO CÁO DOANH THU THEO LOẠI</strong>
    </div>
	<table class="table table-hover table-condensed">
	    <thead class="bg-danger">
	        <tr>
	            <th>Loại</th>
	            <th>Tổng giá trị</th>
	            <th>Tổng SL</th>
	            <th>Giá Min</th>
	            <th>Giá Max</th>
	            <th>Giá TB</th>
	        </tr>
	    </thead>
	    <tbody>
	    <c:forEach var="item" items="${items}">
			<tr>
			    <td>${item.group}</td>
			    <td>$<fmt:formatNumber value="${item.sum}" minFractionDigits="2"/></td>
			    <td>${item.count}</td>
			    <td>$<fmt:formatNumber value="${item.min}" minFractionDigits="2"/></td>
			    <td>$<fmt:formatNumber value="${item.max}" minFractionDigits="2"/></td>
			    <td>$<fmt:formatNumber value="${item.avg}" minFractionDigits="2"/></td>
			</tr>
	    </c:forEach>
	    </tbody>
	</table>
</div>
<%@include file="revenue-by-category-chart.jsp"%>