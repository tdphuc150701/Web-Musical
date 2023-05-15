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
	<!-- / menu -->

	<!-- catg header banner section -->

	<!-- / catg header banner section -->

	<!--ADMIN BEGIN  -->
	<h2 class="text-center text-danger">MANAGER ORDER</h2>

	<div class="container-fluid">

		
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name Custumer</th>
					<th scope="col">SDT</th>
					<th scope="col">Address</th>
					<th scope="col">Date</th>
					<th scope="col">Bill</th>
					<th scope="col">Detail</th>
				</tr>
			</thead>

			<c:forEach var="order" items="${ORDERS}">
			
				<c:url var="detailLink" value="Controller">
					<c:param name="command" value="ORDERDETAIL" />
					<c:param name="orderID" value="${order.id }" />
				</c:url>
		

				<tr>
					<th>${order.id }</th>
					<td>${order.order_user.name}</td>
					<td>${order.order_sdt}</td>
					<td>${order.delivery_address}</td>
					<td>${order.order_date}</td>
					<td>${order.billTotal}</td>
					<td><a href="${detailLink }" class="btn btn-warning">View detail</a></td>

				</tr>
			</c:forEach>



		</table>
	</div>

	<a href="adminManager.jsp"> Back</a>







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



<jsp:include page="footer.jsp"></jsp:include>sp
	


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