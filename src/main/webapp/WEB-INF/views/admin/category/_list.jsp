<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<h4 class="card-title">Hiển thị chuyên mục</h4>

<div class="material-datatables">
	<table id="datatables"
		class="table table-striped table-no-bordered table-hover"
		cellspacing="0" width="100%" style="width: 100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>TÊN LOẠI HÀNG</th>
	
				<th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.id}</td>
					<td>${item.name}</td>
		
					<td class="td-actions text-right">
						<a href="${ctrl}/edit/${item.id}" class="btn btn-sm btn-warning" title="Chi tiết">
			    			<i class="fa fa-pencil"></i>
			    		</a>	
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
