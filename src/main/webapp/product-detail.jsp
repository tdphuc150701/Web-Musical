<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daily Shop | Product Detail</title>

<!-- Font awesome -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
<!-- slick slider -->
<link rel="stylesheet" type="text/css" href="css/slick.css">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css" href="css/nouislider.css">
<!-- Theme color -->
<link id="switcher" href="css/theme-color/default-theme.css"
	rel="stylesheet">
<!-- Top Slider CSS -->
<link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet"
	media="all">

<!-- Main style sheet -->
<link href="css/style.css" rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>




</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<c:url var="addCartLink" value="ControllerCart">
		<c:param name="command" value="ADDTOCART" />
		<c:param name="productId" value="${PRODUCT.product_id}" />

	</c:url>
	<!-- product category -->
	<form action="ControllerCart">
		<input type="hidden" name="command" value="ADDTOCART"> <input
			type="hidden" name="productId" value="${PRODUCT.product_id}">
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
														<a data-lens-image="${PRODUCT.product_image1} "
															class="simpleLens-lens-image"> <img width="250px"
															height="300px" src="${PRODUCT.product_image1}"
															class="simpleLens-big-image"></a>
													</div>
												</div>
												<div class="simpleLens-thumbnails-container">
													<a data-big-image="${PRODUCT.product_image1}"
														data-lens-image="${PRODUCT.product_image1}"
														class="simpleLens-thumbnail-wrapper" href="#"> <img
														width="45px" height="55px" src="${PRODUCT.product_image1}">
													</a> <a data-big-image="${PRODUCT.product_image2}"
														data-lens-image="${PRODUCT.product_image2}"
														class="simpleLens-thumbnail-wrapper" href="#"> <img
														width="45px" height="55px" src="${PRODUCT.product_image2}">
													</a> <a data-big-image="${PRODUCT.product_image3}"
														data-lens-image="${PRODUCT.product_image3}"
														class="simpleLens-thumbnail-wrapper" href="#"> <img
														width="45px" height="55px" src="${PRODUCT.product_image3}">
													</a>
												</div>
											</div>
										</div>
									</div>
									<!-- Modal view content -->
									<div class="col-md-7 col-sm-7 col-xs-12">
										<div class="aa-product-view-content">
											<h3>${PRODUCT.product_name}</h3>
											<div class="aa-price-block">
												<span class="aa-product-view-price">$34.99</span>
												<p class="aa-product-avilability">
													Avilability: <span>In stock</span>
												</p>
											</div>
											<p>${PRODUCT.product_description_short}</p>


											<div class="aa-prod-quantity">
												<td><input type="number" min="1" max="10"
													name="quatity" value="1"
													oninput="if (this.value > 10) {this.value = 10} if (this.value <= 0) {this.value = 1}"></td>




												<p class="aa-prod-category">
													Category: <a href="Controller#${PRODUCT.categories.categories_name}">${PRODUCT.categories.categories_name}</a>
												</p>
											</div>

											<div class="aa-prod-view-bottom">



												<c:choose>
													<c:when test="${sessionScope.user == null}">


													</c:when>
													<c:otherwise>
														<input type="submit" class="aa-add-to-cart-btn"
															value="Add To Cart">

													</c:otherwise>
												</c:choose>




											</div>
										</div>
									</div>
								</div>
								<div class="aa-product-details-bottom">
									<ul class="nav nav-tabs" id="myTab2">
										<li><a href="#description" data-toggle="tab">Description</a></li>
										<li><a href="#review" data-toggle="tab">Reviews</a></li>
									</ul>



									<!-- Tab panes -->
									<div class="tab-content">
										<div class="tab-pane fade in active" id="description">
											<p>${PRODUCT.product_description_full}</p>

										</div>
										<div class="tab-pane fade " id="review">
											<div class="aa-product-review-area">
												<h4>Reviews</h4>
												<ul class="aa-review-nav">
													<li>
														<div class="media">
															<div class="media-left">
																<a href="#"> <img class="media-object"
																	src="img/testimonial-img-3.jpg" alt="girl image">
																</a>
															</div>
															<div class="media-body">
																<h4 class="media-heading">
																	<strong>Marla Jobs</strong> - <span>March 26,
																		2023</span>
																</h4>
																<div class="aa-product-rating">
																	<span class="fa fa-star"></span> <span
																		class="fa fa-star"></span> <span class="fa fa-star"></span>
																	<span class="fa fa-star"></span> <span
																		class="fa fa-star-o"></span>
																</div>
																<p>Nice.</p>
															</div>
														</div>
													</li>
													<li>
														<div class="media">
															<div class="media-left">
																<a href="#"> <img class="media-object"
																	src="img/testimonial-img-3.jpg" alt="girl image">
																</a>
															</div>
															<div class="media-body">
																<h4 class="media-heading">
																	<strong>Marla Jobs</strong> - <span>March 26,
																		2023</span>
																</h4>
																<div class="aa-product-rating">
																	<span class="fa fa-star"></span> <span
																		class="fa fa-star"></span> <span class="fa fa-star"></span>
																	<span class="fa fa-star"></span> <span
																		class="fa fa-star-o"></span>
																</div>
																<p>OK</p>
															</div>
														</div>
													</li>
												</ul>
												<h4>Add a review</h4>
												<div class="aa-your-rating">
													<p>Your Rating</p>
													<a href="#"><span class="fa fa-star-o"></span></a> <a
														href="#"><span class="fa fa-star-o"></span></a> <a
														href="#"><span class="fa fa-star-o"></span></a> <a
														href="#"><span class="fa fa-star-o"></span></a> <a
														href="#"><span class="fa fa-star-o"></span></a>
												</div>
												<!-- review form -->
												<form action="" class="aa-review-form">
													<div class="form-group">
														<label for="message">Your Review</label>
														<textarea class="form-control" rows="3" id="message"></textarea>
													</div>
													<div class="form-group">
														<label for="name">Name</label> <input type="text"
															class="form-control" id="name" placeholder="Name">
													</div>
													<div class="form-group">
														<label for="email">Email</label> <input type="email"
															class="form-control" id="email"
															placeholder="example@gmail.com">
													</div>

													<button type="submit"
														class="btn btn-default aa-review-submit">Submit</button>
												</form>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
		</section>

	</form>
	<!-- / product category -->


	<!-- Subscribe section -->
	<section id="aa-subscribe">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-subscribe-area">
						<h3>Subscribe our newsletter</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Ex, velit!</p>
						<form action="" class="aa-subscribe-form">
							<input type="email" name="" id="" placeholder="Enter your Email">
							<input type="submit" value="Subscribe">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Subscribe section -->

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>



	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.js"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript" src="js/jquery.smartmenus.js"></script>
	<!-- SmartMenus jQuery Bootstrap Addon -->
	<script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
	<!-- To Slider JS -->
	<script src="js/sequence.js"></script>
	<script src="js/sequence-theme.modern-slide-in.js"></script>
	<!-- Product view slider -->
	<script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
	<script type="text/javascript" src="js/jquery.simpleLens.js"></script>
	<!-- slick slider -->
	<script type="text/javascript" src="js/slick.js"></script>
	<!-- Price picker slider -->
	<script type="text/javascript" src="js/nouislider.js"></script>
	<!-- Custom js -->
	<script src="js/custom.js"></script>

</body>
</html>