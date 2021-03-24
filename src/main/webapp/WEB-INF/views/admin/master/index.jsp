<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:set var="ctrl" value="/admin/customer" scope="request"/>

<ul class="nav nav-tabs" style="font-variant: small-caps;">
	<li class="active">
		<a data-toggle="tab" href="#edit">
			<i class="fa fa-pencil-square-o"></i></span> Cập nhật
		</a>
	</li>
	<li>
		<a data-toggle="tab" href="#list">
			<i class="fa fa-list" ></i> Danh sách
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