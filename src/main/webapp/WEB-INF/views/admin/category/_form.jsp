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
	        
	        <form:input path="id" type="hidden" class="form-control" readonly="true"/> <!-- id tự tăng nên để readonly -->
	    </div>
	    <div class="form-group">
	        <label>TÊN LOẠI HÀNG</label><p id="demo"></p>
	        <form:input path="name" class="form-control" onkeypress="return /[0-9a-zA-Z ]/i.test(event.key)" required="required"/>
	    </div>
	    <div class="form-group">
	        <form:input path="status" type="hidden" class="form-control"/>
	    </div>

    </div>
    <div class="panel-footer">
	        <form:button formaction="${ctrl}/create" class="btn btn-success" title="Tạo mới" disabled="${!empty form.id}">
	        	<i class="fa fa-plus-circle"></i> Tạo mới
	        </form:button>
	        <form:button formaction="${ctrl}/update" class="btn btn-primary" title="Cập nhật" disabled="${empty form.id}">
	        	<i class="fa fa-check-circle"></i> Cập nhật
	        </form:button>
	        <form:button formaction="${ctrl}/delete" class="btn btn-danger" title="Xóa" disabled="${empty form.id}">
	        	<i class="fa fa-trash-o"></i> Xóa
	        </form:button>
	        <a href="${ctrl}/index" class="btn btn-info" title="Tải lại">
	        	<i class="fa fa-refresh"></i> Tải lại
	        </a>
    </div>
</div>
</form:form>
