<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
   <!--  content -->
    <!-- catg header banner section -->
    <section id="aa-catg-head-banner">
        <img src="/static/assets/images/blog-banner.png" alt="banner blog">
        <div class="aa-catg-head-banner-area">
            <div class="container">
                <div class="aa-catg-head-banner-content">
                    <h2>Chi tiết bài viết</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Trang chủ</a></li>
                        <li style="color:#fff">Bài viết</li>
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
                            <div class="col-md-8">
                                <!-- Blog details -->
                                <div class="aa-blog-content aa-blog-details">
                                    <article class="aa-blog-content-single">
                                        <h2><a href="#">${newDetail.title}</a></h2>
                                        <div class="aa-article-bottom">
                                            <div class="aa-post-author">
                                                Đăng bởi <a href="#">${newDetail.accountEntity.fullname}</a>
                                            </div>
                                            <div class="aa-post-date">${newDetail.createDate}</div>
                                        </div>
                                        <figure class="aa-blog-img">
                                            <a href="#"><img width="100%" height="350px" src="/static/images/news/${newDetail.image}" alt=""></a>
                                        </figure>
                                        ${newDetail.content}

                                    </article>
                                </div>
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
                                                        <h4><a href="chiTietTinTuc.html"><b>${element.title} </b></a></h4>
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
        </div>
    </section>
    <!-- / Blog Archive -->
    <!--  end content-->
