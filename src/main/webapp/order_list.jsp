<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Order List</title>
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
					<div class="hamburger">
						<span class="toggle-icon"><i class="icon-menu"></i></span>
					</div>
				</div>
				<div class="header-left">
					<br>

					<div class="container text-center">
						<form action="/searchOrder" method="post">
							<div class="row">
								<div class="col">
									<input name="ord" type="search" class="form-control"
										placeholder="Search" aria-label="Search Dashboard">
								</div>
								<div class="col">
									<button class="btn btn-success" type="submit">Search Order
										</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="header-right">
					<ul class="clearfix">
						<li class="icons dropdown">
						<p>Manager,</p>
						<p> ${sb}</p>
						
							<div class="user-img c-pointer position-relative"
								data-toggle="dropdown">
								<span class="activity active"></span> <img
									src="images/user/1.png" height="40" width="40" alt="">
							</div>
							<div class="drop-down dropdown-profile   dropdown-menu">
								<div class="dropdown-content-body">
									<ul>
										<li><a href="app-profile.html">
												<span>Profile</span></a></li>

										<li><a href="/login"><span>Logout</span></a></li>
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
							<li><a href="/list">Manager List</a></li>
							<li><a href="/orderlist">Order List</a></li>
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
							href="javascript:void(0)">Home</a></li>
					</ol>
				</div>
			</div>
			<!-- row -->

			<div class="container-fluid">
				<h1>Order List</h1>

				<table class="table table-info table-striped">
					<thead>
						<tr>
							<th scope="col">Action</th>
							<th scope="col">Status</th>
							<th scope="col">Serial No</th>
							<th scope="col">Source Area</th>
							<th scope="col">Sender's Name</th>
							<th scope="col">Address</th>
							<th scope="col">Phone</th>
							<th scope="col">Destination Area</th>
							<th scope="col">Receiver's Name</th>
							<th scope="col">Address</th>
							<th scope="col">Phone</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="s" items="${ol}">
							<tr>
								<td><form action="/approve">
										<button class="btn btn-success" value="${s.serial}" name="serial">Approve</button>
									</form></td>
								<td>${s.status}</td>
								<td>${s.serial}</td>
								<td>${s.source_area}</td>
								<td>${s.s_name}</td>
								<td>${s.s_address}</td>
								<td>${s.s_phone}</td>
								<td>${s.destination_area}</td>
								<td>${s.r_name}</td>
								<td>${s.r_address}</td>
								<td>${s.r_phone}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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