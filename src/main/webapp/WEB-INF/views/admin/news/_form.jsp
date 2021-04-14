<%@ page pageEncoding="utf-8"%>
<script src="/static/assets-a/assets/js/upload.js"></script>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<form:form method="post" action="/admin/news/create" modelAttribute="formNew"
	enctype="multipart/form-data">
<div class="panel panel-danger">
	<div class="panel-heading">
		<div class="panel-title">${message}</div>
	</div>
	<div class="panel-body">
		<div class="row">
			<div class="col-sm-7">
			<div class="row">
			<div class="form-group col-md-6">
				    <label for="exampleInputPassword1">Tiêu đề</label>
				    <input value="${newForm.title}" name="title" type="text" class="form-control" id="exampleInputPassword1" required="required">
				  </div>
			<div class="form-group col-md-6"">
				    <label for="exampleInputPassword2">Ngày tạo</label>
				    <input value="${newForm.createDate}" name="createDate" type="date" class="form-control" id="exampleInputPassword2" disabled="disabled" required="required">
				  </div>
			</div>
				<div class="row">
				<div class="form-group col-md-6">
					<label for="photo_file">Ảnh tin tức</label>
					 <input onchange="upload.change(this, 'img#photo')" name="photo_file" id="photo_file" type="file" class="form-control"> 
					 <input name="image" type="hidden" value="${newForm.image}" />
				</div>
				<div class="form-group col-md-6">
							<label>Trạng thái</label>
							<div class="form-control">
								<input type="radio" name="status" value="1"
									class="form-check-input" checked="checked">Bật <input
									type="radio" name="status" value="0" class="form-check-input">Tắt
							</div>
						</div>
				  </div>
				<input type="hidden" name="id" value="${newForm.id}" />
			</div>
			<div class="col-sm-5">
					<c:if test="${!empty newForm.image}">
						<img id="photo" style="width: 330px;height: 200px"
							src="/static/images/news/${newForm.image}">

				</c:if>
			</div>

		</div>
		<div class="row" style="margin-top: 20px">
			<textarea  id="editor1" name="content"  rows="10" cols="80">${newForm.content}</textarea>
		</div>

	</div>
	<div class="panel-footer">
			<c:choose>
				<c:when test="${empty newForm.getId()}">
					<button formaction="/admin/news/create" class="btn btn-success"
						title="Create">
						<i class="fa fa-plus-circle"></i> Tạo mới
					</button>
				</c:when>
				<c:when test="${!empty newForm.getId()}">
					<button formaction="/admin/news/create" class="btn btn-success"
						title="Create" disabled="disabled">
						<i class="fa fa-plus-circle"></i> Tạo mới
					</button>
				</c:when>
			</c:choose>

			<c:choose>
				<c:when test="${empty newForm.getId()}">
					<button formaction="/admin/news/update" class="btn btn-primary" title="Update"
						disabled="disabled">
						<i class="fa fa-check-circle"></i> Cập nhập
					</button>
					</button>
				</c:when>
				<c:when test="${!empty newForm.getId()}">
					<button formaction="/admin/news/update" class="btn btn-primary" title="Update">
						<i class="fa fa-check-circle"></i> Cập nhập
					</button>
					</button>
				</c:when>
			</c:choose>
			<button formaction="/admin/news/delete?id=${newForm.id}" class="btn btn-danger"
				title="Delete">
				<i class="fa fa-trash-o"></i> Xóa
			</button>
			<button>
				<a href="/admin/news/index" class="btn btn-info" title="Reset">
					<i class="fa fa-refresh"></i> Tải lại
				</a>
			</button>
		</div>
</div>

</form:form>


