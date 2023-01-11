<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Order Here</title>
<!-- Favicon icon -->
<!-- Custom Stylesheet -->
<link href="css/style.css" rel="stylesheet">

</head>

<body>

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


	<!--**********************************
        Main wrapper start
    ***********************************-->
	<div id="main-wrapper">

		<!--**********************************
            Nav header start
        ***********************************-->
		<div class="nav-header">
				<img src="images/logo.jpg" height="80px" width="250px"/>
		</div>
		<!--**********************************
            Nav header end
        ***********************************-->

		<!--**********************************
            Header start
        ***********************************-->
		<div class="header">
			<div class="header-content clearfix">

				<div class="nav-control">

				</div>


			</div>
		</div>
		<!--**********************************
            Header end ti-comment-alt
        ***********************************-->

		<!--**********************************
            Sidebar start
        ***********************************-->

		<!--**********************************
            Sidebar end
        ***********************************-->

		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body">

			<div class="row page-titles mx-0">
				<div class="col p-md-0">
					<ol class="breadcrumb">
						<li class="breadcrumb-item active"><a href="/home">Home</a></li>
					</ol>
				</div>
			</div>
			<!-- row -->

			<div class="container-fluid">
				<div class="container text-center">
					<div class="login-form-bg h-100">
						<div class="container h-100">
							<div class="row justify-content-center h-100">
								<div class="col-xl-7">
									<div class="form-input-content">
										<div class="card login-form mb-0">
											<div class="card-body pt-5">

												<a class="text-center">
													<h4>Order your Product</h4>
												</a>

												<form class="mt-5 mb-5 login-input" action="/checkcost"
													method="post">
													<div class="row">
														<div class="col">
															<div class="form-row align-items-center">
																<div class="col-auto my-1">
																	<label class="mr-sm-2">Source Area</label> <select
																		class="custom-select mr-sm-2" id="source_area"
																		name="source_area">
																		<option selected="selected">Source Area</option>
																		<c:forEach var="s" items="${ct}">
																			<option>${s.source_area}</option>
																		</c:forEach>
																	</select>
																</div>
															</div>
														</div>
														<div class="col">
															<div class="form-row align-items-center">
																<div class="col-auto my-1">
																	<label class="mr-sm-2">Destination Area</label> <select
																		class="custom-select mr-sm-2" id="destination_area"
																		name="destination_area">
																		<option selected="selected">Destination Area</option>
																		<c:forEach var="s" items="${ct}">
																			<option>${s.destination_area}</option>
																		</c:forEach>
																	</select>
																</div>
															</div>
														</div>
													</div>
													<button class="btn login-form__btn submit w-100">Order</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
				<!-- #/ container -->
			</div>
			<!--**********************************
            Content body end
        ***********************************-->


			<!--**********************************
            Footer start
        ***********************************-->

			<!--**********************************
            Footer end
        ***********************************-->
		</div>
		<!--**********************************
        Main wrapper end
    ***********************************-->

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