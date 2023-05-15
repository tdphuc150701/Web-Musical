<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="entity.Categories"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Music Shop | Home</title>

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
<!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
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
	<!-- header -->

	<jsp:include page="header.jsp"></jsp:include>
	<!-- / menu -->
	<!-- Start slider -->
	<section id="aa-slider">
		<div class="aa-slider-area">
			<div id="sequence" class="seq">
				<div class="seq-screen">
					<ul class="seq-canvas">
						<!-- single slide item -->
						<li>
							<div class="seq-model">
								<img data-seq src="img/slider/slide1.jpg" alt="Men slide img" />
							</div>
							<div class="seq-title">

							

							</div>
						</li>
						<!-- single slide item -->
						<li>
							<div class="seq-model">
								<img data-seq src="img/slider/slide2.jpg"
									alt="Wristwatch slide img" />
							</div>
							<div class="seq-title">

							

							</div>
						</li>
						<!-- single slide item -->
						<li>
							<div class="seq-model">
								<img data-seq src="img/slider/slide3.jpg"
									alt="Women Jeans slide img" />
							</div>
							<div class="seq-title">

							
							</div>
						</li>
						<!-- single slide item -->
						<li>
							<div class="seq-model">
								<img data-seq src="img/slider/silde4.jpg" alt="Shoes slide img" />
							</div>
							<div class="seq-title">

							

							</div>
						</li>
						<!-- single slide item -->
						<li>
							<div class="seq-model">
								<img data-seq src="img/slider/silde5.jpg"
									alt="Male Female slide img" />
							</div>
							<div class="seq-title">

							

							</div>
						</li>
					</ul>
				</div>
				<!-- slider navigation btn -->
				<fieldset class="seq-nav" aria-controls="sequence"
					aria-label="Slider buttons">
					<a type="button" class="seq-prev" aria-label="Previous"><span
						class="fa fa-angle-left"></span></a> <a type="button" class="seq-next"
						aria-label="Next"><span class="fa fa-angle-right"></span></a>
				</fieldset>
			</div>
		</div>
	</section>
	<!-- / slider -->
	<!-- Start Promo section -->
	<section id="aa-promo">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-promo-area">
						<div class="row">
							<!-- promo left -->
							<!-- promo right -->
							<div class="col-md-12 no-padding">
								<div class="aa-promo-right">
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img href="#PIANO"
												src="https://ductrimusic.vn/files/yamaha-gc1-n-m-i-1--5ECfvNsp1l.jpg"
												alt="img">
											<div class="aa-prom-content">

												<h4>
													<a href="#PIANO">Piano</a>
												</h4>
											</div>
										</div>
									</div>

									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img
												src="https://haycafe.vn/wp-content/uploads/2022/11/Hinh-anh-guitar.jpg"
												alt="img">
											<div class="aa-prom-content">

												<h4>
													<a href="#GUITAR">Guitar</a>
												</h4>
											</div>
										</div>
									</div>
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img
												src="https://vn-live-01.slatic.net/p/c5db28eb9c87c24ae579d1eb9a942878.jpg"
												alt="img">
											<div class="aa-prom-content">

												<h4>
													<a href="#FLUTE">Flute</a>
												</h4>
											</div>
										</div>
									</div>
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img
												src="https://vietthuong.vn/image/cache/catalog/suzuki-ns20fe-400x400.jpg"
												alt="img">
											<div class="aa-prom-content">

												<h4>
													<a href="#VIOLIN">Violin</a>
												</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Promo section -->
	<!-- Products section -->
	<section id="aa-product">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="aa-product-area">
							<div class="aa-product-inner">
								<!-- start prduct navigation -->
								<ul class="nav nav-tabs aa-products-tab">

									<c:forEach var="cate" items="${CATEGORIES}">

										<li><a href="#${cate.getCategories_name()}"
											data-toggle="tab" class="text-xl-center">${cate.getCategories_name()}</a></li>




										<div class="tab-content">
											<!-- Start men product category -->
											<div class="tab-pane fade in active"
												id="${cate.getCategories_name()}">
												<ul class="aa-product-catg">
													<!-- start single product item -->


													<c:forEach items="${cate.products}" var="product">


														<c:url var="tempLink" value="Controller">
															<c:param name="command" value="GET" />
															<c:param name="productId" value="${product.product_id}" />
														</c:url>


														<c:url var="addCartLink" value="ControllerCart">
															<c:param name="command" value="ADDTOCART" />
															<c:param name="productId" value="${product.product_id}" />
														</c:url>


														<li>
															<figure>
																<input type="hidden" name="pdID" value="6">
																<a class="aa-product-img" href="${tempLink }"> <img
																	style="width: 200px; height: 300px"
																	src="img/imgRS/${product.product_image1}" alt="polo shirt img"
																	
																	
																	onerror="this.onerror=null;this.src='${product.product_image1}';"
																	
																	></a>
																	
																	
																


																<c:choose>
																	<c:when test="${sessionScope.user == null}">


																	</c:when>
																	<c:otherwise>
																		<a class="aa-add-card-btn alert alert-primary"
																			onclick="showAlert()" href="${addCartLink }"><span
																			class="fa fa-shopping-cart"></span>Add To Cart</a>

																	</c:otherwise>
																</c:choose>







																<figcaption>
																	<h4 class="aa-product-title">
																		<a href="#">${product.product_name }</a>
																	</h4>
																	<span class="aa-product-price">${product.product_price } đ</span>
																</figcaption>
															</figure>
															<div class="aa-product-hvr-content"></div> <!-- product badge -->
															<span class="aa-badge aa-sale" href="#">SALE!</span>
														</li>

													</c:forEach>


												</ul>
											</div>
									</c:forEach>

								</ul>

							</div>

							<!-- / quick view modal -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Products section -->
	<!-- banner section -->
	<section id="aa-banner">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="aa-banner-area">
							<a href="#"><img src="img/fashion-banner.jpg"
								alt="fashion banner img"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- popular section -->




	<!-- Subscribe section -->
	<section id="aa-subscribe">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-subscribe-area">
						<h3>Subscribe our newsletter</h3>

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


	<%@ include file="footer.jsp"%>
	<!-- / footer -->

	<!-- Login Modal -->
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4>Login</h4>
					<form class="aa-login-form" action="ControllerUser" method="post">
						<label for="">Username or Email address<span>*</span></label> <input
							type="text" placeholder="Username or email" name="username">
						<label for="">Password<span>*</span></label> <input
							type="password" placeholder="Password" name="password">
						<button class="aa-browse-btn" type="submit">Login</button>
						<label for="rememberme" class="rememberme"><input
							type="checkbox" id="rememberme"> Remember me!! </label>
						<p class="aa-lost-password">
							<a href="#">Lost your password?</a>
						</p>
						<div class="aa-register-now">
							Don't have an account?<a href="regiterForm.jsp">Register now!</a>
						</div>
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

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

	<script>
		function showAlert() {
			alert("Add to cart cusscessfull! Click ok to continue ");
		}
	</script>

</body>

</html>