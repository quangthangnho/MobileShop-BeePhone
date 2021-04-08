
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
	        <form:hidden path="id"/>
	    </div>
	    <div class="form-group">
	        <label>TÊN LOẠI HÀNG</label>
	        <form:input path="name" class="form-control"/>
	    </div>

    </div>
    <div class="panel-footer">
	        <form:button formaction="${ctrl}/create" class="btn btn-success" title="Create" disabled="${!empty form.id}">
	        	<i class="fa fa-plus-circle"></i> Tạo mới
	        </form:button>
	        <form:button formaction="${ctrl}/update" class="btn btn-primary" title="Update" disabled="${empty form.id}">
	        	<i class="fa fa-check-circle"></i> Cập nhập
	        </form:button>
	        <form:button formaction="${ctrl}/delete" class="btn btn-danger" title="Delete" disabled="${empty form.id}">
	        	<i class="fa fa-trash-o"></i> Xóa
	        </form:button>
	        <a href="${ctrl}/index" class="btn btn-info" title="Reset">
	        	<i class="fa fa-refresh"></i> Tải lại
	        </a>
	        
	        <form:button formaction="${ctrl}/update1" class="btn btn-success" title="Lấy lại" disabled="${empty form.id}">
	        	<i class="fa fa-check-circle"></i> Lấy lại
	        </form:button>
    </div>
</div>
</form:form>
