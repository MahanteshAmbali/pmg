<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
<!-- Vendor CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/animo/animate+animo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/datetimepicker/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/slider/css/slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/vendor/chosen/chosen.min.css">
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
								href="#collapseTwo" class="text-muted btn-block text-center">SIGNUP
								TO GET INSTANT ACCESS.</a>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<sf:form id="signupForm" role="form"
									action="${pageContext.request.contextPath}/signup"
									method="post" commandName="user"  class="mb-lg"
									onsubmit="uploadPic()">
									<div class="form-group has-feedback">
										<label for="username">Username</label>
										<sf:input id="username" path="username" type="username"
											placeholder="username" class="form-control"
											required="required"></sf:input>
										<span class="fa fa-user form-control-feedback text-muted"></span>

									</div>
									<div class="form-group has-feedback">
										<label for="password">Password</label>
										<sf:input id="password" path="password" type="password"
											placeholder="Password" class="form-control"
											required="required"></sf:input>
										<span class="fa fa-lock form-control-feedback text-muted"></span>
									</div>
									<div class="form-group has-feedback">
										<label for="re-type Password">Re-Type Password</label> <input
											id="re-type Password" name="confirmPassword" type="password"
											placeholder="re-type Password" class="form-control" required></input>
										<span class="fa fa-lock form-control-feedback text-muted"></span>
									</div>
									<div class="form-group has-feedback">
										<label for="email">Email Address</label>
										<sf:input id="email" path="email" type="email"
											placeholder="Email Address" class="form-control"
											required="required"></sf:input>
										<span class="fa fa-envelope form-control-feedback text-muted"></span>
									</div>
									<div class="form-group has-feedback">
										<label for="email">Confirm Email Address</label> <input
											id="email" type="email" placeholder="Email Address"
											class="form-control" required> <span
											class="fa fa-envelope form-control-feedback text-muted"></span>
									</div>
									<div class="form-group has-feedback">
										<label for="money-site">Your Money Site</label>
										<sf:input id="money-site" path="adUrl" type="text"
											placeholder="example.com" class="form-control"
											required="required" onsubmit="checkDomain()"></sf:input>
										<span class="fa fa-sitemap form-control-feedback text-muted"></span>
									</div>
									<div class="form-group has-feedback">
										<label for="money-site">Confirm Your Money Site</label> <input
											id="money-site" type="text" placeholder="example.com"
											class="form-control" required> <span
											class="fa fa-sitemap form-control-feedback text-muted"></span>
									</div>
							</div>
						</div>
					</div>
					<!-- END panel-->

					<!-- START panel-->
					<div class="panel radius-clear b0 shadow-clear">
						<div class="panel-heading radius-clear">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapseThree" class="text-muted btn-block text-center"><b>CONTINUE
									SIGNING UP</b></a>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<p class="text-center"></p>
								<div class="form-group has-feedback">
									<label for="pic">Profile Pic</label> <img id="dp" src=""
										align="center" width="125" height="175" alt="Profile Pic" />
									<input align="center" type="file"
										onchange="setPicName();readURL(this);" id="pic" name="pic">
									<sf:input type="hidden" path="picName" id="picName"
										class="form-control"></sf:input>
								</div>
								<div class="form-group has-feedback">
									<label for="first-name">First Name</label>
									<sf:input id="first-name" path="firstname" type="text"
										placeholder="First Name" class="form-control"></sf:input>
									<span class="fa fa-anchor form-control-feedback text-muted"></span>
								</div>
								<div class="form-group has-feedback">
									<label for="last-name">Last Name</label>
									<sf:input id="last-name" path="lastname" type="text"
										placeholder="Last Name" class="form-control"></sf:input>
									<span class="fa fa-anchor form-control-feedback text-muted"></span>
								</div>
								<div class="form-group has-feedback">
									<label for="gender">Gender</label>
									<sf:radiobutton path="gender" value="Male" />
									Male
									<sf:radiobutton path="gender" value="Female" />
									Female
									<sf:radiobutton path="gender" value="Other" />
									Other <span
										class="fa fa-anchor form-control-feedback text-muted"></span>
								</div>
								<div class="form-group has-feedback">
									<label for="country">Country</label>
									<sf:select id="country" path="country" type="text"
										items="${countryList}" placeholder="Last Name"
										class="form-control">
									</sf:select>
									<sf:input path="registeredIp" id="ip" type="hidden"
										class="form-control"></sf:input>
									<span class="fa fa-anchor form-control-feedback text-muted"></span>
								</div>

								<button type="submit" class="btn btn-primary btn-block">SUBMIT</button>
								</sf:form>
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
	<!-- Plugins-->
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
	<script type="text/javascript">
		function checkDomain() {
			var domain = document.getElementById("money-site").val();
			var re = new RegExp(
					/^(?!:\/\/)([a-zA-Z0-9]+\.)?[a-zA-Z0-9][a-zA-Z0-9-]+\.[a-zA-Z]{2,6}?$/i);
			if (!domain.match(re))
				alert("domain name wrong");
		}
		function setCountry() {
			$.get("http://ipinfo.io", function(response) {
				$("#country").val(response.country);
				$("#ip").val(response.ip);
			}, "jsonp");
		}
		setCountry();
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#dp').attr('src', e.target.result).width(150)
							.height(200);
				};
				reader.readAsDataURL(input.files[0]);
			}
		}
		function setPicName() {
			$("input[name='pic']").each(
					function() {
						var fileName = $(this).val().split('/').pop().split(
								'\\').pop();
						var date = (new Date()).getTime();
						fileName = date + fileName;
						alert(fileName);
						$("#picName").val(fileName);
					});
		}
		function uploadPic() {
			var fd = new FormData();
			if (jQuery("#pic").get(0) != null) {
				fd.append('pic', jQuery("#pic").get(0).files[0]);
				fd.append('picName', jQuery("#picName").val())
			}
			$.ajax({
				url : 'savepic',
				data : fd,
				processData : false,
				contentType : false,
				type : 'POST',
				success : function(data) {
					alert(data);
				}
			});
		}
	</script>
</body>

</html>