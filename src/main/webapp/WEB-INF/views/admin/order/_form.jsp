<%@ page pageEncoding="utf-8"%>


<div class="panel panel-danger">
    <div class="panel-heading">
        <div class="panel-title">${message}</div>
	</div>
	<div class="panel-body">
	    <div class="row">
	    	<div class="col-sm-12">
		    	<div class="row">
		    		<div class="form-group col-sm-6">
				        <label>ID</label>
				        <input path="id" class="form-control" readonly="true"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>KHÁCH HÀNG</label>
				        <input path="name" class="form-control"/>
				    </div>
		    	
		    	</div>
		    </div>
		    
		    <div class="col-sm-12">
		    	<div class="row">
		    		<div class="form-group col-sm-6">
				        <label>NGÀY ĐẶT</label>
				        <input path="id" class="form-control" readonly="true"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>TỔNG TIỀN</label>
				        <input path="name" class="form-control"/>
				    </div>
		    	
		    	</div>
		    </div>
		    
		    <div class="col-sm-12">
		    	<div class="row">
		    		<div class="form-group col-sm-6">
				        <label>TRẠNG THÁI</label>
				        <select name="category" id="category">
				        	<option value="volvo">All</option>
							<option value="volvo">Completed</option>
							<option value="saab">In Progress</option>
							<option value="mercedes">Canceled</option>
							<option value="audi">Not Yet</option>
						</select>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>ĐỊA CHỈ GIAO HÀNG</label>
				        <input path="name" class="form-control"/>
				    </div>
		    	
		    	</div>
		    </div>
		    
		    <div class="col-sm-12">
		    	<div class="row">
				    <div class="form-group col-sm-12">
				        <label>ĐỊA CHỈ GIAO HÀNG</label>
				        <input path="name" class="form-control"/>
				    </div>
		    	
		    	</div>
		    </div>   
		</div>
	</div>
</div>

<h4 class="card-title">CHI TIẾT HÓA ĐƠN</h4>
<div class="material-datatables">
	<table id="datatables"
		class="table table-striped table-no-bordered table-hover"
		cellspacing="0" width="100%" style="width: 100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>TÊN SẢN PHẨM</th>
				<th>ĐƠN GIÁ</th>
				<th>SỐ LƯỢNG</th>
				<th>TỔNG TIỀN</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td>1</td>
				<td>A</td>
				<td>$12</td>
				<td>2</td>
				<td>$24</td>
				
			</tr>
		</tbody>
	</table>
	<div class="panel-footer">
	    <button formaction="" class="btn btn-primary" title="Update" disabled="">
	    	<i class="fa fa-check-circle"></i> Update
	    </button>
	    <button formaction="" class="btn btn-danger" title="Delete" disabled="">
	    	<i class="fa fa-trash-o"></i> Delete
	    <button>
	    <a href="" class="btn btn-info" title="Reset">
	    	<i class="fa fa-refresh"></i> Reset
	    </a>
    </div>
</div>