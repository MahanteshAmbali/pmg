<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ProMaGizmo | PMG</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/buynow/css/checkout-sidebar.css" />
<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
</head>
<body class="color-1">
	<div class="container">

		<div class="grid">
			<div class="grid__item color-3">
				<a class="link link--nukun" href="player-dash.html"><span>P</span>ro<span>M</span>a<span>G</span>izmo</a>
			</div>
		</div>
		<section class="content">
			<article class="content__item">
				<h1 class="title title--full">PMG Welcomes you. Let the fun
					begin</h1>
				<div class="meta meta--full"></div>
				<p>Hope you still remember and agree with our Rules of
					Engagement. Your trustworthiness has been verified and you're good
					to go</p>

				<hr>
				<article class="content__item color-2 mid">
					<p>
						<a href="login">Click Here </a> to L<font color="red">0</font>G-<font
							color="red">1</font>N
					</p>
				</article>
		</section>

	</div>
	<!-- /container -->
	<footer>
		&copy; 2015 <strong>ProMaGizmo | PMG</strong>. All rights reserved.
	</footer>
	<script
		src="${pageContext.request.contextPath}/static/assets/buynow/js/classie.js"></script>
	<script>
		(function() {
			[].slice
					.call(document.querySelectorAll('.checkout'))
					.forEach(
							function(el) {
								var openCtrl = el
										.querySelector('.checkout__button'), closeCtrls = el
										.querySelectorAll('.checkout__cancel');

								openCtrl
										.addEventListener(
												'click',
												function(ev) {
													ev.preventDefault();
													classie.add(el,
															'checkout--active');
												});

								[].slice
										.call(closeCtrls)
										.forEach(
												function(ctrl) {
													ctrl
															.addEventListener(
																	'click',
																	function() {
																		classie
																				.remove(
																						el,
																						'checkout--active');
																	});
												});
							});
		})();
	</script>
	<!--On top-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>
	<script>
		// elevator.
		var elementButton = document.querySelector('footer');
		var elevator = new Elevator({
			element : elementButton,
			mainAudio : '../.././music/elevator-music.mp3', // Music from http://www.bensound.com/
			endAudio : '../.././music/ding.mp3'
		});
	</script>
</body>
</html>
