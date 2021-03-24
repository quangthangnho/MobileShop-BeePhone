<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- 
-ctrl: lấy bên khai báo chung index.jsp
-ctrl:/admin/category


 -->
<form:form action="${ctrl}/index" modelAttribute="form">
<div class="panel panel-danger">
    <div class="panel-heading">
        <div class="panel-title">${message}</div>
    </div>
    <div class="panel-body">
	    <div class="form-group">
	        <label>ID</label>
	        <form:input path="id" class="form-control" readonly="true"/> <!-- id tự tăng nên để readonly -->
	    </div>
	    <div class="form-group">
	        <label>TÊN LOẠI HÀNG</label>
	        <form:input path="name" class="form-control"/>
	    </div>
	    <div class="form-group">
	        <form:input path="status" type="hidden" class="form-control"/>
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
</div>
</form:form>