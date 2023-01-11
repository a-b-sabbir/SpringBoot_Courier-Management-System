<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="h-100" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Update Cost</title>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
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

	<div class="login-form-bg h-100">
		<div class="container h-100">
			<div class="row justify-content-center h-100">
				<div class="col-xl-6">
					<div class="form-input-content">
						<div class="card login-form mb-0">
							<div class="card-body pt-5">

								<a class="text-center" href="index.html">
									<h4>Cost Update</h4>
								</a>

								<form class="mt-5 mb-5 login-input" action="/addCost" method="get">
									<div class="form-group">
										<input name="id" id="id" type="text"
											class="form-control" placeholder="ID" required value="${s.getId()}">
									</div>
									<div class="form-group">
										<input name="source_area" id="source_area" type="text"
											class="form-control" placeholder="Source Area" required value="${s.getSource_area()}">
									</div>
								
									<div class="form-group">
										<input name="destination_area" id="destination_area" type="text"
											class="form-control" placeholder="Address" required value="${s.getDestination_area()}">
									</div>
									<div class="form-group">
										<input name="types" id="types" type="text"
											class="form-control" placeholder="Phone" required value="${s.getTypes()}">
									</div>
									<div class="form-group">
										<input name="cost" id="cost" type="text"
											class="form-control" placeholder="Email" required value="${s.getCost()}">
									</div>
								
									<button class="btn login-form__btn submit w-100">Update</button>
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
