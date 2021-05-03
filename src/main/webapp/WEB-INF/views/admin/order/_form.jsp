<%@page import="com.sun.mail.imap.protocol.Item"%>
<%@page import="com.poly.dao.OrderDetailDAO"%>
<%@page import="com.poly.dao.ProductDAO"%>
<%@page import="com.poly.dao.OrderDAO"%>
<%@page import="com.poly.entity.OrderDetailEntity"%>

<%@page import="com.poly.entity.ProductEntity"%>
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
	    
	    	<div class="form-group col-sm-4">
	      <div class="form-control">ID: ${form.id}</div>
	            <form:hidden path="id"/>
	
	        </div>
	        
	         <div class="form-group col-sm-4">
	          
	             <form:hidden path="accountOrder.id"/>
	        </div> 
	        
	    	<div class="col-sm-12">
		    	<div class="row">
				    <div class="form-group col-sm-6">
				        <label>KHÁCH HÀNG</label>
				        <div class="form-control">${form.accountOrder.username}</div>
				    </div>
			
				    <div class="form-group col-sm-6">
				        <label>NGÀY ĐẶT</label>
				        <div class="form-control"><fmt:formatDate value="${form.orderDate}" pattern="dd-MM-yyyy" /></div>
				        <form:hidden path="orderDate"/>
				    </div>
		    	
		    	</div>
		    </div>
		    
		    <div class="col-sm-12">
		    	<div class="row">
			
				    <div class="form-group col-sm-6">
				        <label>SỐ ĐIỆN THOẠI</label>
				       	 <div class="form-control">${form.phone}</div>
				       	 <form:hidden path="phone"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>NGƯỜI NHẬN</label>
				       	 <div class="form-control">${form.receiver}</div>
				       	 <form:hidden path="receiver"/>
				    </div>
		    	
		    	</div>
		    </div>
		    
		    <div class="col-sm-12">
		    	<div class="row">
		    		
				    <div class="form-group col-sm-6">
				        <label>TỔNG TIỀN</label>
				       <div class="form-control">
			            	<fmt:formatNumber value="${form.amount}" minFractionDigits="0"/> &#8363;
			            </div>
			            <form:hidden path="amount"/>
				    </div>
				    
				    <div class="form-group col-sm-6">
				        <label>TRẠNG THÁI</label>
				        <i class="fa fa-sort-desc"></i>
				        <form:select path="status" class="form-control">
			            	<form:option value="0">CHỜ XÁC NHẬN</form:option>
			            	<form:option value="1">CHỜ LẤY HÀNG</form:option>
			            	<form:option value="2">ĐANG GIAO</form:option>
			            	<form:option value="3">ĐÃ GIAO</form:option>
			            	<form:option value="-1">ĐÃ HỦY</form:option>
			            </form:select>
				    </div>
		    	
		    	</div>
		    </div>
		    <div class="col-sm-12">
		    	<div class="row">
				    <div class="form-group col-sm-12">
				        <label>PHƯƠNG THỨC THANH TOÁN</label>
				          <c:choose>
				            	<c:when test="${form.payment == 0}"><label class="label label-primary"  style=" background-color:#004400">Giao tận nơi</label></c:when>
						    	<c:when test="${form.payment == 1}"><label class="label label-primary" style=" background-color:#0000FF">Nhận tại cửa hàng</label></c:when>
						    	<c:when test="${form.payment == 2}"><label class="label label-primary" style=" background-color:#9c27b0">Thanh toán khi nhận hàng</label></c:when>
				           </c:choose>
				    </div>
				    <form:hidden path="payment"/>
		    	</div>
		    </div>
		    
		    <div class="col-sm-12">
		    	<div class="row">
				    <div class="form-group col-sm-12">
				        <label>ĐỊA CHỈ GIAO HÀNG</label>
				        <form:textarea path="address" onkeypress="return /[0-9a-zA-Z -]/i.test(event.key)" class="form-control" rows="3"/>
				    </div>
		    	</div>
		    </div>
		      
		</div>
	</div>
	
	
	<div class="panel-heading">
        <div class="panel-title">CHI TIẾT ĐƠN HÀNG</div>
    </div>
	<table class="table table-hover">
	    <thead class="bg-danger">
	        <tr>
				<th>ID</th>
				<th>SẢN PHẨM</th>
				<th>ĐƠN GIÁ</th>
				<th>SỐ LƯỢNG</th>
				<th>TỔNG TIỀN</th>
			</tr>
	    </thead>
	    <tbody>
	    <c:forEach var="item" items="${form.orderDetails}">
			<tr>
			    <td>${item.productOrderDetail.id}</td>
			    <td><img src="/static/images/products/${item.productOrderDetail.image}" style="width:60px; height: 60px;"> ${item.productOrderDetail.name}</td>
			    <td>
			    	<fmt:formatNumber value="${item.unitPrice}" minFractionDigits="0"/> &#8363;
			    </td>
			    <td>${item.quatity}</td>
			    <td>
			    	<fmt:formatNumber value="${(item.unitPrice*item.quatity *100)/100 * (100 - item.productOrderDetail.discount)/100}" minFractionDigits="0"/> &#8363;
			    </td>
			</tr>
			
		</c:forEach>
	    </tbody>
	</table>
	
    <div class="panel-footer">

	    <form:button formaction="${ctrl}/update" name="_type" value="UPDATE" class="btn btn-primary" title="Cập nhật" disabled="${empty form.id}">
	    	<i class="fa fa-check-circle"></i> Cập nhật
	    </form:button>
		
		
	    <form:button formaction="${ctrl}/delete" class="btn btn-danger" title="Xóa" disabled="${empty form.id}">
	    	<i class="fa fa-trash-o"></i> Xóa
	    </form:button>
	    <a href="${ctrl}/index" class="btn btn-info" title="Tải lại">
	    	<i class="fa fa-refresh"></i> Tải lại
	    </a>
	    
    </div>
	
</div>
</form:form>

<style>
label.label  {
    color: #fff;
}
</style>