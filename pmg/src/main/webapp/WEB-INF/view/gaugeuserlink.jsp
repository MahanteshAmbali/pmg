<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="images/favicon.png">
<title>BucketAdmin</title>
<!--Required gauge CSS -->
<link
	href="${pageContext.request.contextPath}/static/bs3/css/bootstrap1.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet">
<!--Required gauge CSS END-->

</head>
<body>


	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<!--mini statistics start-->
			<div class="row">
				<div class="col-md-3">
					<section class="panel">
						<div class="panel-body">
							<div class="top-stats-panel">
								<div class="gauge-canvas">
									<h4 class="widget-h">Your Links Verified By Others</h4>
									<canvas width=160 height=100 id="gaugeUserLink"></canvas>
								</div>
								<ul class="gauge-meta clearfix">
									<li id="gauge-textfield" class="pull-left gauge-value"></li>
									<li class="pull-right gauge-title">Safe</li>
								</ul>
							</div>
						</div>
					</section>
				</div>
			</div>
			<!--mini statistics end-->

			<!--mini statistics start-->

			<!--mini statistics end-->




			</div>
		</section>
	</section>
	<!--main content end-->
	<!--right sidebar start-->

	<!--right sidebar end-->
	</section>
	<!-- Placed js at the end of the document so the pages load faster -->
	<!--Required Gauge scripts-->
	<script src="${pageContext.request.contextPath}/static/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/skycons/skycons.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/gauge/gauge.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/dashboard.js"></script>
	<script type="text/javascript">
		var target = document.getElementById('gaugeUserLink'); // your canvas element
		var gauge = new Gauge(target).setOptions(opts); // create sexy gauge!
		gauge.maxValue = 1000; // set max gauge value
		gauge.animationSpeed = 32; // set animation speed (32 is default value)
		gauge.set(123); // set actual value
		gauge.setTextField(document.getElementById("gauge-textfield"));
	</script>
	<!--Required Gauge scripts END-->
</body>
</html>