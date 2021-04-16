<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div><jsp:include page="menu.jsp"/></div>
<c:set var="ctrl" value="/admin/order" scope="request"/>
<ul class="nav nav-tabs" style="font-variant: small-caps;">
	<li class="active">
		<a data-toggle="tab" href="#edit">
			<span class="fa fa-list"></span> Cập nhật
		</a>
	</li>
	<li>
		<a data-toggle="tab" href="#list">
			<span class="fa fa-pencil-square-o"></span> Danh sách(<span class="card-infomation"></span>)
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

