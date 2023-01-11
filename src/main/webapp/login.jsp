<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="h-100" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Login</title>
<!-- Favicon icon -->
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"> -->
<link href="css/style.css" rel="stylesheet">

</head>

<body class="h-100">

	<!--*******************
        Preloader start
    ********************-->
	<div id="preloader">
		<div class="loader">
			<svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none"
					stroke-width="3" stroke-miterlimit="10" />
            </svg>
		</div>
	</div>
	<!--*******************
        Preloader end
    ********************-->
    
			<div class="row page-titles mx-0">
					<ol class="breadcrumb">
						<li class="breadcrumb-item active"><a
							href="/home">Home</a></li>
					</ol>
			</div>
	<div class="login-form-bg h-100">
		<div class="container h-100">
			<div class="row justify-content-center h-100">
				<div class="col-xl-6">
					<div class="form-input-content">
						<div class="card login-form mb-0">
							<div class="card-body pt-5">
								<a class="text-center" href="index.html">
									<h4>Please Login</h4>
								</a>

								<form class="mt-5 mb-5 login-input" action="/check"
									method="post">
									<div class="form-group">
										<input name="id" type="text" class="form-control"
											placeholder="Id">
									</div>
									<div class="form-group">
										<input name="pass" type="password" class="form-control"
											placeholder="Password">
									</div>

									<div class="container">
										<div class="row">
											<div class="col">
												<div class="form-check">
													<input class="form-check-input" type="radio" name="role"
														id="flexRadioDefault1" value="manager"> <label
														class="form-check-label" for="flexRadioDefault1">
														Manager </label>
												</div>
											</div>
											<div class="col">
												<div class="form-check">
													<input class="form-check-input" type="radio" name="role"
														id="flexRadioDefault1" value="admin"> <label
														class="form-check-label" for="flexRadioDefault1">
														Admin </label>
												</div>
											</div>
										</div>
									</div>
									<br>
									<div class="form-row align-items-center">
										<div class="col-auto my-1">
											<select class="custom-select mr-sm-5" id="branch_name"
												name="branch_name">
												<option selected="selected">Branch Name</option>
												<c:forEach var="s" items="${ct}">
													<option>${s.branch_name}</option>
												</c:forEach>
											</select>
										</div>
									</div>	
									<br>
									<button class="btn login-form__btn submit w-100 ">Login</button>

									<div>
										<p>${error}</p>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!--**********************************
        Scripts
    ***********************************-->
	<script src="plugins/common/common.min.js"></script>
	<script src="js/custom.min.js"></script>
	<script src="js/settings.js"></script>
	<script src="js/gleek.js"></script>
	<script src="js/styleSwitcher.js"></script>
</body>
</html>





