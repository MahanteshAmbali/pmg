<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ProMaGizmo | PMG</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/fonts/act/act.css"
	type="text/css" charset="utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/front/Open/css/open.css" />
<script
	src="${pageContext.request.contextPath}/static/assets/front/Open/js/modernizr.custom.js"></script>
</head>
<body>
	<div class="container">
		<!-- top bar -->

		<div class="os-phrases" id="os-phrases">
			<h2>Introducing Adworld renaissance</h2>
			<h2>A new dawn</h2>
			<h2>where people</h2>
			<h2>make it happen</h2>
			<h2>raising the curtains</h2>
			<h2>ProMaGizmo | PMG</h2>
			<h2>Prepare</h2>
			<a href="RoE">GO To Rules Of Engagement</a>
		</div>
		<div class="pmg-top clearfix">
			<a href="RoE"><span>Skip to Rules of Engagement</span></a> <span
				class="left"><a href="login"><span>Go To
						Log-In Page</span></a></span>
		</div>
	</div>
	<!-- /container -->
	<script
		src="${pageContext.request.contextPath}/static/assets/front/Open/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/assets/front/Open/js/jquery.lettering.js"></script>
	<script>
		$(document).ready(
				function() {
					$("#os-phrases > h2,a").lettering('words').children("span")
							.lettering().children("span").lettering();

				})
	</script>
</body>
</html>