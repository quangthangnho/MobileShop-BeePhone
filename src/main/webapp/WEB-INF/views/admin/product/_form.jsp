<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

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
	    			<img id="image" src="/static/images/products/${form.image}">
	    		</label>
			    <div class="form-group">
			        <input onchange="upload.change(this, 'img#image')" name="image_file" id="image_file" type="file" value="" class="form-control" >
			        <form:hidden path="image"/>
			    </div>    		
	    	</div>
	    	<div class="col-sm-8">
				        <form:hidden path="id"/>
		
				<div class="row">
		
				    <div class="form-group col-sm-6">
				        <label>TÊN SẢN PHẨM</label>
				        <form:input path="name" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>BỘ NHỚ TRONG</label>
				        <form:input path="boNhoTrong" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
				    </div>
				</div>
				
				<div class="row">
					<div class="form-group col-sm-6">
				        <label>CAMERA TRƯỚC</label>
				        <form:input path="cameraTruoc" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
				    </div>
				    <div class="form-group col-sm-3">
				        <label>CAMERA SAU</label>
				        <form:input path="cameraSau" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
				    </div>
				    <div class="form-group col-sm-3">
				        <label>Giảm giá(%)</label>
				        <form:input path="discount" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" class="form-control"/>
				    </div>
			    </div>
			    
			    <div class="row">
					<div class="form-group col-sm-6">
				        <label>CPU</label>
				        <form:input path="cpu" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>DUNG LƯỢNG PIN</label>
				        <form:input path="dungLuongPin" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
				    </div>
			    </div>
			    
			    <div class="row">
					<div class="form-group col-sm-6">
				        <label>HỆ ĐIỀU HÀNH</label>
				        <form:input path="heDieuHanh" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
				    </div>
				    <div class="form-group col-sm-6">
				        <label>MÀN HÌNH</label>
				        <form:input path="manHinh" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
				    </div>
			    </div>
			  </div>
			    
			    <div class="col-sm-12">
					<div class="form-group col-sm-4">
				        <label>SỐ LƯỢNG</label>
				        <form:input path="stock" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
				    </div>
				    <div class="form-group col-sm-4">
				        <label>ĐƠN GIÁ</label>
				        <div><fmt:formatNumber value="${form.unitPrice}" minFractionDigits="0"/> &#8363;</div>
				        <form:input path="unitPrice" class="form-control" onkeypress="return /[0-9]/i.test(event.key)" required="required"/>
				    </div>
				    <div class="form-group col-sm-4">
				        <label>RAM</label>
				        <form:input path="ram" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
				    </div>
				    
			    </div>
			   
			    <div class="col-sm-12">
				    <div class="row">
					    <div class="form-group col-sm-4">
					        <label>Category</label>
					        <i class="fa fa-sort-desc"></i>
					        <form:select path="categoryProduct.id" class="form-control">
					        	<form:options items="${categories}" itemValue="id" itemLabel="name" /> 	
					        </form:select>
					    </div>
						<div class="form-group col-sm-4">
					        <label></label>
					       	<form:hidden path="createDate" class="form-control" readonly="true" />
					    </div>
					    
					    <div class="form-group col-sm-4">
					        <label></label>
					        <form:hidden path="createBy" class="form-control" value="admin" readonly="true" />
					        
					    </div>
					
					    
				    </div>
			    </div>
			<div class="row">
			    <div class="form-group col-sm-12">
			        <label>Description</label>
			        <form:textarea path="description" onkeypress="return /[0-9a-zA-Z -]/i.test(event.key)" class="form-control" rows="4"/>
			    </div>		    
 			</div>
    	
    	</div>
</div>
</div>
<div class="panel-footer">
	        <form:button formaction="${ctrl}/create" class="btn btn-success" title="Tạo mới" disabled="${!empty form.id}">
	        	<i class="fa fa-plus-circle"></i> Tạo mới
	        </form:button>
	        <form:button formaction="${ctrl}/update" class="btn btn-primary" title="Cập nhật" disabled="${empty form.id}">
	        	<i class="fa fa-check-circle"></i> Cập nhật
	        </form:button>
	        <form:button formaction="${ctrl}/laylai" class="btn btn-success" title="Lấy lại" >
	        	<i class="fa fa-history"></i> Lấy lại
	        </form:button>
	        <form:button formaction="${ctrl}/delete" class="btn btn-danger" title="Xóa" disabled="${empty form.id}">
	        	<i class="fa fa-trash-o"></i> Xóa
	        </form:button>
	        <a href="${ctrl}/index" class="btn btn-info" title="Tải lại">
	        	<i class="fa fa-refresh"></i> Tải lại
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

<script src="/static/assets-a/js/upload.js"></script>