<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<style>
.buttonstyle {
	cursor: pointer;
	font-size: 15px;
	margin: 10px;
	border-radius: 5px;
	text-decoration: none;
	padding: 8px 15px;
}
</style>
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
										<li><a href="home">
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
							<li><a href="">Home</a></li>
							<li class="active">Current Openings</li>
						</ol>
					</div>
					<!--/sub-heard-part-->
					<!--/forms-->
					<div class="forms-main">
						<h2 class="inner-tittle">Current Openings</h2>
						<a style="float: right;" href="addJobs"
							class="buttonstyle btn-success"><i class="fa fa-plus"></i>
							Add New Job</a>
						<div class="graph-form">
							<div class="form-body">
								<form>
									<div class="tables">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>Job Title</th>
													<th>Job Type</th>
													<th>Location</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="re" items="${res }">
													<tr>

														<td>${re.jobTitle }</td>
														<td>${re.jobType }</td>
														<td>${re.location }</td>
														<td><a href="" class="buttonstyle btn-success"><i
																class="fa fa-eye"></i> View</a> <a
															href="get_edit_jobPost?jobId=${re.jobId }"
															class="buttonstyle btn-primary"><i
																class="fa fa-pencil"></i> Edit</a> <a
															href="delete_jobPost?jobId=${re.jobId }"
															class="buttonstyle btn-danger"><i class="fa fa-trash"></i>
																Delete</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
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
					<li><a href="get_admin_login"><i class="fa fa-pencil"></i>
							<span>Account Information</span></a></li>
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
