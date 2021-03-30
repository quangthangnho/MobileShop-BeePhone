<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<form:form action="${ctrl}/index" modelAttribute="form">
<div class="panel panel-danger">
    <div class="panel-heading">
        <div class="panel-title">${message}</div>
	</div>
	<div class="panel-body">
	    <div class="row">
	    	<div class="col-sm-12">
		    	<div class="row">
				    <div class="form-group col-sm-6">
				        <label>KHÁCH HÀNG</label>
				        <div class="form-control">${form.accountOrder.username}</div>
	            		<form:hidden path="id"/>
				    </div>
			
				    <div class="form-group col-sm-6">
				        <label>NGÀY ĐẶT</label>
				        <div class="form-control">${form.orderDate}</div>
				    </div>
		    	
		    	</div>
		    </div>
		    
		    <div class="col-sm-12">
		    	<div class="row">
			
				    <div class="form-group col-sm-6">
				        <label>Số điện thoại</label>
				        <div class="form-control">${form.phone}</div>
				    </div>
		    	
		    	</div>
		    </div>
		    
		    <div class="col-sm-12">
		    	<div class="row">
		    		
				    <div class="form-group col-sm-6">
				        <label>TỔNG TIỀN</label>
				       <div class="form-control">
			            	<fmt:formatNumber value="${form.amount}" maxFractionDigits="2"/> VNĐ
			            </div>
			            <form:hidden path="amount"/>
				    </div>
				    
				    <div class="form-group col-sm-6">
				        <label>TRẠNG THÁI</label>
				        <form:select path="status" class="form-control">
			            	<form:option value="0">CHƯA HOÀN THÀNH</form:option>
			            	<form:option value="1">TRONG TIẾN TRÌNH</form:option>
			            	<form:option value="2">ĐÃ HOÀN THÀNH</form:option>
			            	<form:option value="-1">ĐÃ HỦY</form:option>
			            </form:select>
				    </div>
		    	
		    	</div>
		    </div>
		    
		    <div class="col-sm-12">
		    	<div class="row">
				    <div class="form-group col-sm-12">
				        <label>ĐỊA CHỈ GIAO HÀNG</label>
				        <form:textarea path="address" class="form-control" rows="3"/>
				    </div>
		    	</div>
		    </div>
		      
		</div>
	</div>
	
	
	<div class="panel-heading">
        <div class="panel-title">CHI TIẾT HÓA ĐƠN</div>
    </div>
	<table class="table table-hover">
	    <thead class="bg-danger">
	        <tr>
				<th>ID</th>
				<th>TÊN SẢN PHẨM</th>
				<th>ĐƠN GIÁ</th>
				<th>SỐ LƯỢNG</th>
				<th>TỔNG TIỀN</th>
			</tr>
	    </thead>
	    <tbody>
	    <c:forEach var="item" items="${form.orderDetails}">
			<tr>
			    <td>${item.productOrderDetail.id}</td>
			    <td>${item.productOrderDetail.name}</td>
			    <td>
			    	<fmt:formatNumber value="${item.unitPrice}" minFractionDigits="0"/> VNĐ
			    </td>
			    <td>${item.quatity}</td>
			    <td>
			    	<fmt:formatNumber value="${(item.unitPrice*item.quatity *100)/100 * (100 - item.productOrderDetail.discount)/100}" minFractionDigits="0"/> VNĐ
			    </td>
			</tr>
		</c:forEach>
	    </tbody>
	</table>
    <div class="panel-footer">
	    <form:button formaction="${ctrl}/update" class="btn btn-primary" title="Update" disabled="${empty form.id}">
	    	<i class="fa fa-check-circle"></i> Update
	    </form:button>
	    <form:button formaction="${ctrl}/delete" class="btn btn-danger" title="Delete" disabled="${empty form.id}">
	    	<i class="fa fa-trash-o"></i> Delete
	    </form:button>
	    <a href="${ctrl}/index" class="btn btn-info" title="Reset">
	    	<i class="fa fa-refresh"></i> Reset
	    </a>
    </div>
	
</div>
</form:form>