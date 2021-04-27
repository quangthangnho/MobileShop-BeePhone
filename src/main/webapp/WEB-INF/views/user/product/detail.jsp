<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%><!-- nhúng thư viện core -->
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<!--  content -->
<!-- catg header banner section -->
<section id="aa-catg-head-banner">
	<img src="/static/assets/images/banner1-product.png"
		alt="banner sản phẩm">
	<div class="aa-catg-head-banner-area">
		<div class="container">
			<div class="aa-catg-head-banner-content">
				<h2>Chi tiết sản phẩm</h2>
				<ol class="breadcrumb">
					<li><a href="/home/index">Trang chủ</a></li>
					<li><a href="/product/list">Sản phẩm</a></li>
					<li style="color: #fff">${prod.name}</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<!-- / catg header banner section -->

<!-- product category -->
<section id="aa-product-details">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-product-details-area">
					<div class="aa-product-details-content">
						<div class="row">
							<!-- Modal view slider -->

							<div class="col-md-5 col-sm-5 col-xs-12">
								<div class="aa-product-view-slider">
									<div id="demo-1" class="simpleLens-gallery-container">
										<div class="simpleLens-container">
											<div class="simpleLens-big-image-container">
												<a
													data-lens-image="/static/assets-a/assets/images/products/${prod.image}"
													class="simpleLens-lens-image"><img
													src="/static/assets-a/assets/images/products/${prod.image}"
													class="simpleLens-big-image"></a>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- Modal view content -->

							<div class="col-md-7 col-sm-7 col-xs-12">
								<div class="aa-product-view-content">
									<h3>${prod.name}</h3>
									<div class="aa-price-block">

										<span class="aa-product-price gach">
										<del><fmt:formatNumber value="${prod.unitPrice}" minFractionDigits="0" /> VNĐ</del></span> 
										<span class="aa-product-price 3e_UQT"><strong><fmt:formatNumber value="${prod.unitPrice * (100- prod.discount)/100}" minFractionDigits="0" /> VNĐ</strong></span> 
										<span class="aa-product-price abc"><strong>${prod.discount}%</strong></span>

										<p class="aa-product-avilability">
											Tình trạng: còn hàng <span> </span>
										</p>
									</div>
									<p>${prod.description}</p>

									<div class="aa-prod-quantity">
										<p class="aa-prod-category">
											<strong>Danh mục:</strong> <a href="">${prod.categoryProduct.name}</a>
										</p>
									</div>
									<div class="aa-prod-view-bottom">
										<%@include file="_buttons2.jsp"%>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- thông số kỹ thuật -->

					<button
						onclick="document.getElementById('id01').style.display='block'"
						style="width: auto;" class="color">Thông số kỹ thuật</button>

					<div id="id01" class="modal">

						<form class="modal-content animate" action="" method="post">
							<div class="imgcontainer">
								<span
									onclick="document.getElementById('id01').style.display='none'"
									class="close" title="Close Modal">&times;</span> <img
									src="/static/assets-a/assets/images/products/${prod.image}"
									alt="Avatar" class="avatar">
							</div>

							<div class="container bscroll">
								<ul class="parameterfull">
									<li data-id="29" data-index="1"><label>Thông số kỹ
											thuật</label></li>

									<li data-id="6459" data-index="1" class="g6459 p233130 ">
										<span>Màn hình: </span>
										<div>
											<a href="" target="_blank">${prod.manHinh}</a>
										</div>
									</li>

									<li data-id="6459" data-index="1" class="g6459 p233130 ">
										<span>Hệ điều hành:</span>
										<div>
											<a href="" target="_blank">${prod.heDieuHanh}</a>
										</div>
									</li>

									<li data-id="6459" data-index="1" class="g6459 p233130 ">
										<span>Camera sau: </span>
										<div>
											<a href="" target="_blank">${prod.cameraSau}</a>
										</div>
									</li>

									<li data-id="6459" data-index="1" class="g6459 p233130 ">
										<span>Camera trước:</span>
										<div>
											<a href="" target="_blank">${prod.cameraTruoc}</a>
										</div>
									</li>

									<li data-id="6459" data-index="1" class="g6459 p233130 ">
										<span>CPU:</span>
										<div>
											<a href="" target="_blank">${prod.cpu}</a>
										</div>
									</li>

									<li data-id="6459" data-index="1" class="g6459 p233130 ">
										<span>RAM:</span>
										<div>
											<a href="" target="_blank">${prod.ram}</a>
										</div>
									</li>

									<li data-id="6459" data-index="1" class="g6459 p233130 ">
										<span>Bộ nhớ trong:</span>
										<div>
											<a href="" target="_blank">${prod.boNhoTrong}</a>
										</div>
									</li>

									<li data-id="6459" data-index="1" class="g6459 p233130 ">
										<span>Dung lượng pin:</span>
										<div>
											<a href="" target="_blank">${prod.dungLuongPin}</a>
										</div>
									</li>

								</ul>


							</div>

							<div class="container">
								<button type="button"
									onclick="document.getElementById('id01').style.display='none'"
									class="cancelbtn">Cancel</button>

							</div>
						</form>
					</div>


					<!-- thông số kỹ thuật -->


					<div class="aa-product-details-bottom">
						<ul class="nav nav-tabs aa-products-tab" id="myTab2">
							<li class="active"><a href="#description" data-toggle="tab"
								class="">MÔ TẢ</a></li>
							<li><a href="#review" data-toggle="tab">ĐÁNH GIÁ</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane fade in active" id="description">
								<p>${prod.description}</p>

							</div>
							<div class="tab-pane fade " id="review">
								<div class="aa-product-review-area">
									<ul class="aa-review-nav">

										<li>
											<div class="media">
												<div class="media-body">
													<h4 class="media-heading">
														<strong>name</strong> - <span>created</span>
													</h4>
													<div class="aa-product-rating">
														<span class="fa fa-star"></span> <span class="fa fa-star"></span>
														<span class="fa fa-star"></span> <span class="fa fa-star"></span>
														<span class="fa fa-star"></span>
													</div>
													<p>WWS DÁNH GIÁ</p>
												</div>
											</div>
										</li>

									</ul>
									<h4>Thêm đánh giá</h4>

									<!-- review form -->
									<form action="" method="post" class="aa-review-form">
										<div class="form-group">
											<label for="name">Tên</label> <input type="text"
												class="form-control" id="name" placeholder="Name"
												name="name">
										</div>
										<div class="form-group">
											<label for="email">Email</label> <input type="email"
												class="form-control" id="email"
												placeholder="example@gmail.com" name="email">
										</div>
										<div class="form-group">
											<label for="message">Đánh giá của bạn</label>
											<textarea class="form-control" rows="3" id="content"
												name="content"></textarea>
										</div>

										<button type="submit" class="btn btn-default aa-review-submit">Gửi</button>
									</form>
								</div>
							</div>
						</div>
					</div>

					<!-- Related product -->
					<div class="aa-product-related-item">
						<h3>SẢN PHẨM LIÊN QUAN</h3>
						<ul class="aa-product-catg aa-related-item-slider">
							<!-- start single product item -->
							<c:forEach var="p" items="${prod.categoryProduct.products}">
								<li>
									<figure>
										<a class="aa-product-img" href="/product/detail/${p.id}">
											<img
											src="/static/assets-a/assets/images/products/${prod.image}"
											alt="" style="padding: 40px 30px 20px 20px;">
										</a>



										<%@include file="_buttons.jsp"%>
										<figcaption>
											<h4 class="aa-product-title">
												<a href="/product/detail/${p.id}">${p.name}"</a>
											</h4>
											<span class="aa-product-price"><fmt:formatNumber value="${p.unitPrice}" minFractionDigits="0" /> VNĐ</span><span
												class="aa-product-price"></span> <span
												class="aa-product-price"><del><fmt:formatNumber value="${p.unitPrice}" minFractionDigits="0" /> VNĐ</del></span>

										</figcaption>
									</figure> <!-- product badge --> <span class="aa-badge aa-sale">${p.discount}%</span>
								</li>
							</c:forEach>
							<!-- start single product item -->
						</ul>
					</div>


				</div>
			</div>
		</div>
	</div>
</section>
<!-- / product category -->
<!--  end content-->