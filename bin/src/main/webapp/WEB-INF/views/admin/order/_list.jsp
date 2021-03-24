<%@ page pageEncoding="utf-8"%>

<h4 class="card-title">THÔNG TIN ĐẶT HÀNG</h4>
<div class="material-datatables">
	<table id="datatables"
		class="table table-striped table-no-bordered table-hover"
		cellspacing="0" width="100%" style="width: 100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>NGÀY ĐẶT HÀNG</th>
				<th>ĐỊA CHỈ</th>
				<th>SỐ TIỀN</th>
				<th>TRẠNG THÁI</th>
				<th class="disabled-sorting text-right">HÀNH ĐỘNG</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td>1</td>
				<td>2020/10/22</td>
				<td>123</td>
				<td>a</td>
				<td>Completed</td>
				<td class="td-actions text-right">
					<a href="" class="btn btn-sm btn-warning" title="Detail">
		    			<i class="fa fa-pencil"></i>
		    		</a>
				</td>
			</tr>
		</tbody>
	</table>
</div>

