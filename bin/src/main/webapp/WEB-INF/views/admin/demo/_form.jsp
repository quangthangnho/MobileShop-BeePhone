<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
	    			<img id="image" src="">
	    		</label>
			    <div class="form-group">
			        <input onchange="upload.change(this, 'img#image')" name="image_file" id="image_file" type="file" class="form-control">
			    </div>    		
	    	</div>

    	</div>
	    
	    

    </div>
    <div class="panel-footer">
	        <button formaction="" class="btn btn-success" title="Create" disabled="">
	        	<i class="fa fa-plus-circle"></i> Create
	        </button>
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
</form:form>
