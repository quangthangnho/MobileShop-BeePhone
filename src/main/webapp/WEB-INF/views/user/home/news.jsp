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
   <!-- Blog Archive -->
    <section id="aa-blog-archive">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-blog-archive-area">
                        <div class="row">
                            <div class="col-md-8">
                                <!-- Blog details -->
                                <c:forEach items="${pageNew.getContent()}" var="element">
                                <div class="aa-blog-content aa-blog-details">
                                    <article class="aa-blog-content-single">
                                        <h2><a href="/home/new-detail/${element.id}">${element.title}</a></h2>
                                        
                                        <figure class="aa-blog-img">
                                            <a href="/home/new-detail/${element.id}"><img height="350px" width="100%" src="/static/images/news/${element.image}" alt=""></a>
                                        </figure>
                                         <div class="des" style="width: 100%">${element.content}</div>
											<div class="aa-article-bottom">
                                            <div class="aa-post-author">
                                                Đăng bởi ${element.accountEntity.fullname}
                                            </div>
                                            <div class="aa-post-date">${element.createDate}</div>
                                        </div>
                                    </article>
                                </div>
                                </c:forEach>
                            </div>
                            <!-- blog sidebar -->
                            <div class="col-md-3" style="float: right;">
                                <aside class="aa-blog-sidebar">
                                    <div class="aa-sidebar-widget">
                                        <h3>Bài đăng mới nhất</h3>
                                        <c:forEach items="${listNew}" var="element" begin="0" end="4">
                                        <div class="aa-recently-views">
                                            <ul>
                                                <li>
                                                    <a class="aa-cartbox-img" href="#"><img src="/static/images/news/${element.image}"
                                                            alt="img bài viết"></a>
                                                    <div class="aa-cartbox-info">
                                                        <h4><a href="/home/new-detail/${element.id}"><b>${element.title} </b></a></h4>
                                                        <p>${element.createDate}</p>
                                                    </div>
                                                </li>

                                            </ul>
                                        </div>
                                       </c:forEach>
                                    </div>
                                </aside>
                            </div>                  
                        </div>
                       
                    </div>
                </div>
            </div>
             <ul id="pagination" class="pagination-lg"></ul>
			<input type="hidden" value="" id="page" name="page"/>
        </div>
    </section>
  <!-- / Blog Archive -->
			
  <!--  end content-->
  
  
  </form>