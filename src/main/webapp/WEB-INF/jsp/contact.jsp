<!doctype html>
<html class="no-js" lang="">
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
p {
	animation-duration: 3s;
	animation-name: slidein;
}

@
keyframes slidein {from { margin-left:100%;
	width: 500%;
}

to {
	margin-left: 0%;
	width: 100%;
}

}
.contact-form {
	margin-top: 70px;
}

.form-group {
	text-align: left;
}

.textpages {
	margin-top: -55px;
	min-height: 600px;
}
</style>
</head>

<body>
	<%@include file="header.jsp"%>
	<div class="clearfix"></div>
	<div class="page_title">
		<div class="container">
			<div class="pagenation">
				&nbsp;<a href="home">Home</a> <i>/</i> Contact Us
			</div>
		</div>
	</div>
	<!-- End Header Area -->
	<div class="container textpages">
		<!-- Contact -->
		<div class="contact-us">
			<div class="container">
				<div class="contact-form">
					<h3>Get in Touch with us</h3>
					<hr>
					<div class="row">
						<div class="col-sm-7">
							<form id="" method="" action="">
								<div class="messages" id="form-messages"></div>
								<div class="controls">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_name">First Name *</label> <input
													id="form_name" type="text" name="" class="form-control"
													placeholder="Please enter your firstname *"
													required="required" data-error="Firstname is required.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_lastname">Last Name</label> <input
													id="form_lastname" type="text" name="" class="form-control"
													placeholder="Please enter your lastname"
													data-error="Lastname is required.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_email">Email *</label> <input
													id="form_email" type="email" name="" class="form-control"
													placeholder="Please enter your email *" required="required"
													data-error="Valid email is required.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_phone">Contact</label> <input
													id="form_phone" type="tel" name="" class="form-control"
													placeholder="Please enter your phone" required
													oninvalid="setCustomValidity('Plz enter your correct phone number ')"
													onchange="try{setCustomValidity('')}catch(e){}">

											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label for="form_message">Your Message</label>
												<textarea id="form_message" name="" class="form-control"
													placeholder="Message us" rows="4"
													data-error="Please,leave us a message."></textarea>
												<div class="help-block with-errors"></div>
											</div>
										</div>
										<div class="col-md-12">
											<input type="submit" class="btn btn-black"
												value="Send message">
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<br> <small class="text-muted"><strong>*</strong>
												These fields are required.</small>
										</div>
									</div>
								</div>

							</form>

						</div>
						<div class="col-sm-5">
							<h3>Innovit USA</h3>
							<br>
							<div class="row col1">
								<div class="col-xs-3">
									<i class="fa fa-map-marker" style="font-size: 16px;"></i>  
									Address
								</div>
								<div class="col-xs-9">
									One Oxford Valley, Suite #614, <br> Langhorne, PA 19047
								</div>
							</div>

							<div class="row col1">
								<div class="col-sm-3">
									<i class="fa fa-phone"></i>   Call Us
								</div>
								<div class="col-sm-9">215-613-0054</div>
							</div>
							<div class="row col1">
								<div class="col-sm-3">
									<i class="fa fa-envelope"></i>   Mail Us
								</div>
								<div class="col-sm-9">
									<a href="">info@innovitusa.com</a> <br>

								</div>
							</div>
							<br>
							<iframe width="100%" height="230" frameborder="0"
								style="border-radius: 0px;" scrolling="no" marginheight="0"
								marginwidth="0"
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3048.154904732558!2d-74.88166468528625!3d40.1833659793929!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c153e0b13ebc73%3A0x8e5559764ff0fd66!2sInnovIT+USA+Inc!5e0!3m2!1sen!2sin!4v1533241421077"
								width="600" height="450" frameborder="0" style="border: 0"
								style="border-radius:20px;"></iframe>
						</div>
					</div>

				</div>
			</div>
		</div>


	</div>
	<%@include file="footer.jsp"%>
	<script src="js/jquery.min.js">
		
	</script>
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
</body>
</html>
