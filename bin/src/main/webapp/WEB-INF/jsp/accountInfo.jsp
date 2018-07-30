<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Innovit USA</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 







</script>
<link href="admin/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' />
<link href="admin/css/style.css" rel='stylesheet' type='text/css' />
<link href="admin/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link
	href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="admin/css/icon-font.min.css"
	type='text/css' />
<script src="admin/js/jquery-1.10.2.min.js"></script>
<script src="admin/js/css3clock.js"></script>
<script src="admin/js/skycons.js"></script>
</head>
<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="inner-content">
				<!-- header-starts -->
				<div class="header-section">
					<!--menu-right-->
					<div class="top_menu">
						<!--/profile_details-->
						<div class="profile_details_left">
							<ul class="nofitications-dropdown">
								<li class="dropdown note"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown"
									aria-expanded="false"><i class="fa fa-cog"></i></a>

									<ul class="dropdown-menu two">
										<li><a href="#">
												<div class="notification_desc">
													<p>
														<b>Logout</b>
													</p>
												</div>
												<div class="clearfix"></div>
										</a></li>
									</ul></li>
								<div class="clearfix"></div>
							</ul>
						</div>
						<div class="clearfix"></div>
						<!--//profile_details-->
					</div>
					<!--//menu-right-->
					<div class="clearfix"></div>
				</div>

				<!-- //header-ends -->
				<!--//outer-wp-->
				<div class="outter-wp">
					<!--/sub-heard-part-->
					<div class="sub-heard-part">
						<ol class="breadcrumb m-b-0">
							<li><a href="#">Home</a></li>
							<li class="active">Account Info</li>
						</ol>
					</div>
					<!--/sub-heard-part-->
					<!--/forms-->
					<div class="forms-main">
						<h2 class="inner-tittle">Account Info</h2>
						<div class="graph-form">
							<div class="form-body">
								<form action="update_adminLogin" method="post">
									<div class="form-group">
										<label for="exampleInputEmail1">First Name*</label> <input
											type="text" value="${res.firstName }" name="firstName" class="form-control" id="exampleInputEmail1"
											placeholder="First Name">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Last Name*</label> <input
											type="text" value="${res.lastName }" name="lastName" class="form-control" id="exampleInputEmail1"
											placeholder="Last Name">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Email*</label> <input
											type="text" value="${res.loginName }" name="loginName" class="form-control" id="exampleInputEmail1"
											placeholder="Job Type">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Phone*</label> <input
											type="text" value="${res.phoneNo }" name="phoneNo"class="form-control" id="exampleInputEmail1"
											placeholder="Phone">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Address</label> <input
											type="text" value="${res.address }" name="address" class="form-control" id="exampleInputEmail1"
											placeholder="Address">
									</div>
									<button type="submit" class="btn btn-default">Update
										Details</button>
								</form>
							</div>

						</div>
					</div>
					<!--//forms-->
				</div>
				<!--//outer-wp-->
				<!--footer section start-->
				<footer>
					<p>
						&copy 2018 Innovit USA . All Rights Reserved | Design by <a
							href="http://innovitusa.com" target="_blank">Innovit USA</a>
					</p>
				</footer>
				<!--footer section end-->
			</div>
		</div>
		<!--//content-inner-->
		<!--/sidebar-menu-->
		<div class="sidebar-menu">
			<header class="logo">
				<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
				</a> <a href="index.html"> <span id="logo">
						<h1>Innovit USA</h1>
				</span> <!--<img id="logo" src="" alt="Logo"/>-->
				</a>
			</header>
			<div style="border-top: 1px solid rgba(69, 74, 84, 0.7)"></div>
			<div class="menu">
				<ul id="menu">
					<li><a href="jobsList"><i class="fa fa-table"></i> <span>Current
								Openings</span></a></li>
					<li><a href="get_admin_login"><i class="fa fa-pencil"></i> <span>Account
								Information</span></a></li>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<script>
		var toggle = true;

		$(".sidebar-icon").click(
				function() {
					if (toggle) {
						$(".page-container").addClass("sidebar-collapsed")
								.removeClass("sidebar-collapsed-back");
						$("#menu span").css({
							"position" : "absolute"
						});
					} else {
						$(".page-container").removeClass("sidebar-collapsed")
								.addClass("sidebar-collapsed-back");
						setTimeout(function() {
							$("#menu span").css({
								"position" : "relative"
							});
						}, 400);
					}

					toggle = !toggle;
				});
	</script>
	<!--js -->
	<script src="admin/js/jquery.nicescroll.js"></script>
	<script src="admin/js/scripts.js"></script>
	<script src="admin/js/bootstrap.min.js"></script>
</body>
</html>