<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<h4 class="card-title">CHỜ LẤY HÀNG</h4>
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
			<c:forEach var="item" items="${listcholayhang}">
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
					<td class="td-actions text-right">
						<a href="/admin/order/edit/${item.id}" class="btn btn-sm btn-warning" title="Detail">
			    			<i class="fa fa-pencil"></i>
			    		</a>
			    		
			    		<button
						onclick="document.getElementById('id01').style.display='block'" style="width: auto;" class="color">Chi tiết
						<a href="/admin/order/edit/${item.id}"></a>
						</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>


	<!-- thông số kỹ thuật -->

				<h2>Modal Login Form</h2>

<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>

<div id="id01" class="modal">
  
  <form:form action="${ctrl}/index" modelAttribute="form">
<div class="panel panel-danger">
    <div class="panel-heading">
        <div class="panel-title">${message}</div>
	</div>
	<div class="panel-body">
	    <div class="row">
	    
	    	<div class="form-group col-sm-4">
	      
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
				        <label>Số điện thoại</label>
				       	 <div class="form-control">${form.phone}</div>
				       	 <form:hidden path="phone"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>Người nhận</label>
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
			            	<fmt:formatNumber value="${form.amount}" minFractionDigits="0"/> VNĐ
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
			            	<form:option value="2">ĐÃ GIAO</form:option>
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
    <c:if test="item.status <= 0">
	    <form:button formaction="${ctrl}/update" class="btn btn-primary" title="Update" disabled="${empty form.id}">
	    	<i class="fa fa-check-circle"></i> Cập nhập
	    </form:button>
	 </c:if>
	    <form:button formaction="${ctrl}/delete" class="btn btn-danger" title="Delete" disabled="${empty form.id}">
	    	<i class="fa fa-trash-o"></i> Xóa
	    </form:button>
	    <a href="${ctrl}/index" class="btn btn-info" title="Reset">
	    	<i class="fa fa-refresh"></i> Tải lại
	    </a>
    </div>
	
</div>
</form:form>
</div>
					<!-- thông số kỹ thuật -->

 
 <style>
<!--
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
 /* width: 80%;  Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}

-->
</style>
 <script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>