<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daily Shop | Cart Page</title>

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







	<section id="checkout">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="checkout-area">

						<form action="ControllerCart">
							<input type="hidden" name="command" value="CHECKOUTSUCCESS">
							<div class="row">
								<div class="col-md-8">
									<div class="checkout-left">
										<div class="panel-group" id="accordion">
											<!-- Coupon section -->
											<div class="panel panel-default aa-checkout-coupon">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#collapseOne"> Have a Coupon? </a>
													</h4>
												</div>
												<div id="collapseOne" class="panel-collapse collapse in">
													<div class="panel-body">
														<input type="text" placeholder="Coupon Code"
															class="aa-coupon-code"> <input type="button"
															value="Apply Coupon" class="aa-browse-btn">
													</div>
												</div>
											</div>


											<!-- Shipping Address -->
											<div class="panel panel-default aa-checkout-billaddress">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#collapseFour"> Shippping Address </a>
													</h4>
												</div>
												<div id="collapseFour" class="panel-collapse collapse">
													<div class="panel-body">
														<div class="row">
															<div class="col-md-12">
																<div class="aa-checkout-single-bill">
																	<input type="text" required="required"
																		placeholder="Name">
																</div>
															</div>

														</div>

														<div class="row">

															<div class="col-md-12">
																<div class="aa-checkout-single-bill">
																	<input type="tel" placeholder="Phone*" required name="phone">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="aa-checkout-single-bill">
																	<textarea cols="8" rows="3" name="address"></textarea>
																</div>
															</div>
														</div>

														<div class="row"></div>
														<div class="row">
															<div class="col-md-6"></div>
															<div class="col-md-6"></div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="aa-checkout-single-bill">
																	<textarea cols="8" rows="3">Special Notes</textarea>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="checkout-right">
										<h4>Summary</h4>
										<div class="aa-order-summary-area">
											<table class="table table-responsive">

												<tbody>
													<tr>
														<th>Subtotal</th>
														<td>${sessionScope.total2}</td>
													</tr>
													<tr>
														<th>Discount</th>
														<td>0%</td>
													</tr>
													<tr>
														<th>Ship fee</th>
														<td>Free</td>
													</tr>
													<tr>
														<th>Payments</th>
														<td>${sessionScope.total2}</td>
													</tr>
												</tbody>

											</table>
										</div>
										<h4>Payment Method</h4>
										<div class="aa-payment-method">
											<label for="cashdelivery"> <input type="radio"
												id="cashdelivery" name="optionsRadios" checked> Cash
												on Delivery
											</label> <label for="paypal"><input type="radio" id="paypal"
												name="optionsRadios"> Via Paypal </label> <img
												src="img/payment.jpg" border="0"
												alt="PayPal Acceptance Mark">




										</div>
									</div>
								</div>
							</div>
							<input type="submit" value="Place Order" class="aa-browse-btn">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>










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

