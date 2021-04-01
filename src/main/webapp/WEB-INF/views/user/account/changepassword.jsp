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
      <h2>Đổi mật khẩu</h2>
      <ol class="breadcrumb">
        <li><a href="/home/index">Trang chủ</a></li>                   
        <li style="color:#fff">Đổi mật khẩu</li>
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
              <div class="aa-myaccount-login">
              <h4>Đổi mật khẩu</h4>
               <form:form class="aa-login-form" name="loginform"  action="/account/changepassword" method="post" modelAttribute="changePass"> 
                <label for="">Mật khẩu cũ<span>*</span></label>
                 <input type="text"  name="passwordOld">
                 
                 <label for="">Mật khẩu mới<span>*</span></label>
                  <input type="password"  name="passwordNew">
                  
                  <label for="">Nhập lại mật khẩu mới<span>*</span></label>
                  <input type="password"  name="passwordNewAgain">
 
                  <c:if test="${!empty message}"><p>${message}</p></c:if>
                   <button type="submit" class="aa-browse-btn">Đổi mật khẩu</button>
                </form:form>
              </div>
            </div>
          </div>          
       </div>
     </div>
   </div>
 </div>
</section>