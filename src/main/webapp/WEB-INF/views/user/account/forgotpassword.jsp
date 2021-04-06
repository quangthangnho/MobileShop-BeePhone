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
      <h2>Quên Mật Khẩu</h2>
      <ol class="breadcrumb">
        <li><a href="index.html">Trang chủ</a></li>                   
        <li style="color:#fff">Quên mật khẩu</li>
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
     
            <div class="col-md-5 col-md-push-2">
              <div class="aa-myaccount-register">                 
               <h4>Quên mật khẩu</h4>
               <form:form action="/account/forgot" method="post" modelAttribute="formForgot">
               <div class="form-group">
				    <label for="username">Email</label>
				    <input type="email" class="form-control" id="email" name="email" required="required">
				  </div>
				  <button type="submit" class="btn btn-primary">Submit</button>
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
