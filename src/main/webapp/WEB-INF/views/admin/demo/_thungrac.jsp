<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<div id="myDIV">
	<a href="http://localhost:8086/admin/demo/index" class="btn btn-info" style="color: #333; background-color: #28609" role="button">Cập nhập</a>
</div>
<form:form action="${ctrl}/index" modelAttribute="form">

<h4 class="card-title">Danh sách loại hàng đã xóa</h4>
<div class="panel panel-danger">
    <div class="panel-heading">
        <div class="panel-title">${message}</div>
    </div>
</div>    
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
			<c:forEach var="item" items="${listfillAllCategoryStatus2}">
				<tr>
					<td>${item.id}</td>
					<td>${item.name}</td>
			
					<td class="td-actions text-right">
			    		
			    		<a href="http://localhost:8086/admin/demo/laylai/${item.id}/${item.name}" class="btn btn-sm btn-warning" title="Lấy lại">
			    			<i class="fa fa-pencil">Lấy lại</i>
			    		</a>
			    		
			    		<a href="http://localhost:8086/admin/demo/delete/${item.id}" class="btn btn-sm btn-danger" title="Delete">
			    			<i class="fa fa-trash-o">Delete</i>
			    		</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</form:form>


