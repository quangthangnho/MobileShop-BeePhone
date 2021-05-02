<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<form:form action="admin/order/choxacnhan" modelAttribute="form">
<div id="">
	<a href="http://localhost:8086/admin/order/_thungrac" class="btn btn-primary" style="color: #333; background-color:#ec971f " role="button"><i class="fa fa-trash-o"></i> Thùng rác</a>
</div>

<div id="myDIV">
	<a href="/admin/order/index" class="btn btn-primary" style="color: #fff; background-color:#9c27b0 " role="button"><span class="fa fa-list"></span>  CẬP NHẬT</a>
	<a href="/admin/order/choxacnhan" class="btn btn-primary" style="color: #fff; background-color:#43c801 " role="button">CHỜ XÁC NHẬN (<span class=""></span>)</a>
	<a href="/admin/order/cholayhang" class="btn btn-default" style="color: #fff;background-color: #ffc801" role="button">CHỜ LẤY HÀNG (<span class="card-cholayhang"></span>)</a>
	<a href="/admin/order/danggiao" class="btn btn-secondary" style="color: #fff; background-color: #0072ab" role="button">ĐANG GIAO(<span class="card-dagiao"></span>)</a>
	<a href="/admin/order/dagiao" class="btn btn-info" style="color: #fff; background-color: #6cf" role="button">ĐÃ GIAO</a>
	<a href="/admin/order/dahuy" class="btn btn-info" style="color: #fff; background-color: #c00" role="button">ĐÃ HỦY</a>
</div>
</form:form>
