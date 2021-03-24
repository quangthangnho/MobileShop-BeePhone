<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<script src="http://js.nicedit.com/nicEdit-latest.js"></script>
<script>bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
<form:form action="${ctrl}/index" 
	modelAttribute="form" enctype="multipart/form-data">
<div class="panel panel-danger">
    <div class="panel-heading">
        <div class="panel-title">${message}</div>
    </div>
    <div class="panel-body">
    	<div class="row">
    		<div class="col-sm-4 text-center">
	    		<label for="image_file">
	    			<img id="image" src="/static/assets-a/assets/images/products/${form.image}">
	    		</label>
			    <div class="form-group">
			        <input onchange="upload.change(this, 'img#image')" name="image_file" id="image_file" type="file" class="form-control">
			        <form:hidden path="image"/>
			    </div>    		
	    	</div>
	    	<div class="col-sm-8">
				        <label>id</label>
				        <form:input path="id" class="form-control"/>
		
				<div class="row">
		
				    <div class="form-group col-sm-6">
				        <label>TÊN SẢN PHẨM</label>
				        <form:input path="name" class="form-control"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>BỘ NHỚ TRONG</label>
				        <form:input path="boNhoTrong" class="form-control"/>
				    </div>
				</div>
				
				<div class="row">
					<div class="form-group col-sm-6">
				        <label>CAMERA TRƯỚC</label>
				        <form:input path="cameraTruoc" class="form-control"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>CAMERA SAU</label>
				        <form:input path="cameraSau" class="form-control"/>
				    </div>
			    </div>
			    
			    <div class="row">
					<div class="form-group col-sm-6">
				        <label>CPU</label>
				        <form:input path="cpu" class="form-control"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>DUNG LƯỢNG PIN</label>
				        <form:input path="dungLuongPin" class="form-control"/>
				    </div>
			    </div>
			    
			    <div class="row">
					<div class="form-group col-sm-6">
				        <label>HỆ ĐIỀU HÀNH</label>
				        <form:input path="heDieuHanh" class="form-control"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>MÀN HINH</label>
				        <form:input path="manHinh" class="form-control"/>
				    </div>
			    </div>
			  </div>
			    
			    <div class="col-sm-12">
					<div class="form-group col-sm-4">
				        <label>SỐ LƯỢNG</label>
				        <form:input path="stock" class="form-control"/>
				    </div>
				    <div class="form-group col-sm-4">
				        <label>ĐƠN GIÁ</label>
				        <form:input path="unitPrice" class="form-control"/>
				    </div>
				    <div class="form-group col-sm-4">
				        <label>RAM</label>
				        <form:input path="ram" class="form-control"/>
				    </div>
				    
			    </div>
			   
			    <div class="col-sm-12">
				    <div class="row">
						<div class="form-group col-sm-4">
					        <label>NGÀY TẠO</label>
					        <form:input path="createDate" class="form-control style" disabled="true"/>
					    </div>
					    
					    <div class="form-group col-sm-4">
					        <label>NGƯỜI TẠO</label>
					        <form:input path="createBy" class="form-control style" value="admin" disabled="true"/>
					    </div>
					    <div class="form-group col-sm-4">
				        <label>Category</label>
				        <i class="fa fa-sort-desc"></i>
				        <form:select path="categoryProduct.id" class="form-control">
				        	<form:options items="${categories}" itemValue="id" itemLabel="name" /> 	
				        </form:select>
				    </div>
					    
				    </div>
			    </div>
			<div class="row">
			    <div class="form-group col-sm-12">
			        <label>Description</label>
			        <form:textarea path="description" class="form-control" rows="4"/>
			    </div>		    
 			</div>
    	
    	</div>
</div>
</div>
<div class="panel-footer">
	        <form:button formaction="${ctrl}/create" class="btn btn-success" title="Create" disabled="${!empty form.id}">
	        	<i class="fa fa-plus-circle"></i> Create
	        </form:button>
	        <form:button formaction="${ctrl}/update" class="btn btn-primary" title="Update" disabled="${empty form.id}">
	        	<i class="fa fa-check-circle"></i> Update
	        </form:button>
	        <form:button formaction="${ctrl}/delete" class="btn btn-danger" title="Delete" disabled="${empty form.id}">
	        	<i class="fa fa-trash-o"></i> Delete
	        </form:button>
	        <a href="${ctrl}/index" class="btn btn-info" title="Reset">
	        	<i class="fa fa-refresh"></i> Reset
	        </a>
    </div>
</form:form>

<style>
input#createDate {
	 background-color: #eee;
}
input#createBy {
    background-color: #eee;
}

img#image{
		max-width: 100%;
		height: 325px;
		box-shadow: 0 0 5px gray;
		border-radius: 5px;
		margin-bottom: 10px;
		padding: 10px;
	}
</style>

<script src="/static/assets-a/assets/js/upload.js"></script>
