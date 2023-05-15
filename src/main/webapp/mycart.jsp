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


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<!-- / header section -->
	<!-- menu -->

	<!-- / menu -->

	<!-- catg header banner section -->

	<!-- / catg header banner section -->

	<!-- Cart view section -->

	<form action="ControllerCart" method="get">
		<input type="hidden" name="command" value="CHECKOUT">


		<section id="cart-view">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="cart-view-area">
							<div class="cart-view-table">

								<div class="table-responsive">
									<table class="table ">
										<thead>
											<tr>
												<th></th>
												<th></th>
												<th>Product</th>
												<th>Price</th>
												<th>Quantity</th>
												<th>Total</th>
											</tr>
										</thead>
										<tbody>

											<!-- start a item  -->

											<c:forEach var="product" items="${sessionScope.cartItems}">




												<c:url var="deleteItemLink" value="ControllerCart">
													<c:param name="command" value="DELETEITEM" />
													<c:param name="productId" value="${product.key.product_id}" />
												</c:url>

												<input type="hidden" name="productId2"
													value="${product.key.product_id}">
												<tr>
													<td><a class="remove" href="${deleteItemLink }"><fa
																class="fa fa-trash"></fa></a></td>
													<td><a href="#"><img
															src="${product.key.product_image1 }" alt="img"></a></td>
													<td><a class="aa-cart-title" href="#">${product.key.product_name }</a></td>
													<td>${product.key.product_price }đ</td>
													<td><input class="aa-cart-quantity" type="number"
														value="${product.value }" min="1" max="10"
														onchange="updateTotal(this)" name="quatity"
														oninput="if (this.value > 10) {this.value = 10} if (this.value <= 0) {this.value = 1}"></td>
													<td class="subtotal">${product.key.product_price }đ</td>
												</tr>


											</c:forEach>


										</tbody>
									</table>
								</div>

								<!-- Cart Total view -->
								<div class="cart-view-total">
									<h4 style="display: inline;">Cart Totals:</h4>


									<input style="color: red" type="text" id="total" name="total"
										disabled> <br> <input type="hidden" id="total2"
										name="total2"> <br> <input type="submit"
										class="aa-cart-view-btn" value="Procced to Checkout">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>








	<jsp:include page="footer.jsp"></jsp:include>






	<script>
		function updateTotal(input) {
			var price = parseInt(input.parentNode.previousElementSibling.innerText
					.replace(/\D/g, ''));
			var quantity = parseInt(input.value);
			var subtotal = price * quantity;
			input.parentNode.nextElementSibling.innerText = subtotal
					.toLocaleString()
					+ ' đ';

			var subtotals = document.getElementsByClassName('subtotal');
			var total = 0;
			for (var i = 0; i < subtotals.length; i++) {
				total += parseInt(subtotals[i].innerText.replace(/\D/g, ''));
			}
			document.getElementById('total').value = total.toLocaleString()
					+ ' đ';
			document.getElementById('total2').value = total.toLocaleString()
			+ ' đ';
			document.getElementById('remain').innerText = total
					.toLocaleString()
					+ ' đ';
		}

		document.addEventListener('DOMContentLoaded', function() {
			var input = document.querySelector('.aa-cart-quantity');
			updateTotal(input);
		});
	</script>











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

