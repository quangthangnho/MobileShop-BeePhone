<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div>
	<div class="aa-product-details-bottom">
	<ul class="nav nav-tabs aa-products-tab color" id="" style="background: #6600cc">
		<li class="">
			<a href="/admin/order/choxacnhan" data-toggle="" class="">CHỜ XÁC NHẬN ()</a>
		</li>	
		<li>
			<a href="/admin/order/cholayhang" data-toggle="">CHỜ LẤY HÀNG</a>
		</li>
		
		<li>
			<a href="/admin/order/danggiao" data-toggle="">ĐANG GIAO</a>
		</li>
		
		<li>
			<a href="/admin/order/dagiao" data-toggle="">ĐÃ GIAO</a>
		</li>		
		<li>
			<a href="/admin/order/dahuy" data-toggle="">ĐÃ HỦY</a>
		</li>
	</ul>
</div>
</div>


<c:set var="ctrl" value="/admin/order" scope="request"/>
<ul class="nav nav-tabs" style="font-variant: small-caps;">
	<li class="active">
		<a data-toggle="tab" href="#edit">
			<span class="fa fa-list"></span> Cập nhật
		</a>
	</li>
	<li>
		<a data-toggle="tab" href="#list">
			<span class="fa fa-pencil-square-o"></span> Danh sách
		</a>
	</li>
	
</ul>

<div class="tab-content">
	<div id="edit" class="tab-pane fade in active">
		<jsp:include page="_form.jsp"/>
	</div>
	
	<div id="list" class="tab-pane fade">
		<jsp:include page="_list.jsp"/>
	</div>

</div>

<script>
$(function(){
	if(location.search.includes('page')){
		$("#edit").removeClass("in active");
		$("#list").addClass("in active");
		
		$(".nav-tabs li:eq(0)").removeClass("active");
		$(".nav-tabs li:eq(1)").addClass("active");
	}
})
</script>