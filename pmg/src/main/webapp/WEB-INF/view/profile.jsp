<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie ie6 lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="ie ie7 lt-ie9 lt-ie8"        lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="ie ie8 lt-ie9"               lang="en"> <![endif]-->
<!--[if IE 9]>    <html class="ie ie9"                      lang="en"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-ie">
<!--<![endif]-->

<head>
<!-- Meta-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<title>ProMaGizmo | Profit Machine Gizmo</title>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/chat.css">
<!-- Vendor CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/animo/animate+animo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/csspinner/csspinner.min.css">
<!-- START Page Custom CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/datetimepicker/css/bootstrap-datetimepicker.min.css">
<!-- END Page Custom CSS-->
<!-- App CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/app.css">
<!-- Modernizr JS Script-->
<script
	src="${pageContext.request.contextPath}/static/vendor/modernizr/modernizr.js"
	type="application/javascript"></script>
<!-- FastClick for mobiles-->
<script
	src="${pageContext.request.contextPath}/static/vendor/fastclick/fastclick.js"
	type="application/javascript"></script>
</head>

<body>
	<!-- START Main wrapper-->
	<section class="wrapper">
		<jsp:include page="headersandsidebars.jsp">
			<jsp:param name="user" value="${user}"></jsp:param>
		</jsp:include>
		<!-- START Main section-->
		<section>
			<!-- START Page content-->
			<section class="main-content">
				<div class="row">
					<div class="col-lg-12">
						<div class="col-lg-7">
							<div class="panel panel-default">
								<div class="panel-body">
									<form method="get" action="/" class="form-horizontal">
										<h3>
											<i class="fa fa-user"></i> ACCOUNT PROFILE
										</h3>
										<div class="simple-header"></div>
										<div class="form-group">
											<div class="col-md-1"></div>
											<div class="col-md-5">
												<img
													src="${pageContext.request.contextPath}/static/app/img/user/${user.picName}"
													alt="Avatar" width="150" height="50"
													class="img-thumbnail img-circle">

											</div>
											<div class="col-lg-6">
												<div class="controls">
													<address>
														<h2>${user.firstname}${user.lastname}</h2>
														<strong>CURRENT LEVEL:</strong> <strong><a
															href="#">${user.level}</a></strong><br> <abbr
															title="Work email">e-mail:</abbr> <strong><a
															href="mailto:#">${user.email}</a></strong><br> <abbr
															title="Estimated Earnings">Estimated Earning: <em
															class="fa fa-dollar"></em>
														</abbr> <strong><a href="#">2000</strong></a><br> <abbr
															title="Total Links Served">Total Links Served: </abbr> <strong><a
															href="#">200</strong></a><br> <abbr
															title="Appreciation Gained">Appreciation Gained: </abbr>
														<strong><a href="#">97</strong></a> <em
															class="fa fa-star fa-sm text-warning inbox-mail-starred"></em>
														<br>
													</address>
												</div>
											</div>
										</div>
										<div class="simple-header"></div>
										<p></p>
										<form method="POST" id="editprofile" action="/profile"
											class="form-horizontal">
											<h3>
												<i class="fa fa-user"></i> EDIT ACCOUNT PROFILE
											</h3>
											<div class="simple-header"></div>
											<p></p>
											<fieldset>
												<div class="form-group">
													<label class="col-lg-2 control-label">Username</label>
													<div class="col-md-1"></div>
													<div class="col-md-6">
														<input type="text" value="${user.username}" disabled=""
															class="form-control form-control-rounded">
													</div>
												</div>
											</fieldset>
											<fieldset>
												<div class="form-group">
													<label class="col-lg-2 control-label">First Name</label>
													<div class="col-md-1"></div>
													<div class="col-md-6">
														<input type="text" value="${user.firstname}"
															class="form-control form-control-rounded">
													</div>
												</div>
											</fieldset>
											<fieldset>
												<div class="form-group">
													<label class="col-lg-2 control-label">Last Name</label>
													<div class="col-md-1"></div>
													<div class="col-md-6">
														<input type="text" value="${user.lastname}"
															class="form-control form-control-rounded">
													</div>
												</div>
											</fieldset>
											<fieldset>
												<div class="form-group">
													<label class="col-lg-2 control-label">Date Of Birth</label>
													<div class="col-md-1"></div>
													<div class="col-md-6">
														<div data-pick-time="false"
															class="datetimepicker input-group date mb-lg">
															<input type="text"
																class="form-control form-control-rounded"> <span
																class="input-group-addon"> <span
																class="fa-calendar fa"></span>
															</span>
														</div>
													</div>
												</div>
											</fieldset>
											<fieldset>
												<div class="form-group">
													<label class="col-lg-2 control-label">Gender</label>
													<div class="col-md-1"></div>
													<div class="col-md-6">
														<p></p>
														<label class="radio-inline c-radio"> <input
															id="inlineradio1" type="radio" name="i-radio"
															value="option1" checked=""> <span
															class="fa fa-circle"></span>Male
														</label> <label class="radio-inline c-radio"> <input
															id="inlineradio1" type="radio" name="i-radio"
															value="option1" checked=""> <span
															class="fa fa-circle"></span>Female
														</label> <label class="radio-inline c-radio"> <input
															id="inlineradio1" type="radio" name="i-radio"
															value="option1" checked=""> <span
															class="fa fa-circle"></span>Other
														</label>
													</div>
												</div>
											</fieldset>
											<fieldset>
												<div class="form-group">
													<label class="col-lg-2 control-label">Email Address</label>
													<div class="col-md-1"></div>
													<div class="col-md-6">
														<input type="text" value="${user.email}" disabled=""
															class="form-control form-control-rounded">
													</div>
												</div>
											</fieldset>
											<fieldset>
												<div class="form-group">
													<label class="col-lg-2 control-label">Money Website</label>
													<div class="col-md-1"></div>
													<div class="col-md-6">
														<input type="text" value="${user.adUrl}" disabled=""
															class="form-control form-control-rounded">
													</div>
												</div>
											</fieldset>
											<fieldset>
												<div class="form-group">
													<label class="col-lg-2 control-label">Country</label>
													<div class="col-md-1"></div>
													<div class="col-lg-6">
														<input type="text" value="${user.country}" disabled=""
															class="form-control form-control-rounded">
													</div>
												</div>
											</fieldset>

											<button type="submit"
												class="btn btn-primary btn-lg pull-right">
												<b>SAVE THE CHANGES</b>
											</button>
										</form>
								</div>
							</div>
						</div>
						<div class="col-lg-5">
							<div class="panel panel-default">
								<div class="panel-body">
									<form method="get" action="/" class="form-horizontal">
										<h3>
											<i class="fa fa-user"></i> CHANGE PASSWORD
										</h3>
										<div class="simple-header"></div>


										<fieldset>
											<div class="form-group">
												<label class="col-lg-2 control-label">Current
													Password</label>
												<div class="col-md-1"></div>
												<div class="col-md-8">
													<input type="password"
														class="form-control form-control-rounded">
												</div>
											</div>
										</fieldset>
										<fieldset>
											<div class="form-group">
												<label class="col-lg-2 control-label">New Password</label>
												<div class="col-md-1"></div>
												<div class="col-md-8">
													<input type="password"
														class="form-control form-control-rounded">
												</div>
											</div>
										</fieldset>
										<fieldset>
											<div class="form-group">
												<label class="col-lg-2 control-label">Retype New
													Password</label>
												<div class="col-md-1"></div>
												<div class="col-md-8">
													<input type="password"
														class="form-control form-control-rounded">
												</div>
											</div>
										</fieldset>

										<button type="button"
											class="btn btn-primary btn-lg pull-right">
											<b>SAVE THE CHANGES</b>
										</button>
									</form>
								</div>
							</div>
						</div>


					</div>
				</div>





			</section>
			<!-- END Page content-->
		</section>
		<!-- END Main section-->
	</section>
	<!-- END Main wrapper-->
	<!-- START Scripts-->
	<!-- Main vendor Scripts-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!-- Plugins-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/chosen/chosen.jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/slider/js/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/filestyle/bootstrap-filestyle.min.js"></script>
	<!-- Animo-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/animo/animo.min.js"></script>
	<!-- Sparklines-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/sparklines/jquery.sparkline.min.js"></script>
	<!-- Slimscroll-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/slimscroll/jquery.slimscroll.min.js"></script>
	<!-- START Page Custom Script-->
	<!-- MomentJs and Datepicker-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/moment/min/moment-with-langs.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	<!-- END Page Custom Script-->
	<!-- App Main-->
	<script src="${pageContext.request.contextPath}/static/app/js/app.js"></script>
	<!-- END Scripts-->
</body>

</html>