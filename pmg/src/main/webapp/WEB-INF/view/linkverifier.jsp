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
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/DataTables-1.10.5/media/css/jquery.dataTables.css">

<!-- START Page Custom CSS-->
<!--jQuery Vdo and Audio Player-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/js/jplayer/skin/blue.monday/jplayer.blue.monday.css" />
<!-- Codemirror -->
<!-- END Page Custom CSS-->
<!-- App CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/app.css">
<!-- Rating CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/app/css/rating.css">
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
			<jsp:param name="user" value="${user}"></jsp:param></jsp:include>

		<!-- END Main wrapper-->

		<section>
			<!-- START Page content-->
			<section class="main-content">
				<div class="row">
					<div class="col-md-12">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 align-middle">
							<div id="jp_container_1" class="jp-video jp-video-360p">
								<div class="jp-type-single">
									<div id="jquery_jplayer_1" class="jp-jplayer"
										style="width: 100%; height: 260px;">
										<img id="jp_poster_0"
											style="width: 100%; height: 260px; display: none;">
										<object id="jp_flash_0" name="jp_flash_0"
											data="js/jplayer/js/Jplayer.swf"
											type="application/x-shockwave-flash" width="1" height="1"
											tabindex="-1">
											<param name="flashvars"
												value="jQuery=jQuery&amp;id=jquery_jplayer_1&amp;vol=0.8&amp;muted=false">
											<param name="allowscriptaccess" value="always">
											<param name="bgcolor" value="#000000">
											<param name="wmode" value="opaque">
										</object>
									</div>
									<div class="jp-gui">
										<div class="jp-video-play" style="display: none;">
											<a href="javascript:;" class="jp-video-play-icon"
												tabindex="1">play</a>
										</div>
										<div class="jp-interface">
											<div class="jp-progress">
												<div class="jp-seek-bar" style="width: 3%;">
													<div class="jp-play-bar" style="width: 2%;"></div>
												</div>
											</div>
											<div class="jp-current-time">00:00</div>
											<div class="jp-duration">00:00</div>
											<div class="jp-controls-holder">
												<ul class="jp-controls">
													<li><a href="javascript:;" class="jp-play"
														tabindex="1">play</a></li>
													<li><a href="javascript:;" class="jp-pause"
														tabindex="1" style="display: none;">pause</a></li>
													<li><a href="javascript:;" class="jp-stop"
														tabindex="1">stop</a></li>
													<li><a href="javascript:;" class="jp-mute"
														tabindex="1" title="mute">mute</a></li>
													<li><a href="javascript:;" class="jp-unmute"
														tabindex="1" title="unmute" style="display: none;">unmute</a></li>
													<li><a href="javascript:;" class="jp-volume-max"
														tabindex="1" title="max volume">max volume</a></li>
												</ul>
												<div class="jp-volume-bar">
													<div class="jp-volume-bar-value" style="width: 80%;"></div>
												</div>
												<ul class="jp-toggles">
													<li><a href="javascript:;" class="jp-full-screen"
														tabindex="1" title="full screen">full screen</a></li>
													<li><a href="javascript:;" class="jp-restore-screen"
														tabindex="1" title="restore screen" style="display: none;">restore
															screen</a></li>
													<li><a href="javascript:;" class="jp-repeat"
														tabindex="1" title="repeat">repeat</a></li>
													<li><a href="javascript:;" class="jp-repeat-off"
														tabindex="1" title="repeat off" style="display: none;">repeat
															off</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="jp-no-solution" style="display: none;">
										<span>Update Required</span> To play the media you will need
										to either update your browser to a recent version or update
										your <a href="http://get.adobe.com/flashplayer/"
											target="_blank">Flash plugin</a>.
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<h3></h3>
				<!---------------------------->
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Link Verifier Playlist</b> <a href="javascript:void(0);"
								data-perform="panel-dismiss" data-toggle="tooltip" title=""
								class="pull-right" data-original-title="Close Panel"> <em
								class="fa fa-times"></em>
							</a> <a href="javascript:void(0);" data-perform="panel-collapse"
								data-toggle="tooltip" title="" class="pull-right"
								data-original-title="Collapse Panel"> <em
								class="fa fa-minus"></em>
							</a>
						</div>
						<!-- START table-responsive-->
						<div class="panel-wrapper collapse in" style="">
							<div class="table-responsive">
								<table id="proofverification"
									class="table table-bordered table-hover">
									<thead>
										<tr>
											<th style="width: 3%">S.No.</th>
											<th style="width: 5%">Username</th>
											<th>My URLs</th>
											<th>MY Ad URLs</th>
											<th style="width: 5%">Date of Submision</th>
											<th style="width: 5%">Visit Evidence</th>
											<th style="width: 5%">Download Evidence</th>
											<th style="width: 5%">Rating</th>
											<th style="width: 5%" class="check-all">
												<div data-toggle="tooltip" data-title="Check All"
													class="checkbox c-checkbox" data-original-title="" title="">
													<label> <input type="checkbox"> <span
														class="fa fa-check"></span>
													</label>
												</div>
											</th>
										</tr>
									</thead>
									<form id="proofresult" method="post"
										enctype="multipart/form-data"
										action="${pageContext.request.contextPath}/proofresult">
										<tbody>

										</tbody>
									</form>
								</table>
							</div>
							<div class="panel-footer">
								<div class="row">
									<div class="col-lg-8"></div>
									<div class="col-lg-2"></div>

									<ul class="list-inline app-buttons pull-right">
										<li>
											<button type="button" onclick="sendProofResult('approve')"
												id="approve" class="btn btn-labeled btn-success">
												<span class="btn-label"><i class="fa fa-check"></i> </span><b>I
													APPROVE</b>
											</button>
										</li>
										<li>
											<button type="button" onclick="sendProofResult('disapprove')"
												class="btn btn-labeled btn-danger">
												<span class="btn-label"><i class="fa fa-times"></i> </span><b>I
													DISAPPROVE</b>
											</button>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- END table-responsive-->

					</div>
				</div>


			</section>
			<!-- END Page content-->
		</section>
	</section>
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
	<!-- jQuery audio VDO player  -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/js/jplayer/js/jquery.jplayer.min.js"></script>
	<!-- jQuery barrating  -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/app/js/jquery.barrating.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/js/jplayer/jplayer.init.js"></script>
	<!-- END Page Custom Script-->
	<!-- DataTables -->
	<script type="text/javascript" charset="utf8"
		src="${pageContext.request.contextPath}/static/DataTables-1.10.5/media/js/jquery.dataTables.js"></script>
	<!-- App Main-->
	<script src="${pageContext.request.contextPath}/static/app/js/app.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/app/js/userajax.js"></script>
	<script type="text/javascript">
		getTopUsers();
		getNoOfNotification();
		addRowsToTableVerifier();
		getLinkStatus();
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#proofverification').DataTable();
		});
	</script>

	<!-- END Scripts-->
</body>

</html>