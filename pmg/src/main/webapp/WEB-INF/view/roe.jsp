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
	href="${pageContext.request.contextPath}/static/vendor/csspinner/csspinner.min.css">
<!-- START Page Custom CSS-->
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
}
</head>

<body>
	<!-- START wrapper-->
	<div style="height: 100%; padding: 50px 0; background-color: #2c3037"
		class="row row-table">
		<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 align-middle">
			<!-- START panel-->
			<div data-toggle="play-animation" data-play="bounceIn"
				data-offset="0" data-duration="300"
				class="panel panel-default panel-flat">
				<p class="text-center mb-lg">
				<div style="height: 100%; padding: 20px 0;">
					</p>
					<p class="text-center text-primary mb-lg">
						<strong style="font-size: 21px;"><b><u>MUST
									FOLLOW RULES AND REGULATIONS</u></b></strong>

					</p>
					<div class="panel-body">
						<div class="panel-body">
							<h4>Unordered List</h4>
							<ul>
								<li>List Item</li>
								<li>List Item</li>
								<li>
									<ul>
										<li>List Item</li>
										<li>List Item</li>
										<li>List Item</li>
									</ul>
								</li>
								<li>List Item</li>
							</ul>
							<h4>Ordered List</h4>
							<ol>
								<li>List Item</li>
								<li>List Item</li>
								<li>List Item</li>
							</ol>
							<h4>Unstyled List</h4>
							<ul class="list-unstyled">
								<li>List Item</li>
								<li>List Item</li>
								<li>List Item</li>
							</ul>
							<h4>Inline List</h4>
							<ul class="list-inline">
								<li>List Item</li>
								<li>List Item</li>
								<li>List Item</li>
							</ul>
							<h4>Unordered List</h4>
							<ul>
								<li>List Item</li>
								<li>List Item</li>
								<li>
									<ul>
										<li>List Item</li>
										<li>List Item</li>
										<li>List Item</li>
									</ul>
								</li>
								<li>List Item</li>
							</ul>
							<h4>Ordered List</h4>
							<ol>
								<li>List Item</li>
								<li>List Item</li>
								<li>List Item</li>
							</ol>
							<h4>Unstyled List</h4>
							<ul class="list-unstyled">
								<li>List Item</li>
								<li>List Item</li>
								<li>List Item</li>
							</ul>
							<h4>Inline List</h4>
							<ul class="list-inline">
								<li>List Item</li>
								<li>List Item</li>
								<li>List Item</li>
							</ul>
						</div>
						<form role="form"
							action="${pageContext.request.contextPath}/quest" class="mb-lg">
							<div class="clearfix">
								<div class="checkbox c-checkbox pull-left mt0">
									<label> <input id="checkme" type="checkbox" value="">
										<span class="fa fa-check"></span><b>I AGREE AND FULLY
											UNDERSTAND</b>
									</label>
								</div>
							</div>
							<button id="nextbtn" type="submit" disabled="disabled"
								class="btn btn-block btn-primary">
								<b>TAKE ME TO THE TEST PAGE</b>
							</button>
							<script type="text/javascript">
								var checker = document
										.getElementById('checkme');
								var nextbtn = document
										.getElementById('nextbtn');

								checker.onchange = function() {
									if (this.checked) {
										nextbtn.disabled = false;
									} else {
										nextbtn.disabled = true;
									}
								}
							</script>
						</form>
					</div>
				</div>
				<!-- END panel-->
			</div>
		</div>
		<!-- END wrapper-->
		<!-- START Scripts-->
		<!-- Main vendor Scripts-->
		<script
			src="${pageContext.request.contextPath}/static/vendor/jquery/jquery.min.js">
			
		</script>
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
		<!-- END Page Custom Script-->
		<!-- App Main-->
		<script src="${pageContext.request.contextPath}/static/app/js/app.js"></script>
		<!-- END Scripts-->
</body>

</html>