<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<script src="/static/assets-a/js/upload.js"></script>
<form:form action="/admin/customer/detail" modelAttribute="form"
	enctype="multipart/form-data">
	<div class="panel panel-danger">
		<div class="panel-heading">
			<div class="panel-title">${message}</div>
		</div>
		<div class="panel-body">
			<div class="row">
				<c:if test="${!empty indexForm.getImage()}">
					<div class="col-sm-3 text-center">
						<label for="photo_file"> <img id="photo" style="width: 200px;height: 250px"
							src="/static/images/account/${indexForm.getImage()}">
						</label>
					</div>
				</c:if>
				<div class="col-sm-8">
					<div class="row">
						<div class="form-group col-sm-6">
							<label>TÊN KHÁCH HÀNG</label>
							<c:choose>
								<c:when test="${indexForm.getId() == null}">
									<input name="username" value="${indexForm.getUsername()}"
										class="form-control" />
								</c:when>
								<c:when test="${indexForm.getId() != null}">
									<input name="username" value="${indexForm.getUsername()}"
										class="form-control" readonly="readonly" />
								</c:when>
							</c:choose>
						</div>
						<input type="hidden" name="id" value="${indexForm.getId()}" />
						<div class="form-group col-sm-6">
							<label>MẬT KHẨU</label> <input path="password" name="password"
								value="${indexForm.getPassword()}" class="form-control" />
						</div>
					</div>

					<div class="row">
						<div class="form-group col-sm-6">
							<label>HỌ VÀ TÊN</label> <input name="fullname"
								value="${indexForm.getFullname()}" class="form-control" />
						</div>

						<div class="form-group col-sm-6">
							<label>EMAIL</label> <input name="email"
								value="${indexForm.getEmail()}" class="form-control" />
						</div>
					</div>

					<div class="row">
						<div class="form-group col-sm-6">
							<label>HÌNH</label> <input
								onchange="upload.change(this, 'img#photo')" name="photo_file"
								id="photo_file" type="file" class="form-control"> <input
								name="image" type="hidden" value="${indexForm.getImage()}" />
						</div>
						<div class="form-group col-sm-6">
							<label>SỐ ĐIỆN THOẠI</label> <input name="phoneNumber"
								value="${indexForm.getPhoneNumber()}" class="form-control" />
						</div>

					</div>
					<div class="row">
						<div class="form-group col-sm-3">
							<label>Kích hoạt?</label>
							<div class="form-control">
								<input type="radio" name="status" value="1"
									class="form-check-input" checked="checked">Yes <input
									type="radio" name="status" value="0" class="form-check-input">No
							</div>
						</div>
						<div class="form-group col-sm-3">
							<label>Admin?</label>
							<div class="form-control">
								<input type="radio" name="role" value="ADMIN"
									class="form-check-input">Yes <input type="radio"
									name="role" value="USER" class="form-check-input"
									checked="checked">No
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
		<div class="panel-footer">
			<c:choose>
				<c:when test="${empty indexForm.getId()}">
					<button formaction="/admin/customer/create" class="btn btn-success"
						title="Tạo mới">
						<i class="fa fa-plus-circle"></i> Tạo mới
					</button>
				</c:when>
				<c:when test="${!empty indexForm.getId()}">
					<button formaction="/admin/customer/create" class="btn btn-success"
						title="Tạo mới" disabled="disabled">
						<i class="fa fa-plus-circle"></i> Tạo mới
					</button>
				</c:when>
			</c:choose>

			<c:choose>
				<c:when test="${empty indexForm.getId()}">
					<button type="submit" class="btn btn-primary" title="Cập nhật"
						disabled="disabled">
						<i class="fa fa-check-circle"></i> Cập nhật
					</button>
					</button>
				</c:when>
				<c:when test="${!empty indexForm.getId()}">
					<button type="submit" class="btn btn-primary" title="Cập nhật">
						<i class="fa fa-check-circle"></i> Cập nhật
					</button>
					</button>
				</c:when>
			</c:choose>
			<button formaction="/admin/customer/delete" class="btn btn-danger"
				title="Xóa">
				<i class="fa fa-trash-o"></i> Xóa
			</button>
			<button>
				<a href="/admin/customer/index" class="btn btn-info" title="Tải lại">
					<i class="fa fa-refresh"></i> Tải lại
				</a>
			</button>
		</div>
	</div>
</form:form>