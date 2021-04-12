<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<h4 class="card-title">DANH SÁCH TIN TỨC</h4>
<div class="material-datatables" style="overflow-x:auto">
	<table id="datatables"
		class="table table-striped table-no-bordered table-hover"
		cellspacing="0" width="100%" style="width: 100%">
		<thead>
			<tr>
				<th>HÌNH ẢNH</th>
				<th>TIÊU ĐỂ</th>
				<th>NGÀY ĐĂNG</th>
				<th>NGƯỜI ĐĂNG</th>
				<th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="item" items="${listNew}">
				<tr>
						<td><img style="width: 100px;height: 80px"  src="/static/images/news/${item.image}" /></td>
						<td>${item.title}</td>
						<td>${item.createDate}</td>
						<td>${item.accountEntity.fullname}</td>
						<td class="td-actions text-right">
					<a href="/admin/news/detail?id=${item.id}" class="btn btn-sm btn-warning" title="Detail">
		    			<i class="fa fa-pencil"></i>
		    		</a>
				</td>
				</tr>
				
			</c:forEach>
		</tbody>
	</table>
</div>
