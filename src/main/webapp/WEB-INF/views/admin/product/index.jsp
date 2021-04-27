<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:set var="ctrl" value="/admin/product" scope="request"/>

<div id="myDIV">
	<a href="_thungrac" class="btn btn-primary" style="color: #333; background-color:#ec971f " role="button"><i class="fa fa-trash-o"></i> Thùng rác</a>
</div>


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