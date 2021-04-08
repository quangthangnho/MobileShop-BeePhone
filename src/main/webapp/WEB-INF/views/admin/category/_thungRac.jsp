<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<ul class="nav nav-tabs" style="font-variant: small-caps;">
	<li >
		<a data-toggle="" href="/admin/category/index">
			<span class="fa fa-list"></span> Cập nhật
		</a>
	</li >
	<li class="active">
		<a data-toggle="" href="/admin/category/_thungRac">
			<span class="fa fa-pencil-square-o"></span> Thùng rác
		</a>
	</li>
</ul>
<h4 class="card-title">Danh sách loại hàng đã xóa</h4>
<div class="material-datatables">
	<table id="datatables"
		class="table table-striped table-no-bordered table-hover"
		cellspacing="0" width="100%" style="width: 100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>TÊN CHUYÊN MỤC</th>
				<th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="item" items="${liststatus2}">
				<tr>
					<td>${item.id}</td>
					<td>${item.name}</td>
					<td class="td-actions text-right">
						<a href="edit/${item.id}" class="btn btn-sm btn-warning" title="Lấy lại">
			    			<i class="fa fa-pencil">Lấy lại</i>
			    		</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

