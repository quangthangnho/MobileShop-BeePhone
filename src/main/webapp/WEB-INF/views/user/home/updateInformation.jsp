<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<script src="/static/assets-a/assets/js/upload.js"></script>
<!--  content -->
<!-- catg header banner section -->
<section id="aa-catg-head-banner">
	<img src="/static/assets/images/archive-banner.png" alt="banner blog">
	<div class="aa-catg-head-banner-area">
		<div class="container">
			<div class="aa-catg-head-banner-content">
				<h2>Cập nhập thông tin tài khoản</h2>
				<ol class="breadcrumb">
					<li><a href="index.html">Trang chủ</a></li>
					<li style="color: #fff">Cập nhập thông tin tài khoản</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<!-- / catg header banner section -->

<!-- Cart view section -->
<section id="aa-myaccount">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-myaccount-area">
					<div class="row">

						<div class="col-md-8 col-md-push-2">
							<div class="aa-myaccount-register">
								<h4>Cập nhập thông tin tài khoản</h4>
								<form:form action="/home/updateInformation" method="post"
									modelAttribute="formUpdateInfo" enctype="multipart/form-data">
									<div class="col-md-4">
										<img height="350px" width="200px" id="photo" src="/static/images/account/${updateForm.getImage()}">
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label for="username">Tên đăng nhập</label> <input
												type="text" class="form-control" id="username" value="${updateForm.getUsername()}"
												name="username" required="required" readonly="readonly">
												<input type="hidden" name="id" value="${updateForm.getId()}" />
												<input type="hidden" name="role" value="${updateForm.getRole()}" />
												<input type="hidden" name="status" value="${updateForm.getStatus()}" />
												<input type="hidden" name="password" value="${updateForm.getPassword()}" />
										</div>
										<div class="form-group">
											<label for="fullname">Họ và tên</label> <input type="text" value="${updateForm.getFullname()}"
												class="form-control" id="fullname" name="fullname"
												required="required">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Email</label> <input
												type="email" class="form-control" id="exampleInputEmail1" value="${updateForm.getEmail()}"
												aria-describedby="emailHelp" name="email"
												required="required">
										</div>
										<div class="form-group">
											<label for="phoneNumber">Số điện thoại</label> <input value="${updateForm.getPhoneNumber()}"
												type="text" class="form-control" id="phoneNumber"
												name="phoneNumber" required="required">
										</div>
										<div class="form-group">
											<label for="exampleFormControlFile1">Hình ảnh</label> 
											 <input onchange="upload.change(this, 'img#photo')" name="photo_file" id="photo_file" type="file" class="form-control-file">
						 					<input name="image" type="hidden" value="" />
										</div>
										<button style="float: right; width: 150px" type="submit"
											class="btn btn-primary">Cập nhập</button>
										<c:if test="${!empty message}">
											<p>${message}</p>
										</c:if>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Cart view section -->

<!--  end content-->
<script>
	var date = new Date();
	var day = date.getDate();
	var month = date.getMonth() + 1;
	var year = date.getFullYear();
	if (month < 10)
		month = "0" + month;
	if (day < 10)
		day = "0" + day;
	var today = year + "-" + month + "-" + day;
	document.getElementById('the-date').value = today;
</script>