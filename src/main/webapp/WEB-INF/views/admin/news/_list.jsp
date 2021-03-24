<%@ page pageEncoding="utf-8"%>

<h4 class="card-title">DANH SÁCH NEWS</h4>
<div class="material-datatables">
	<table id="datatables"
		class="table table-striped table-no-bordered table-hover"
		cellspacing="0" width="100%" style="width: 100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>TIÊU ĐỂ</th>
				<th>HÌNH</th>
				<th>NGÀY ĐĂNG</th>
				<th>NỘI DUNG</th>
				<th>NGƯỜI ĐĂNG</th>
				<th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td>1</td>
				<td>a</td>
				<td>a</td>
				<td>a</td>
				<td>a</td>
				<td>a</td>
				<td class="td-actions text-right">
					<a href="${ctrl}/edit/${item.id}" class="btn btn-sm btn-warning" title="Detail">
		    			<i class="fa fa-pencil"></i>
		    		</a>
				</td>
			</tr>
		</tbody>
	</table>
</div>
