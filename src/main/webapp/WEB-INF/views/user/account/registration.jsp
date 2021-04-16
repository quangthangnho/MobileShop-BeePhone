<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!--  content -->
<!-- catg header banner section -->
<section id="aa-catg-head-banner">
<img src="/static/assets/images/archive-banner.png" alt="banner blog">
  <div class="aa-catg-head-banner-area">
   <div class="container">
    <div class="aa-catg-head-banner-content">
      <h2>Đăng ký</h2>
      <ol class="breadcrumb">
        <li><a href="index.html">Trang chủ</a></li>                   
        <li style="color:#fff">Đăng ký tài khoản</li>
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
               <h4>Đăng ký</h4>
               <form:form action="/account/registration" method="post" modelAttribute="formDangKi">
               <div class="form-group">
				    <label for="username">Tên đăng nhập</label>
				    <input type="text" class="form-control" id="username" name="username" required="required">
				  </div>
				  <div class="form-group">
				    <label for="fullname">Họ và tên</label>
				    <input type="text" class="form-control" id="fullname" name="fullname" required="required">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputEmail1">Email</label>
				    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required="required">
				    <small id="emailHelp" class="form-text text-muted">Chúng tôi sẽ không bao giờ chia sẽ cho bất cứ ai.</small>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Password</label>
				    <input type="password" class="form-control" id="exampleInputPassword1" name="password" required="required">
				    <input type="hidden" name="role" value="USER" />
				    <input type="hidden" name="image" value="d5cf9425.png" />
				  </div>
				  <!-- reCAPTCHA -->
     			 <div class="g-recaptcha" data-sitekey="6LfeHJ4aAAAAAAOdv9e8olz9N9LSMvjgCpDKn8vg"></div>
				  <button type="submit" class="btn btn-primary">Đăng ký</button>
				  <c:if test="${!empty message}"><p>${message}</p></c:if>
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
      if (month < 10) month = "0" + month;
      if (day < 10) day = "0" + day;
      var today = year + "-" + month + "-" + day;
      document.getElementById('the-date').value = today;
</script>