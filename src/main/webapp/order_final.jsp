<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Order Final</title>
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


			</div>
		</div>
		<!--**********************************
            Header end ti-comment-alt
        ***********************************-->

		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body">

			<div class="row page-titles mx-0">
				<div class="col p-md-0">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
						<li class="breadcrumb-item active"><a
							href="javascript:void(0)">Home</a></li>
					</ol>
				</div>
			</div>
			<!-- row -->

			<div class="container-fluid">

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
														<h3>Order your Product</h3>
													</a>

													<form class="mt-5 mb-5 login-input" action="/confirmOrder"
														method="post">

														<div class="form-group">
															<input name="cost" id="cost" type="text" readonly
																class="form-control" placeholder="Cost" required
																value=${cost}>
														</div>
														<div class="row">
															<div class="col">
																<h5>Sender's Information</h5>
																<div class="form-group">
																	<input name="s_name" id="s_name" type="text"
																		class="form-control" placeholder="Sender's Name"
																		required>
																</div>
																<div class="form-group">
																	<input name="s_address" id="s_address" type="text"
																		class="form-control" placeholder="Address" required>
																</div>
																<div class="form-group">
																	<input name="s_phone" id="s_phone" type="text"
																		class="form-control" placeholder="Phone No." required>
																</div>
																<div class="form-group">
																	<input name="s_email" id="s_email" type="text"
																		class="form-control" placeholder="Email" required>
																</div>
																<div class="form-group">
																	<input name="s_branch_division" id="s_branch_division"
																		type="text" class="form-control"
																		placeholder="Branch Division" required>
																</div>
																<div class="form-group">
																	<input name="source_area" id="source_area"
																		type="text" class="form-control" readonly
																		placeholder="Source Area" required value=${sa}>
																</div>

															</div>
															<div class="col">
																<h5>Receiver's Information</h5>
																<div class="form-group">
																	<input name="r_name" id="r_name" type="text"
																		class="form-control" placeholder="Receiver's Name"
																		required>
																</div>
																<div class="form-group">
																	<input name="r_address" id="r_address" type="text"
																		class="form-control" placeholder="Address" required>
																</div>
																<div class="form-group">
																	<input name="r_phone" id="r_phone" type="text"
																		class="form-control" placeholder="Phone No." required>
																</div>
																<div class="form-group">
																	<input name="r_email" id="r_email" type="text"
																		class="form-control" placeholder="Email" required>
																</div>
																<div class="form-group">
																	<input name="r_branch_division" id="r_branch_division"
																		type="text" class="form-control"
																		placeholder="Branch Division" required>
																</div>
																<div class="form-group">
																	<input name="destination_area" id="destination_area"
																		type="text" class="form-control" readonly
																		placeholder="Destination Area" required value=${da}>
																</div>
																<div class="form-group">
																	<input name="status" id="status"
																		type="hidden" class="form-control" readonly
																		placeholder="status" required value="Pending">
																</div>
															</div>
														</div>
														<button class="btn login-form__btn submit w-100">Confirm Order</button>
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

			</div>
			<!-- #/ container -->
		</div>
		<!--**********************************
            Content body end
        ***********************************-->


		<!--**********************************
            Footer start
        ***********************************-->
		<div class="footer">
			<div class="copyright">
				<p>
					Copyright &copy; Designed & Developed by <a
						href="https://facebook.com/ab7abbir">Sabbir</a> 2022
				</p>
			</div>
		</div>
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