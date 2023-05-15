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


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- / menu -->

	<!-- catg header banner section -->

	<!-- / catg header banner section -->

	<!--ADMIN BEGIN  -->
	<h2 class="text-center text-danger">MANAGER PAGE</h2>

	<c:url var="CategoriLink" value="Controller">
		<c:param name="command" value="GET_CATEGORY" />
	</c:url>
	<c:url var="ProductLink" value="Controller">
		<c:param name="command" value="GET_PRODUCT" />
	</c:url>

	<c:url var="OrderLink" value="Controller">
		<c:param name="command" value="GET_ORDER" />
	</c:url>


	<div class="container-fluid">
		<div class="row ">


			<div class="col-sm-5 pt-12 text-center"
				style="border: solid 1px blue; margin: 7px">
				<div class="card" style="background-color: white;">
					<div class="card-body">
						<h4 class="card-title">Categories</h4>
						<p class="card-text">Manage the categories section here.</p>
						<a href="${CategoriLink}" class="card-link btn btn-primary">Manage</a>

					</div>
				</div>
			</div>
			<div class="col-sm-5 pt-12 text-center"
				style="border: solid 1px blue; margin: 7px">
				<div class="card" style="background-color: white;">
					<div class="card-body">
						<h4 class="card-title">Products</h4>
						<p class="card-text">Manage the product section here.</p>
						<a href="${ProductLink}" class="card-link btn btn-primary">Manage</a>

					</div>
				</div>
			</div>
			<div class="col-sm-5 pt-12 text-center"
				style="border: solid 1px blue; margin: 7px">
				<div class="card" style="background-color: white;">
					<div class="card-body">
						<h4 class="card-title">Users</h4>
						<p class="card-text">Manage the users section here.</p>
						<a href="#" class="card-link btn btn-primary">Manage</a>

					</div>
				</div>
			</div>

			<div class="col-sm-5 pt-6 text-center"
				style="border: solid 1px blue; margin: 7px">
				<div class="card" style="background-color: white;">
					<div class="card-body">
						<h4 class="card-title">Orders</h4>
						<p class="card-text">Manage the orders section here.</p>
						<a href="${OrderLink }" class="card-link btn btn-primary">Manage</a>

					</div>
				</div>
			</div>


		</div>
	</div>



	<!--ADMIN END  -->





	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>



	<jsp:include page="footer.jsp"></jsp:include>
	<!-- / footer -->



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