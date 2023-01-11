<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Add Cost</title>
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
				<div class="header-right">
					<ul class="clearfix">

						<li class="icons dropdown">
						<p>Admin</p>
							<div class="user-img c-pointer position-relative"
								data-toggle="dropdown">
								<span class="activity active"></span> <img
									src="images/user/1.png" height="40" width="40" alt="">
							</div>
							<div class="drop-down dropdown-profile   dropdown-menu">
								<div class="dropdown-content-body">
									<ul>
									
										<li><a href="app-profile.html"><i class="icon-user"></i>
												<span>Profile</span></a></li>


										<li><a href="login.jsp"><i class="icon-key"></i> <span>Logout</span></a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--**********************************
            Header end ti-comment-alt
        ***********************************-->

		<!--**********************************
            Sidebar start
        ***********************************-->
						<div class="nk-sidebar">
			<div class="nk-nav-scroll">
				<ul class="metismenu" id="menu">
					<li class="nav-label">Dashboard</li>					
							<li><a href="/admin_manager_list">Manager List</a></li>
							<li><a href="/addCost">Cost List</a></li>
				</ul>
			</div>
		</div>
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
						<li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
						<li class="breadcrumb-item active"><a
							href="/admin_manager_list">Home</a></li>
					</ol>
				</div>
			</div>
			<!-- row -->

			<div class="container-fluid">
				<div class="container col-lg-9">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Add Cost</h4>
							<div class="basic-form">
								<form action="/addCost" method="post">


									<div class="form-row align-items-center">
										<div class="col-auto my-1">
											<label class="mr-sm-2">Source Area</label> <select 
											class="custom-select mr-sm-2" id="source_area"  name="source_area">
												<option selected="selected">Source Area</option>
												<c:forEach var="s" items="${st}">
												<option>${s.branch_name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-row align-items-center">
										<div class="col-auto my-1">
											<label class="mr-sm-2">Destination Area</label> 
											<select class="custom-select mr-sm-2" id="destination_area" name="destination_area">
												<option selected="selected">Destination Area</option>
												<c:forEach var="s" items="${st}">
												<option>${s.branch_name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Type</label>
										<div class="col-sm-10">
											<input name="types" id="cost" type="text"
												class="form-control" placeholder="Add Type">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Cost</label>
										<div class="col-sm-10">
											<input name="cost" id="cost" type="text"
												class="form-control" placeholder="Add Cost">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-10">
											<button type="submit" class="btn btn-dark">Add Cost</button>
										</div>
									</div>
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