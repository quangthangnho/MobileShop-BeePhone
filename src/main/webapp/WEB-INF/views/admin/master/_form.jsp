<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form:form action="/admin/master/detail" modelAttribute="form" enctype="multipart/form-data">
<div class="panel panel-danger">
	<div class="panel-heading">
		<div class="panel-title">${message}</div>
	</div>
	<div class="panel-body">
		<div class="row">
		<c:if test="${!empty indexForm.getImage()}">
		<div class="col-sm-3 text-center">
    		<label for="photo_file">
    			<img id="photo" src="/static/images/account/${indexForm.getImage()}">
    		</label>
    	</div>
		</c:if>
		
			<div class="col-sm-9">
				<div class="row">
					<div class="form-group col-sm-6">
						<label>TÊN TÀI KHOẢN</label>
						<c:choose>
							<c:when test="${indexForm.getId() == null}">
							<input name="username" value="${indexForm.getUsername()}"  class="form-control"/>
							</c:when>
							<c:when test="${indexForm.getId() != null}">
							<input name="username" value="${indexForm.getUsername()}"  class="form-control" readonly="readonly"/>
							</c:when>
						</c:choose>
					</div>
					<input type="hidden" name="id" value="${indexForm.getId()}" />
					<div class="form-group col-sm-6">
						<label>MẬT KHẨU</label> 
						<input path="password" name="password" value="${indexForm.getPassword()}" class="form-control" />
					</div>
				</div>

				<div class="row">
					<div class="form-group col-sm-6">
						<label>HỌ VÀ TÊN</label> 
						<input name="fullname" value="${indexForm.getFullname()}" class="form-control" />
					</div>

					<div class="form-group col-sm-6">
						<label>EMAIL</label> 
						<input name="email" value="${indexForm.getEmail()}" class="form-control" />
					</div>
				</div>
				
				<div class="row">
					<div class="form-group col-sm-6">
						<label>HÌNH</label>
						  <input onchange="upload.change(this, 'img#photo')" name="photo_file" id="photo_file" type="file" class="form-control">
						 <input name="image" type="hidden" value="${indexForm.getImage()}" />
					</div>
					<div class="form-group col-sm-6">
						<label>SỐ ĐIỆN THOẠI</label> 
						<input name="phoneNumber" value="${indexForm.getPhoneNumber()}" class="form-control" />
					</div>

					 
				</div>
				<div class="row">
					<div class="form-group col-sm-3">
			        <label>Is Active?</label>
			        <div class="form-control">
			        	<input type="radio" name="status" value="1" class="form-check-input"  checked="checked">Yes
        				<input type="radio" name="status"  value="0" class="form-check-input" >No
			        </div>
			    </div>
			    <div class="form-group col-sm-3">
			        <label>Is Admin?</label>
			        <div class="form-control">
			        	<input type="radio" name="role" value="true" class="form-check-input"  checked="checked">Yes
        				<input type="radio" name="role" value="false" class="form-check-input" >No
			        </div>
			    </div>
				</div>
			</div>

		</div>

	</div>
	<div class="panel-footer">
		<c:choose>
			<c:when test="${empty indexForm.getId()}">
			<button formaction="/admin/master/create" class="btn btn-success" title="Create">
			<i class="fa fa-plus-circle"></i> Create
		</button>
			</c:when>
			<c:when test="${!empty indexForm.getId()}">
			<button formaction="/admin/master/create" class="btn btn-success" title="Create" disabled="disabled">
			<i class="fa fa-plus-circle"></i> Create
		</button>
			</c:when>
		</c:choose>
		
		<c:choose>
			<c:when test="${empty indexForm.getId()}">
			<button type="submit" class="btn btn-primary" title="Update" disabled="disabled">
			<i class="fa fa-check-circle"></i> Update
		</button>
		</button>
			</c:when>
			<c:when test="${!empty indexForm.getId()}">
			<button type="submit" class="btn btn-primary" title="Update">
			<i class="fa fa-check-circle"></i> Update
		</button>
		</button>
			</c:when>
		</c:choose>

		
		<button formaction="/admin/master/delete" class="btn btn-danger" title="Delete">
			<i class="fa fa-trash-o"></i> Delete 
		</button>
		<button> <a href="/admin/master/index" class="btn btn-info" title="Reset"> 
				<i class="fa fa-refresh"></i> Reset
				</a> 
		</button>
	</div>
</div>
</form:form>