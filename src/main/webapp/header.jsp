<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- wpf loader Two -->
<div id="wpf-loader-two">
	<div class="wpf-loader-two-inner">
		<span>Loading</span>
	</div>
</div>
<!-- / wpf loader Two -->
<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
<!-- END SCROLL TOP BUTTON -->



<!-- Start header section -->
<header id="aa-header">
	<!-- start header top  -->
	<div class="aa-header-top">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-header-top-area">
						<!-- start header top left -->
						<div class="aa-header-top-left">
							<!-- start language -->
							<div class="aa-language">
								<div class="dropdown">
									<a class="btn dropdown-toggle" href="#" type="button"
										id="dropdownMenu1" data-toggle="" aria-haspopup="true"
										aria-expanded="true"> <img src="img/flag/vietnam.jpg"
										alt="vietnam flag">VIỆT NAM MÃI ĐỈNH

									</a>

								</div>
							</div>
							<!-- / language -->

							<!-- start currency -->

							<!-- / currency -->
							<!-- start cellphone -->
							<div class="cellphone hidden-xs">
								<p>
									<span class="fa fa-phone"></span>0984-218-514
								</p>
							</div>



							<c:choose>
								<c:when test="${sessionScope.user == null}">

									<div class="cellphone hidden-xs">
										<p>
											<b><span style="color: red; font-size: larger;">Please
													login to shopping</span></b>
										</p>
									</div>
								</c:when>
								<c:otherwise>

								</c:otherwise>
							</c:choose>



							<!-- / cellphone -->
						</div>
						<!-- / header top left -->
						<div class="aa-header-top-right">
							<ul class="aa-head-top-nav-right">





								<%
								if (!(session.getAttribute("user") == null)) {
									out.println("<li><a>" + session.getAttribute("user") + "</a></li>");
									System.out.println(session.getAttribute("user"));
								}
								%>









								<c:choose>
									<c:when test="${sessionScope.user == null}">

										<li><a href="" data-toggle="modal"
											data-target="#login-modal">Login</a></li>
									</c:when>
									<c:otherwise>
										<li><c:url var="ViewOrderUserLink" value="Controller">
												<c:param name="command" value="VIEWORDERUSER" />
												<c:param name="UserId" value="${sessionScope.user.user_id}" />
											</c:url>

											<div class="dropdown show">
												<a class="btn btn-secondary dropdown-toggle" href="#"
													role="button" id="dropdownMenuLink" data-toggle="dropdown"
													aria-haspopup="true" aria-expanded="false"> My Account</a>

												<div class="dropdown-menu"
													aria-labelledby="dropdownMenuLink">
													<a class="dropdown-item" href="${ViewOrderUserLink }">View Order</a> <a
														class="dropdown-item" href="#">Manager Account</a>

												</div>
											</div></li>




										<li><a href="ControllerUser?command=LOGOUT">Logout</a></li>

									</c:otherwise>
								</c:choose>














							</ul>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- / header top  -->

	<!-- start header bottom  -->
	<div class="aa-header-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-header-bottom-area">
						<!-- logo  -->
						<div class="aa-logo">
							<!-- Text based logo -->
							<a href="Controller"> <span class="fa fa-heart-o"></span>
								<p>
									Music <strong>Shop</strong> <span>Music is what feelings
										sound like</span>
								</p>
							</a>
							<!-- img based logo -->
							<!-- <a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
						</div>
						<!-- / logo  -->




						<c:choose>
							<c:when test="${sessionScope.user == null}">



							</c:when>
							<c:otherwise>

								<!-- cart box -->
								<div class="aa-cartbox">
									<a class="aa-cart-link" href="mycart.jsp"> <span
										class="fa fa-shopping-basket"></span> <span
										class="aa-cart-title">SHOPPING CART</span> <span
										class="aa-cart-notify">${sessionScope.cartItems.size()}</span>
									</a>
								</div>

							</c:otherwise>
						</c:choose>






						<!-- / cart box -->
						<!-- search box -->
						<div class="aa-search-box">
							<form action="">
								<input type="text" name="" id="" placeholder="Search here">
								<button type="submit">
									<span class="fa fa-search"></span>
								</button>
							</form>
						</div>
						<!-- / search box -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- / header bottom  -->
</header>
<!-- / header section -->
<!-- menu -->
<section id="menu">
	<div class="container">
		<div class="menu-area">
			<!-- Navbar -->
			<div class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<!-- Left nav -->
					<ul class="nav navbar-nav">
						<li><a href="Controller">Home</a></li>
						<li><a href="#">Categories<span class="caret"></span></a>
							<ul class="dropdown-menu">




								<%-- <%
									List<Categories> categories = (List<Categories>) session.getAttribute("category");
									
									out.println("<li><a>" + categories + "</a></li>");
									
									%> --%>


								<c:forEach var="cate" items="${sessionScope.category}">

									<li><a href="Controller#${cate.getCategories_name()}">${cate.getCategories_name()}</a></li>

								</c:forEach>




							</ul></li>




						<li><a href="contact.jsp">Contact</a></li>
						<li><a href="aboutus.jsp">About Us</a></li>





						<c:choose>
							<c:when test="${sessionScope.user.user_isAdmin == 1}">


								<li><a style="color: red" href="adminManager.jsp">ADMIN
										PAGE</a></li>
							</c:when>
							<c:otherwise>

								

							</c:otherwise>
						</c:choose>




					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
</section>
<!-- / menu -->
<!-- Start slider -->

<!-- / slider -->
<!-- Start Promo section -->

<!-- Login Modal -->
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4>Login</h4>
				<form class="aa-login-form" action="ControllerUser?command=LOGGIN"
					method="post">
					<label for="">Username or Email address<span>*</span></label> <input
						type="text" placeholder="Username or email" name="username">
					<label for="">Password<span>*</span></label> <input type="password"
						placeholder="Password" name="password">
					<button class="aa-browse-btn" type="submit">Login</button>
					<!-- <label for="rememberme" class="rememberme"><input
						type="checkbox" id="rememberme"> Remember me!! </label> -->
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
