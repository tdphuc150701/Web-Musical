<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daily Shop | Account Page</title>

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
	<!-- / catg header banner section -->

	<!-- Cart view section -->
	<section id="aa-myaccount">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-myaccount-area">
						<div class="row">

							<div class="col-md-8">
								<div class="aa-myaccount-register">
									<h3>Register</h3>
									
									
									<h4 style="color:red">${notice}</h4>
									<form action="ControllerUser?command=REGISTER" method="POST" class="aa-login-form">
										<div>
											<span id="tbEmail" class="text-danger font-italic"></span>
										</div>
										<label for="">Name<span>*</span></label> <input
											id="txtNameo" name="name" type="text" placeholder="Full name">
										<br>
										
											
										<label for="txtEmail">Email address<span>*</span></label> <input
											id="txtEmail" name="email" type="text" placeholder="Username or email">
										<br> <label for="">Username<span>*</span></label> <input
											type="text" placeholder="Username or email" id="txtName" name="userName">

										<label for="">Password<span>*</span></label> <input
											type="password" placeholder="Password" id="txtPW" name="password"> <label
											for="">ConFirm Password<span>*</span></label> <input
											type="password" placeholder="ConFirm Password" id="txtPWCF">

										<button type="submit" id="btnDK" class="aa-browse-btn">Register</button>
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Cart view section -->

	<!-- footer -->
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


	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							$("#mnuDangky").click(function() {
								$("#myModal").modal();
							});

							function kiemtraTenDN() {
								//email
								let email = $("#txtEmail").val();
								let regexTenDN = /^[a-zA-Z][\w.-]*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z]{2,}$/i;

								//user

								let user = $("#txtName").val();
								let regexUser = /^\S+$/i;

								//pw
								let pw = $("#txtPW").val();
								let regexPW = /^\S+$/i;

								//pwcf
								let pwcf = $("#txtPWCF").val();

								if (email.trim() === '') {
									$("#tbEmail").html("Email thì bắt buộc");
									return false;
								}

								if (email.trim() !== ''
										&& !regexTenDN.test(email)) {
									$("#tbEmail")
											.html(
													"Email must follow the structure example@email.com");
									return false;
								}

								//user
								if (user.trim() === '') {
									$("#tbEmail").html("UserName thì bắt buộc");
									return false;
								}

								if (email.trim() !== ''
										&& !regexUser.test(user)) {
									$("#tbEmail")
											.html("no constain space");
									return false;
								}
								$("#tbEmail").html("");
								
								
								//PW
								if (pw.trim() === '') {
									$("#tbEmail").html("pw not empty");
									return false;
								}

								if (pw.trim() !== ''
										&& !regexPW.test(pw)) {
									$("#tbEmail")
											.html(
													"no constain space");
									return false;
								}
								
								//PW
								if (pwcf.trim() === '') {
									$("#tbEmail").html("pwcf not empty");
									return false;
								}

								if (pwcf.trim() !== ''
										&& pwcf !== pw    ) {
									$("#tbEmail")
											.html(
													"not equal");
									return false;
								}
								
								
								

								$("#tbEmail").html("");
								
								return true;
							}

							let i = 0;

							function dangky() {

								if (!kiemtraTenDN())
									return false;

							}

							$("#txtEmail").blur(kiemtraTenDN);
							$("#txtName").blur(kiemtraTenDN);
							$("#txtPW").blur(kiemtraTenDN);
							$("#txtPWCF").blur(kiemtraTenDN);
							$("#btnDK").click(dangky);
						})
	</script>


</body>
</html>