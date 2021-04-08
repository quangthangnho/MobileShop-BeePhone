<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
  <!--  content -->
  <!-- catg header banner section -->
  <form method="get" action="/home/news" id="formSubmit">
  <section id="aa-catg-head-banner">
    <img src="/static/assets/images/archive1-banner.png" alt="banner blog">
    <div class="aa-catg-head-banner-area">
      <div class="container">
        <div class="aa-catg-head-banner-content">
          <h2>Tin tức</h2>
          <ol class="breadcrumb">
            <li><a href="index.html">Trang chủ</a></li>
            <li style="color:#fff">Tin tức</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
  <!-- / catg header banner section -->

  <!-- Blog Archive -->
  <section id="aa-blog-archive">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-blog-archive-area">
            <div class="row">
              <div class="col-md-12">
                <div class="aa-blog-content">
                  <div class="row">
                  <div class="col-md-6 col-sm-6">
                  <c:forEach items="${pageNew.getContent()}" var="element">                    
                        <article class="aa-blog-content-single">                          
                          <div class="col-md-7">
                          	<figure class="aa-blog-img">
                            <a href="chiTietTinTuc.html"><img src="/static/images/news/d8acd3bf.jpg" alt="farm products" height="180px"
                                width="300px"></a>
                          </figure>
                          </div>
                          <div class="col-md-5">
                           <h4 ><a style="height: 40px;" href="">${element.title}</a></h4>
                          <p class="desc-boardnews" style="height: 50px;">${element.content}</p>
                          </div>
                         
                          <div class="aa-article-bottom">
                            <div class="aa-post-author" style="margin-left: 16px;">
                              Đăng bởi <a href="#">${element.accountEntity.fullname}</a>
                            </div>
                            <div class="aa-post-date">${element.startDate}</div>
                          </div>
                        </article>                   
                      </c:forEach>
                      </div>
                      <div class="col-md-4 col-sm-6" style="float: right;">
                      <div class="card">
                      	<div class="card-header">
                      		Bài viết mới nhất
                      	</div>
                      	<div class="card-body" style="font-size: 10px">
							<c:forEach items="${listNew}" var="element" begin="0" end="3">                    
                        <article class="aa-blog-content-single">                          
                          <div class="col-md-4">
                          	<figure class="aa-blog-img">
                            <a href="chiTietTinTuc.html"><img src="/static/images/news/d8acd3bf.jpg" alt="farm products" height="50px"
                                width="100%"></a>
                          </figure>
                          </div>
                          <div class="col-md-8">
                           
                          <p class="desc-boardnews" style="height: 50px;">${element.title}</p>
                          </div>
                         
                          <div class="aa-article-bottom">
                            <div class="aa-post-author" style="margin-left: 16px;">
                              Đăng bởi <a href="#">${element.accountEntity.fullname}</a>
                            </div>
                            <div class="aa-post-date">${element.startDate}</div>
                          </div>
                        </article>                   
                      </c:forEach>        	
                      	</div>
                      </div>
                      <div>
                      </div>
                  </div>
                </div>
                <!-- Blog Pagination -->

              </div>

			<ul id="pagination" class="pagination-lg"></ul>
			<input type="hidden" value="" id="page" name="page"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Blog Archive -->

  <!--  end content-->
  
  
  </form>