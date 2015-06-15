<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/bootstrap.css">
<!-- Vendor CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/animo/animate+animo.css">
<!-- App CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/app.css">
<!-- PopTop CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/poptop.css">
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
	<!-- START wrapper-->
	<div style="height: 100%; padding: 20px 0; background-color: #2c3037"
		class="row row-table">


		<div class="col-lg-3 col-md-6 col-sm-8 col-xs-12 align-middle">
			<div data-toggle="play-animation" data-play="zoomIn" data-offset="0"
				data-duration="300" class="panel b0">
				<p class="text-center mb-lg">
					<br> <a href="#"> <img
						src="${pageContext.request.contextPath}/static/app/img/logo3.png"
						alt="Image" class="block-center img-rounded">
					</a>
				</p>
				<div id="accordion" data-toggle="collapse-autoactive"
					class="panel-group">
					<!-- START panel-->
					<div class="panel radius-clear b0 shadow-clear">
						<div class="panel-heading radius-clear panel-heading-active">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapseTwo" class="text-muted btn-block text-center">SIGN
								IN TO CONTINUE.</a>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<form id="loginForm"
									action="<c:url value='j_spring_security_check'/>" method="post"
									class="mb-lg">
									<c:if test="${param.signupcomplete == true}">
										<!-- <div class="success message"> -->
										<p>${signupcomplete}</p>
										<!--	</div>-->
									</c:if>
									<c:if test="${param.verified == true}">
										<!--	<div class="info message">-->
										<p>
										<h3>${verified}</h3>
										</p>
										<!--	</div>-->
									</c:if>
									<c:if test="${param.verified == false}">
										<!--	<div class="error message">-->
										<p>
										<h3>${verified}</h3>
										</p>
										<!--	</div>-->
									</c:if>
									<c:if test="${param.error != null}">
										<!--	<div class="error message">-->
										<p>
										<h3>${error}</h3>
										</p>
										<!--	</div>-->
									</c:if>
									<c:if test="${param.resetpass == true}">
										<!--	<div class="warning message">-->
										<p>
										<h3>${resetpass}</h3>
										</p>
										<!--		</div>-->
									</c:if>
									<c:if test="${param.resetpass == false}">
										<!--		<div class="error message">-->
										<p>
										<h3>${resetpass}</h3>
										</p>
										<!--		</div>-->
									</c:if>
									<c:if test="${param.loggedout == true}">
										<!--		<div class="success message">-->
										<p>
										<h3>${loggedout}</h3>
										</p>
										<!--		</div>-->
									</c:if>
									<div class="form-group has-feedback">
										<label for="exampleInputEmail1">Email address</label> <input
											id="exampleInputEmail1" type="email" name="email"
											placeholder="Enter email" class="form-control"> <span
											class="fa fa-envelope form-control-feedback text-muted"></span>
									</div>
									<div class="form-group has-feedback">
										<label for="exampleInputPassword1">Password</label> <input
											id="exampleInputPassword1" type="password" name="password"
											placeholder="Password" class="form-control"> <span
											class="fa fa-lock form-control-feedback text-muted"></span>
									</div>
									<div class="clearfix">
										<div class="checkbox c-checkbox pull-left mt0">
											<label> <input type="checkbox" value=""> <span
												class="fa fa-check"></span>Remember Me
											</label>
										</div>
									</div>
									<button type="submit" class="btn btn-block btn-primary">Login</button>
								</form>
							</div>
						</div>
					</div>
					<!-- END panel-->

					<!-- START panel-->
					<div class="panel radius-clear b0 shadow-clear">
						<div class="panel-heading radius-clear">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapseThree" class="text-muted btn-block text-center">Forgot
								your password?</a>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<form id="resetPasswordForm"
									action="<c:url value='resetpassword'/>" method="post">
									<p class="text-center">Fill with your mail to receive
										instructions on how to reset your password.</p>
									<div class="form-group has-feedback">
										<label for="resetPasswordEmail">Email address</label> <input
											id="resetPasswordEmail" name="resetPasswordEmail"
											type="email" placeholder="Enter email" class="form-control">
										<span class="fa fa-envelope form-control-feedback text-muted"></span>
									</div>
									<button type="submit" class="btn btn-danger btn-block">Reset</button>
								</form>
							</div>
						</div>
					</div>
					<!-- END panel-->
					<!-- START panel-->
					<div class="panel radius-clear b0 shadow-clear">
						<div class="panel-heading radius-clear">
							<a data-parent="#accordion"
								href="${pageContext.request.contextPath}/createaccount"
								class="text-muted btn-block text-center">Register</a>
						</div>
					</div>
				</div>
			</div>
			<!-- END panel-->
		</div>
	</div>
	</div>
	</div>
	<!-- END wrapper-->
	<!-- START Scripts-->
	<!-- Main vendor Scripts-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!-- Animo-->
	<script
		src="${pageContext.request.contextPath}/static/vendor/animo/animo.min.js"></script>
	<!-- Custom script for pages-->
	<script src="${pageContext.request.contextPath}/static/app/js/pages.js"></script>
	<!-- PopTop-->
	<script src="${pageContext.request.contextPath}/static/js/poptop.js"></script>
	<script type="text/javascript">
		
	</script>
	<!-- END Scripts-->
</body>

</html>