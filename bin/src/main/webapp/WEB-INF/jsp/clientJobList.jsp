<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>INNOVITUSA</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="img/logo.png">
<link
	href="https://fonts.googleapis.com/css?family=Fira+Sans:300i,400,400i,500,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/slicknav.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<!-- Xman CSS -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<style>
.filterable {
	margin-top: 15px;
}

.filterable .panel-heading .pull-right {
	margin-top: -20px;
}

.filterable .filters input[disabled] {
	background-color: transparent;
	border: none;
	cursor: auto;
	box-shadow: none;
	padding: 0;
	height: auto;
}

.filterable .filters input[disabled]::-webkit-input-placeholder {
	color: #333;
}

.filterable .filters input[disabled]::-moz-placeholder {
	color: #333;
}

.filterable .filters input[disabled]:-ms-input-placeholder {
	color: #333;
}

.buttonstyle {
	cursor: pointer;
	font-size: 13px;
	margin: -5px;
	border-radius: 5px;
	text-decoration: none;
	padding: 6px 10px;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="panel panel-primary filterable">
				<div class="panel-heading">
					<h3 class="panel-title">Current Openings</h3>
					<div class="pull-right">
						<button class="btn btn-default btn-xs btn-filter">
							<span class="glyphicon glyphicon-filter"></span> Search
						</button>
					</div>
				</div>
				<table class="table">
					<thead>
						<tr class="filters">
							<th><input type="text" class="form-control"
								placeholder="Job Title" disabled></th>
							<th><input type="text" class="form-control"
								placeholder="Job Type" disabled></th>
							<th><input type="text" class="form-control"
								placeholder="Company Name" disabled></th>
							<th><input type="text" class="form-control"
								placeholder="Location" disabled></th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="re" items="${res }">
							<tr>
								<td>${re.jobTitle }</td>
								<td>${re.jobType }</td>
								<td>${re.companyName }</td>
								<td>${re.location }</td>
								<td><a href="" class="buttonstyle btn-primary"><i
										class="fa fa-eye"></i> View</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nav.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/jquery-appear.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?key=AIzaSyC0RqLa90WDfoJedoE3Z_Gy7a7o8PCL2jw"></script>
	<script type="text/javascript" src="js/gmaps.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/jquery-1.11.1.min.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$('.filterable .btn-filter')
									.click(
											function() {
												var $panel = $(this).parents(
														'.filterable'), $filters = $panel
														.find('.filters input'), $tbody = $panel
														.find('.table tbody');
												if ($filters.prop('disabled') == true) {
													$filters.prop('disabled',
															false);
													$filters.first().focus();
												} else {
													$filters.val('').prop(
															'disabled', true);
													$tbody.find('.no-result')
															.remove();
													$tbody.find('tr').show();
												}
											});

							$('.filterable .filters input')
									.keyup(
											function(e) {
												/* Ignore tab key */
												var code = e.keyCode || e.which;
												if (code == '9')
													return;
												/* Useful DOM data and selectors */
												var $input = $(this), inputContent = $input
														.val().toLowerCase(), $panel = $input
														.parents('.filterable'), column = $panel
														.find('.filters th')
														.index(
																$input
																		.parents('th')), $table = $panel
														.find('.table'), $rows = $table
														.find('tbody tr');
												/* Dirtiest filter function ever ;) */
												var $filteredRows = $rows
														.filter(function() {
															var value = $(this)
																	.find('td')
																	.eq(column)
																	.text()
																	.toLowerCase();
															return value
																	.indexOf(inputContent) === -1;
														});
												/* Clean previous no-result if exist */
												$table.find('tbody .no-result')
														.remove();
												/* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
												$rows.show();
												$filteredRows.hide();
												/* Prepend no-result row if all rows are filtered */
												if ($filteredRows.length === $rows.length) {
													$table
															.find('tbody')
															.prepend(
																	$('<tr class="no-result text-center"><td colspan="'
																			+ $table
																					.find('.filters th').length
																			+ '">No result found</td></tr>'));
												}
											});
						});
	</script>
</body>
</html>
