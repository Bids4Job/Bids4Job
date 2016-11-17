<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bids4Job</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Custom Style -->
<link href="css/main.css" rel="stylesheet">
<link href="css/carousel.css" rel="stylesheet">
<link href="css/stylesTest.css" rel="stylesheet">

<!-- Login Modal style -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<!--Navbar start-->

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid navbar-transp">
			<div class="navbar-header">
				<!--start collapsed navbar-->
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="index.jsp"> <img alt="Brand" src="images/logo.png">
					<!--Brand logo image-->
				</a>
			</div>
			<!-- end collapsed navbar-->
			<div id="navbar" class="navbar-collapse collapse">
				<!--start un-collapsed navbar-->
				<div class="navbar-form navbar-right">
					<a href="#" data-toggle="modal" data-target="#login-modal"
						class="btn btn-info" role="button">Log in</a> <a href="signup.jsp"
						class="btn btn-info" role="button">Sign up</a>
				</div>
			</div>
			<!-- end un-collapsed navbar-->
		</div>
	</nav>
	<!--Navbar end-->

	<!--Start Carousel-->

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide mod-img" src="images/1.jpg"
					alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Get a quote for your need!</h1>
						<p>Sign-Up and start getting quotes for any task you need from
							our network of affiliated professionals!</p>
						<p>
							<a class="btn btn-lg btn-primary" href="signup.jsp" role="button">Sign
								up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide mod-img" src="images/2.jpg"
					alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Ask us about your need!</h1>
						<p>Have questions about a specific problem and would like to
							get an answer?</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Contact
								Us</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide mod-img" src="images/3.jpg"
					alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Are you a professional?</h1>
						<p>Are you a professional interested in boosting your
							business? Let us show you how we can help you!</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Learn
								more</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!--Start search field-->

		<div class="row" id="searchForm">
			<div
				class="col-lg-4 col-md-6 col-sm-6 col-xs-8 col-lg-offset-4 col-md-offset-3 col-sm-offset-3 col-xs-offset-2">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search for...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">Go!</button>
					</span>
				</div>
			</div>
		</div>
		<!--End search field-->

		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!--End Carousel-->

	<!-- Start Login Modal -->

	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div
				class="tabbable full-width-tabs col-lg-8 col-md-6 col-sm-6 col-xs-8 col-lg-offset-2 col-md-offset-3 col-sm-offset-3 col-xs-offset-2">
				<ul class="nav nav-tabs nav-justified login-tab-clr">
					<li class="active"><a data-toggle="tab" href="#Individual">Individual</a></li>
					<li><a data-toggle="tab" href="#Professional">Professional</a></li>
				</ul>

				<div class="tab-content">
					<div id="Individual" class="tab-pane fade in active">
						<form class="form-signin" method="POST" action="login_simple">
							<h2 class="form-signin-heading login-or-signup">Please Log
								in</h2>
							<label for="inputEmail" class="sr-only">Email address</label> <input
								type="email" id="inputEmail" class="form-control"
								placeholder="Email address" name="email" required autofocus> <label
								for="inputPassword" class="sr-only">Password</label> <input
								type="password" id="inputPassword" class="form-control"
								placeholder="Password" name="upass" required>
							<div class="checkbox">
								<label> <input type="checkbox" value="remember-me">
									Remember me
								</label>
							</div>
							<button class="btn btn-lg btn-primary btn-block" type="submit">Log
								in</button>
							<h5 class="login-or-signup">-OR-</h5>
							<a href="signup.jsp" class="btn btn-lg btn-primary btn-block"
								role="button">Sign up</a>
						</form>
					</div>
					<!-- End of #Individual -->
					<div id="Professional" class="tab-pane fade">
						<form class="form-signin" method="POST" action="login_professional">
							<h2 class="form-signin-heading login-or-signup">Please Log
								in</h2>
							<label for="inputEmail" class="sr-only">Email address</label> <input
								type="email" id="inputEmail" class="form-control"
								placeholder="Email address" required autofocus name="email"> <label
								for="inputPassword" class="sr-only">Password</label> <input
								type="password" id="inputPassword" class="form-control"
								placeholder="Password" required name="password">
							<div class="checkbox">
								<label> <input type="checkbox" value="remember-me">
									Remember me
								</label>
							</div>
							<button class="btn btn-lg btn-primary btn-block" type="submit">Log
								in</button>
							<h5 class="login-or-signup">-OR-</h5>
							<a href="signup.jsp" class="btn btn-lg btn-primary btn-block"
								role="button">Sign up</a>
						</form>
					</div>
					<!-- End of #Professional -->
				</div>
				<!-- End of .tab-content -->
			</div>
		</div>
		<!-- End of .modal-dialog -->
	</div>
	<!-- End Login Modal -->

	<div class="container marketing">

		<!-- Start of .featurettes -->

		<div class="row featurette">
			<div class="panel-group" id="accordion" role="tablist"
				aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion"
								href="#collapseOne" aria-expanded="true"
								aria-controls="collapseOne"> Task #1 by simple_user1 </a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Bidder</th>
										<th>Rating</th>
										<th>Amount &euro;</th>
										<th>Bid Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>pro_user1</td>
										<td>4.5</td>
										<td>500</td>
										<td>12/10/2016 15:05:00</td>
									</tr>
									<tr>
										<td>pro_user2</td>
										<td>4.1</td>
										<td>570</td>
										<td>12/10/2016 13:15:00</td>
									</tr>
									<tr>
										<td>pro_user3</td>
										<td>4.7</td>
										<td>580</td>
										<td>12/10/2016 10:10:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .panel -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo"> Task #2
								by simple_user2 </a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Bidder</th>
										<th>Rating</th>
										<th>Amount &euro;</th>
										<th>Bid Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>pro_user1</td>
										<td>4.5</td>
										<td>500</td>
										<td>12/10/2016 15:05:00</td>
									</tr>
									<tr>
										<td>pro_user2</td>
										<td>4.1</td>
										<td>570</td>
										<td>12/10/2016 13:15:00</td>
									</tr>
									<tr>
										<td>pro_user3</td>
										<td>4.7</td>
										<td>580</td>
										<td>12/10/2016 10:10:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .panel -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseThree"
								aria-expanded="false" aria-controls="collapseThree"> Task #3
								by simple_user3 </a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingThree">
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Bidder</th>
										<th>Rating</th>
										<th>Amount &euro;</th>
										<th>Bid Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>pro_user1</td>
										<td>4.5</td>
										<td>500</td>
										<td>12/10/2016 15:05:00</td>
									</tr>
									<tr>
										<td>pro_user2</td>
										<td>4.1</td>
										<td>570</td>
										<td>12/10/2016 13:15:00</td>
									</tr>
									<tr>
										<td>pro_user3</td>
										<td>4.7</td>
										<td>580</td>
										<td>12/10/2016 10:10:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .panel -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFour"
								aria-expanded="false" aria-controls="collapseFour"> Task #4
								by simple_user4 </a>
						</h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingFour">
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Bidder</th>
										<th>Rating</th>
										<th>Amount &euro;</th>
										<th>Bid Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>pro_user1</td>
										<td>4.5</td>
										<td>500</td>
										<td>12/10/2016 15:05:00</td>
									</tr>
									<tr>
										<td>pro_user2</td>
										<td>4.1</td>
										<td>570</td>
										<td>12/10/2016 13:15:00</td>
									</tr>
									<tr>
										<td>pro_user3</td>
										<td>4.7</td>
										<td>580</td>
										<td>12/10/2016 10:10:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .panel -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFive">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFive"
								aria-expanded="false" aria-controls="collapseFive"> Task #5
								by simple_user5 </a>
						</h4>
					</div>
					<div id="collapseFive" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingFive">
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Bidder</th>
										<th>Rating</th>
										<th>Amount &euro;</th>
										<th>Bid Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>pro_user1</td>
										<td>4.5</td>
										<td>500</td>
										<td>12/10/2016 15:05:00</td>
									</tr>
									<tr>
										<td>pro_user2</td>
										<td>4.1</td>
										<td>570</td>
										<td>12/10/2016 13:15:00</td>
									</tr>
									<tr>
										<td>pro_user3</td>
										<td>4.7</td>
										<td>580</td>
										<td>12/10/2016 10:10:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .panel -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingSix">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseSix"
								aria-expanded="false" aria-controls="collapseSix"> Task #6
								by simple_user6 </a>
						</h4>
					</div>
					<div id="collapseSix" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingSix">
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Bidder</th>
										<th>Rating</th>
										<th>Amount &euro;</th>
										<th>Bid Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>pro_user1</td>
										<td>4.5</td>
										<td>500</td>
										<td>12/10/2016 15:05:00</td>
									</tr>
									<tr>
										<td>pro_user2</td>
										<td>4.1</td>
										<td>570</td>
										<td>12/10/2016 13:15:00</td>
									</tr>
									<tr>
										<td>pro_user3</td>
										<td>4.7</td>
										<td>580</td>
										<td>12/10/2016 10:10:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .panel -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingSeven">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseSeven"
								aria-expanded="false" aria-controls="collapseSeven"> Task #7
								by simple_user7 </a>
						</h4>
					</div>
					<div id="collapseSeven" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingSeven">
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Bidder</th>
										<th>Rating</th>
										<th>Amount &euro;</th>
										<th>Bid Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>pro_user1</td>
										<td>4.5</td>
										<td>500</td>
										<td>12/10/2016 15:05:00</td>
									</tr>
									<tr>
										<td>pro_user2</td>
										<td>4.1</td>
										<td>570</td>
										<td>12/10/2016 13:15:00</td>
									</tr>
									<tr>
										<td>pro_user3</td>
										<td>4.7</td>
										<td>580</td>
										<td>12/10/2016 10:10:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .panel -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingEight">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseEight"
								aria-expanded="false" aria-controls="collapseEight"> Task #8
								by simple_user8 </a>
						</h4>
					</div>
					<div id="collapseEight" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingEight">
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Bidder</th>
										<th>Rating</th>
										<th>Amount &euro;</th>
										<th>Bid Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>pro_user1</td>
										<td>4.5</td>
										<td>500</td>
										<td>12/10/2016 15:05:00</td>
									</tr>
									<tr>
										<td>pro_user2</td>
										<td>4.1</td>
										<td>570</td>
										<td>12/10/2016 13:15:00</td>
									</tr>
									<tr>
										<td>pro_user3</td>
										<td>4.7</td>
										<td>580</td>
										<td>12/10/2016 10:10:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .panel -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingNine">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseNine"
								aria-expanded="false" aria-controls="collapseNine"> Task #9
								by simple_user9 </a>
						</h4>
					</div>
					<div id="collapseNine" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingNine">
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Bidder</th>
										<th>Rating</th>
										<th>Amount &euro;</th>
										<th>Bid Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>pro_user1</td>
										<td>4.5</td>
										<td>500</td>
										<td>12/10/2016 15:05:00</td>
									</tr>
									<tr>
										<td>pro_user2</td>
										<td>4.1</td>
										<td>570</td>
										<td>12/10/2016 13:15:00</td>
									</tr>
									<tr>
										<td>pro_user3</td>
										<td>4.7</td>
										<td>580</td>
										<td>12/10/2016 10:10:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .panel -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTen">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTen"
								aria-expanded="false" aria-controls="collapseTen"> Task #10
								by simple_user10 </a>
						</h4>
					</div>
					<div id="collapseTen" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingTen">
						<div class="panel-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Bidder</th>
										<th>Rating</th>
										<th>Amount &euro;</th>
										<th>Bid Date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>pro_user1</td>
										<td>4.5</td>
										<td>500</td>
										<td>12/10/2016 15:05:00</td>
									</tr>
									<tr>
										<td>pro_user2</td>
										<td>4.1</td>
										<td>570</td>
										<td>12/10/2016 13:15:00</td>
									</tr>
									<tr>
										<td>pro_user3</td>
										<td>4.7</td>
										<td>580</td>
										<td>12/10/2016 10:10:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- End .panel -->
			</div>
			<!-- End #accordion -->
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 class="featurette-heading">
					Oh yeah, it's that good. <span class="text-muted">See for
						yourself.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block"
					data-src="holder.js/500x500/auto" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					And lastly, this one. <span class="text-muted">Checkmate.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					data-src="holder.js/500x500/auto" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">
		<!-- End of .featurettes -->


		<!-- Start Footer -->

		<footer>
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy; 2016 Bids4Job S.A. &middot; <a href="#">Privacy</a> &middot;
				<a href="#">Terms</a>
			</p>
		</footer>
		<!-- End of Footer -->

	</div>
	<!-- End of .container marketing -->




	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery.min.js"><\/script>')
	</script>
	<!-- Just to make placeholder images work-->
	<script src="js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
