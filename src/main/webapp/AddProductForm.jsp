<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

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


	<!--ADMIN BEGIN  -->
	<h2 class="text-center text-danger">MANAGER PAGE</h2>




	<div class="row" style="margin: 20px">
		<div class="col-sm-12">
			<form method="POST" action="Controller?command=ADDPRODUCT">
				<input type="hidden" name="id">
				<div class="row">
					<div class="col-sm-6">

						<input type="hidden" name="id">
						<div class="form-group">
							<label for="name">Name</label> <input type="text"
								class="form-control" required name="name" id="name"
								placeholder="Enter name">

						</div>

						<div class="form-group">
							<label for="brand">Brand</label> <input type="text"
								class="form-control" required name="brand" id="brand"
								placeholder="Enter brand">


						</div>
						<div class="form-group">
							<label for="price">Price</label> <input type="number"
								class="form-control" required name="price" id="price"
								placeholder="Price" min="1">
						</div>

						<div class="form-group">
							<label for="quatity">Quatity</label> <input type="number"
								class="form-control" required id="quatity" name="quatity"
								placeholder="quatity" min="1" max="3000">
						</div>
						<div class="form-group">
							<label for="category">Select Category</label> <select
								class="form-control" id="category" name="category">
								<c:forEach var="cate" items="${sessionScope.category}">
									<option value="${cate.categories_id }">${cate.categories_name }</option>

								</c:forEach>
							</select>
						</div>




						<div class="form-group">
							<label for="name">Short Desciption</label> <input type="text"
								class="form-control" name="shortdesciption" id="name"
								placeholder="Enter name">

						</div>
						<div class="form-group">
							<label for="description">Product Description</label>
							<textarea class="form-control" rows="5" name="description"
								id="description"></textarea>
						</div>
					</div>
					<div class="col-sm-6">
						<p>Product Image</p>
						<div class="custom-file">
							<input type="file" class="custom-file-input1"
								name="productImage1" accept="image/jpeg, image/png"
								id="productImage1"  required/> <label class="custom-file-label1"
								for="productImage1" >Choose file</label>
						</div>

						<div class="form-group">
							<img src="#" id="imgPreview1" height="100px" width="100px"
								style="margin-top: 20px" alt=" ">
						</div>


						<div class="custom-file">
							<input type="file" class="custom-file-input2"
								name="productImage2" accept="image/jpeg, image/png"
								id="productImage2" required/>
						</div>
						<div class="form-group">
							<img src="#" id="imgPreview2" height="100px" width="100px"
								style="margin-top: 20px" alt=" ">
						</div>


						<div class="custom-file">
							<input type="file" class="custom-file-input3"
								name="productImage3" accept="image/jpeg, image/png"
								id="productImage3" required="required" />
						</div>
						<div class="form-group">
							<img src="#" id="imgPreview3" height="100px" width="100px"
								style="margin-top: 20px" alt=" ">
						</div>

					</div>
				</div>


				<button type="submit" class="btn btn-primary ">Add Product</button>
			</form>
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


	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.js"></script>



	<!-- Product view slider -->
	<script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
	<script type="text/javascript" src="js/jquery.simpleLens.js"></script>
	<!-- slick slider -->
	<script type="text/javascript" src="js/slick.js"></script>
	<!-- Price picker slider -->

	<!-- Custom js -->
	<script src="js/custom.js"></script>



	<script>
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#imgPreview1').attr('src', e.target.result).width(150)
							.height(150);
				}
				reader.readAsDataURL(input.files[0])
			}
		}
		$('#productImage1').change(function() {
			readURL(this);
		});
		$(".custom-file-input1").on(
				"change",
				function() {
					var fileName = $(this).val().split("\\").pop();
					$(this).siblings(".custom-file-label1")
							.addClass("selected").html(fileName);
				});
	</script>



	<script>
		function readURL2(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#imgPreview2').attr('src', e.target.result).width(150)
							.height(150);
				}
				reader.readAsDataURL(input.files[0])
			}
		}
		$('#productImage2').change(function() {
			readURL2(this);
		});
		$(".custom-file-input2").on(
				"change",
				function() {
					var fileName = $(this).val().split("\\").pop();
					$(this).siblings(".custom-file-label2")
							.addClass("selected").html(fileName);
				});
	</script>

	<script>
		function readURL3(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#imgPreview3').attr('src', e.target.result).width(150)
							.height(150);
				}
				reader.readAsDataURL(input.files[0])
			}
		}
		$('#productImage3').change(function() {
			readURL3(this);
		});
		$(".custom-file-input3").on(
				"change",
				function() {
					var fileName = $(this).val().split("\\").pop();
					$(this).siblings(".custom-file-label3")
							.addClass("selected").html(fileName);
				});
	</script>


</body>
</html>