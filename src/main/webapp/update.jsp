<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="h-100" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Update Form</title>
<!-- Favicon icon -->
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
									<h4>Manager Update Form</h4>
								</a>

								<form class="mt-5 mb-5 login-input" action="/save" method="post">
									<div class="form-group">
										<input name="id" id="id" type="text"
											class="form-control" placeholder="ID" readonly required value="${s.getId()}">
									</div>
									<div class="form-group">
										<input name="m_name" id="m_name" type="text"
											class="form-control" placeholder="Name" required value="${s.getM_name()}">
									</div>
																		<div class="form-group">
										<input name="userId" id="userId" type="text"
											class="form-control" placeholder="User ID" required >
									</div>
									<div class="form-group">
										<input name="designation" id="designation" type="text"
											class="form-control" placeholder="Designation" required value="Manager">
									</div>
									<div class="form-group">
										<input name="address" id="address" type="text"
											class="form-control" placeholder="Address" required value="${s.getAddress()}">
									</div>
									<div class="form-group">
										<input name="phone" id="phone" type="text"
											class="form-control" placeholder="Phone" required value="${s.getPhone()}">
									</div>
									<div class="form-group">
										<input name="email" id="email" type="text"
											class="form-control" placeholder="Email" required value="${s.getEmail()}">
									</div>
									<div class="form-group">
										<input name="pass" id="pass" type="text" class="form-control"
											placeholder="Password" required value="${s.getPass()}">
									</div>
									<div class="form-group">
										<input name="nid" id="nid" type="text" class="form-control"
											placeholder="National ID" required value="${s.getNid()}">
									</div>
									<div class="form-group">
										<input name="gender" id="gender" type="text"
											class="form-control" placeholder="Gender" required value="${s.getGender()}">
									</div>
									<div class="form-group">
										<input name="branch_name" id="branch_name" type="text"
											class="form-control" placeholder="Branch Name" required value="${s.getBranch_name()}">
									</div>
									<div class="form-group">
										<input name="branch_city" id="branch_city" type="text"
											class="form-control" placeholder="Branch City" required value="${s.getBranch_city()}">
									</div>
									<div class="form-group">
										<input name="branch_division" id="branch_division" type="text"
											class="form-control" placeholder="Branch Division" required value="${s.getBranch_division()}">
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
