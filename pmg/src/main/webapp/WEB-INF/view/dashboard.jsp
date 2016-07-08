<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!--[if lt IE 7]>  <html class="lt-ie7"> <![endif]-->
<!--[if IE 7]>     <html class="lt-ie8"> <![endif]-->
<!--[if IE 8]>     <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ProMaGizmo | PMG</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--font-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/fonts/Chant/chant.css"
	charset="utf-8" />

<!--Alert-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/alert/alert.css" />

<!-- nanoScroller -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/nanoScroller/nanoscroller.css" />

<!-- FontAwesome -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/font-awesome/css/font-awesome.min.css" />

<!-- Material Design Icons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/material-design-icons/css/material-design-icons.min.css" />

<!-- IonIcons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/ionicons/css/ionicons.min.css" />

<!-- WeatherIcons -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/weatherIcons/css/weather-icons.min.css" />

<!-- Rickshaw -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/rickshaw/rickshaw.min.css" />

<!-- nvd3 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/nvd3/nv.d3.min.css" />

<!-- Google Prettify -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/google-code-prettify/prettify.css" />

<!-- Main -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/pmg/css/pmg.css" />
<!-- endbuild -->

<!--[if lt IE 9]>
    <script src="../../assets/core/html5shiv/html5shiv.min.js"></script>
  <![endif]-->
</head>

<body class="aside-toggled">

	<nav class="navbar-top">
		<!-- START navbar header-->
		<div class="navbar-header">
			<a href="#" class="navbar-brand">
				<div class="brand-logo">ProMaGizmo</div>
			</a>
		</div>
		<!-- END navbar header-->
		<div class="nav-wrapper">

			<!-- Sidebar toggle -->
			<a href="#" class="yay-toggle">
				<div class="burg1"></div>
				<div class="burg2"></div>
				<div class="burg3"></div>
			</a>
			<!-- Sidebar toggle -->

			<!-- Menu -->
			<jsp:include page="header.jsp" />
			<!-- /Menu -->
		</div>
	</nav>
	<!-- /Top Navbar -->

	<aside
		class="yaybar yay-light yay-shrink yay-hide-to-small yay-gestures z-depth-2">
		<div class="top">
			<div>
				<!-- Sidebar toggle -->
				<a href="#" class="yay-toggle">
					<div class="burg1"></div>
					<div class="burg2"></div>
					<div class="burg3"></div>
				</a>
				<!-- Sidebar toggle -->
			</div>
		</div>
		<jsp:include page="left_menu.jsp" />
	</aside>
	<!-- /Yay Sidebar -->

	<!-- Main Content -->
	<section class="content-wrap">
		<!-- Breadcrumb -->
		<div class="page-title z-depth-1" />

		<!-- /Breadcrumb -->

		<div class="row sortable">

			<div class="col l3 m6 s12">
				<div
					class="card-panel stats-card teal lighten-2 white-text z-depth-2">
					<span class="count"><i class="fa fa-dollar"><c:out
								value="${account.weektarget}" /></i> </span>
					<p>
					<div class="name">Weekly Target</div>


					<div class="progress small">
						<div class="red lighten-2 white-text" style="width: 40%"></div>
					</div>
				</div>
			</div>
			<div class="col l3 m6 s12">
				<div
					class="card-panel stats-card red lighten-2 white-text z-depth-2">
					<span class="count"><i class="fa fa-dollar"></i> <c:out
							value="${account.monthtarget}" /></span>
					<p>
					<div class="name">Monthly Target</div>
					</p>
					<div class="progress small">
						<div class="green lighten-2 white-text" style="width: 40%"></div>
					</div>
				</div>
			</div>
		</div>


	</section>
	<!-- /Main Content -->


	<!-- Chat.chat-light - light color scheme-->
	<div class="chat z-depth-4-hover">
		<div class="layer-overlay"></div>
		<div class="layer-content">
			<!-- Contacts -->
			<div class="contacts">
				<!-- Top Bar -->
				<div class="topbar">
					<a href="#!" class="text">Chat</a> <a href="#!" class="chat-toggle"><i
						class="mdi-navigation-close"></i></a>
				</div>
				<!-- /Top Bar -->
				<div class="nano">
					<div class="nano-content">
						<span class="label">Share - Suggest</span>
						<div class="user">
							<img
								src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
								alt="Felecia Castro" class="circle photo">
							<div class="name">The CREATOR</div>
							<div class="status">Chat with Me!</div>
							<div class="online">
								<i class="ongreen-text fa fa-circle"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Contacts -->

			<!-- Messages -->
			<div class="messages">

				<!-- Top Bar with back link -->
				<div class="topbar">
					<a href="#!" class="chat-toggle"><i
						class="mdi-navigation-close"></i></a> <a href="#!" class="chat-back"><i
						class="mdi-hardware-keyboard-arrow-left"></i> Back</a>
				</div>
				<!-- /Top Bar with back link -->

				<!-- All messages list -->
				<div class="list">
					<div class="nano scroll-bottom">
						<div class="nano-content">

							<div class="date">Monday, Feb 23, 8:23 pm</div>

							<div class="from-me">
								Hi, Felicia. <br>How are you?
							</div>

							<div class="clear"></div>

							<div class="from-them">
								<img
									src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
									alt="John Doe" class="circle photo">Hi! I am good!
							</div>

							<div class="clear"></div>

							<div class="from-me">
								Glad to see you :) <br>This long text is intended to show
								how the chat will display it.
							</div>

							<div class="clear"></div>

							<div class="from-them">
								<img
									src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
									alt="John Doe" class="circle photo">Also, we will send
								the longest word to show how it will fit in the chat window: <strong>Pneumonoultramicroscopicsilicovolcanoconiosis</strong>
							</div>

							<div class="date">Friday, Mar 10, 5:07 pm</div>

							<div class="from-me">Hi again!</div>

							<div class="clear"></div>

							<div class="from-them">
								<img
									src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
									alt="John Doe" class="circle photo">Hi! Glad to see you.
							</div>

							<div class="clear"></div>

							<div class="from-me">I want to add you in my Facebook.</div>

							<div class="clear"></div>

							<div class="from-me">Can you give me your page?</div>

							<div class="clear"></div>

							<div class="from-them">
								<img
									src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
									alt="John Doe" class="circle photo">I do not use
								Facebook. But you can follow me in Twitter.
							</div>

							<div class="clear"></div>

							<div class="from-me">It's good idea!</div>

							<div class="clear"></div>

							<div class="from-them">
								<img
									src="${pageContext.request.contextPath}/static/assets/core/pmg/images/user2.jpg"
									alt="John Doe" class="circle photo">You can find me here
								- <a href="https://twitter.com/nkdevv">https://twitter.com/nkdevv</a>
							</div>

						</div>
					</div>
				</div>
				<!-- /All messages list -->

				<!-- Send message -->
				<div class="send">
					<form action="#!">
						<div class="input-field">
							<input id="chat-message" type="text" name="chat-message">
						</div>

						<button class="btn waves-effect z-depth-2">
							<i class="mdi-content-send"></i>
						</button>
					</form>
				</div>
				<!-- /Send message -->

			</div>
			<!-- /Messages -->
		</div>

	</div>
	<!-- /Chat -->


	<footer class="z-depth-3">
		<i class="fa fa-copyright"></i> 2015 <strong>ProMaGizmo | PMG</strong>.
		All rights reserved.
	</footer>

	<!-- DEMO [REMOVE IT ON PRODUCTION] -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pmg/js/_demo.js"></script>

	<!-- build:js ../../assets/core/js/script.js -->
	<!-- jQuery -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jquery/jquery.min.js"></script>

	<!-- jQuery RAF (improved animation performance) -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jqueryRAF/jquery.requestAnimationFrame.min.js"></script>

	<!-- nanoScroller -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/nanoScroller/jquery.nanoscroller.min.js"></script>

	<!-- Materialize -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/materialize/js/materialize.min.js"></script>

	<!-- Simple Weather -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/simpleWeather/jquery.simpleWeather.min.js"></script>

	<!-- Sparkline -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/sparkline/jquery.sparkline.min.js"></script>

	<!-- Flot -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.time.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.pie.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.tooltip.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/flot/jquery.flot.categories.min.js"></script>

	<!-- d3 -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/d3/d3.min.js"></script>

	<!-- nvd3 -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/nvd3/nv.d3.min.js"></script>

	<!-- Rickshaw -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/rickshaw/rickshaw.min.js"></script>

	<!-- Google Prettify -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/google-code-prettify/prettify.js"></script>

	<!-- Sortable -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/sortable/Sortable.min.js"></script>

	<!-- Main -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pmg/js/pmg.min.js"></script>
	<!-- endbuild -->

	<!--Alert-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>


	<!--News-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

	<!--On top-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>

	<!-- MarkItUp -->
	<script
		src="${pageContext.request.contextPath}/static/assets/core/markitup/sets/default/set.js"
		type="text/javascript"></script>
	<link
		href="${pageContext.request.contextPath}/static/assets/core/markitup/skins/pmg/style.css"
		rel="stylesheet" type="text/css" />
	<link
		href="${pageContext.request.contextPath}/static/assets/core/markitup/sets/default/style.css"
		rel="stylesheet" type="text/css" />
	<script>
		// elevator.
		var elementButton = document.querySelector('footer');
		var elevator = new Elevator({
			element : elementButton,
			mainAudio : '../.././music/elevator-music.mp3', // Music from http://www.bensound.com/
			endAudio : '../.././music/ding.mp3'
		});
	</script>
	<script>
		/*
		 * Revenue Line Chart
		 */
		(function() {
			var chart = $("#revenueLineChart");
			var dataPhones = {
				data : [ [ 1, 1396.49 ], [ 2, 1223.26 ], [ 3, 1185.82 ],
						[ 4, 1203.58 ], [ 5, 1028.26 ], [ 6, 1260.74 ],
						[ 7, 1169.33 ], [ 8, 1068.55 ], [ 9, 1267.51 ],
						[ 10, 1331.9 ], [ 11, 1065.97 ], [ 12, 1162.62 ] ],
				idx : 0,
				label : "Total"
			};
			var dataTablets = {
				data : [ [ 1, 1042.49 ], [ 2, 1096.24 ], [ 3, 868.09 ],
						[ 4, 848.95 ], [ 5, 1153.2 ], [ 6, 822.75 ],
						[ 7, 857.52 ], [ 8, 755.9 ], [ 9, 993.13 ],
						[ 10, 1193.1 ], [ 11, 790.67 ], [ 12, 937.19 ] ],
				idx : 1,
				label : "Clicked"
			};
			var dataWatches = {
				data : [ [ 1, 631.99 ], [ 2, 585.23 ], [ 3, 731.48 ],
						[ 4, 450.13 ], [ 5, 592.13 ], [ 6, 743.91 ],
						[ 7, 616.52 ], [ 8, 570.09 ], [ 9, 722.23 ],
						[ 10, 525.69 ], [ 11, 563.85 ], [ 12, 519.79 ] ],
				idx : 2,
				label : "Pending"
			};
			var dataTVs = {
				data : [ [ 1, 1131.78 ], [ 2, 1305.13 ], [ 3, 1392.68 ],
						[ 4, 1055.79 ], [ 5, 1432.01 ], [ 6, 1098.6 ],
						[ 7, 1280.68 ], [ 8, 1010.23 ], [ 9, 1267.37 ],
						[ 10, 1447.23 ], [ 11, 1447.43 ], [ 12, 1073.42 ] ],
				idx : 3,
				label : "Rejected"
			};
			var options = {
				series : {
					lines : {
						show : true,
						lineWidth : 1,
						fill : false
					},
					points : {
						show : true,
						lineWidth : 2,
						radius : 3
					},
					shadowSize : 0,
					stack : true
				},
				grid : {
					hoverable : true,
					clickable : true,
					tickColor : "#f9f9f9",
					borderWidth : 0
				},
				legend : {
					// show: false
					backgroundOpacity : 0,
					labelBoxBorderColor : "#fff",
					labelFormatter : function(label, series) {
						return '<a href="#" onClick="togglePlot(' + series.idx
								+ '); return false;" style="color: inherit">'
								+ label + '_$ta';
					}
				},
				colors : [ "#ab47bc", "#5c6bc0", "#26a69a", "#ef5350" ],
				xaxis : {
					ticks : [ [ 1, "Jan" ], [ 2, "Feb" ], [ 3, "Mar" ],
							[ 4, "Apr" ], [ 5, "May" ], [ 6, "Jun" ],
							[ 7, "Jul" ], [ 8, "Aug" ], [ 9, "Sep" ],
							[ 10, "Oct" ], [ 11, "Nov" ], [ 12, "Dec" ] ],
					font : {
						family : "Papyrus,chant,alpha,Flamenco,Dosis,Lato,Arial,sans-serif,Roboto,sans-serif",
						color : "#A5A5A5"
					}
				},
				yaxis : {
					ticks : 7,
					font : {
						color : "#A5A5A5"
					}
				}
			};

			var plot;
			function initFlot() {
				plot = $.plot(chart, [ dataPhones, dataTablets, dataWatches,
						dataTVs ], options);
				chart.css({
					marginTop : 25
				}).find('.legend table').css({
					marginTop : -35,
					width : 'auto'
				}).find('td').css({
					padding : 5
				})
				chart.find('tr').css({
					display : 'block',
					'float' : 'left'
				});
			}
			initFlot();
			$(window).on('resize', initFlot);

			window.togglePlot = function(seriesIdx) {
				var someData = plot.getData();
				someData[seriesIdx].lines.show = !someData[seriesIdx].lines.show;
				someData[seriesIdx].points.show = !someData[seriesIdx].points.show;
				plot.setData(someData);
				plot.draw();
			}

			function showTooltip(x, y, contents) {
				var tooltip = $('_$tag_____________' + contents + '_$tag_')
						.css({
							position : 'absolute',
							display : 'none',
							top : y - 60,
							color : "#fff",
							padding : '5px 10px',
							marginLeft : '-10px',
							'border-radius' : '3px',
							'background-color' : 'rgba(0,0,0,0.6)'
						}).appendTo("body");

				tooltip.css({
					left : x - tooltip.width() / 2
				}).fadeIn(200);
			}

			var previousPoint = null;
			chart
					.bind(
							"plothover",
							function(event, pos, item) {
								if (item) {
									if (previousPoint != item.dataIndex) {
										previousPoint = item.dataIndex;

										$("#tooltip").remove();
										var x = item.datapoint[0].toFixed(0), y = item.datapoint[1]
												.toFixed(0);

										var month = item.series.xaxis.ticks[item.dataIndex].label;

										showTooltip(item.pageX, item.pageY,
												month + "_$ta"
														+ item.series.label
														+ " : " + y);
									}
								} else {
									$("#tooltip").remove();
									previousPoint = null;
								}
							});
		}());

		/*
		 * Revenue Bar Chart
		 */
		$(function() {
			var chart = $("#revenueBarChart");
			var data = [ {
				data : [ [ "Total", 100 ] ],
				color : "#ab47bc"
			}, {
				data : [ [ "Clicked", 67 ] ],
				color : "#5c6bc0"
			}, {
				data : [ [ "Pending", 30 ] ],
				color : "#26a69a"
			}, {
				data : [ [ "Rejected", 3 ] ],
				color : "#ef5350"
			} ];
			var options = {
				series : {
					bars : {
						show : true,
						barWidth : 0.4,
						lineWidth : 0,
						align : "center",
						fill : 1
					}
				},
				grid : {
					hoverable : true,
					tickColor : "#f9f9f9",
					borderWidth : 0
				},
				xaxis : {
					mode : "categories",
					font : {
						family : "Papyrus,Roboto,sans-serif",
						color : "#A5A5A5"
					}
				},
				yaxis : {
					ticks : 7,
					font : {
						family : "Papyrus,Roboto,sans-serif",
						color : "#A5A5A5"
					}
				}
			};

			var plot;
			function initFlot() {
				plot = $.plot(chart, data, options);
				chart.css({
					marginTop : 25
				});
			}
			initFlot();
			$(window).on('resize', initFlot);

			function showTooltip(x, y, contents) {
				var tooltip = $('_$tag_____________' + contents + '_$tag_')
						.css({
							position : 'absolute',
							display : 'none',
							top : y - 40,
							color : "#fff",
							padding : '5px 10px',
							marginLeft : '-10px',
							'border-radius' : '3px',
							'background-color' : 'rgba(0,0,0,0.6)'
						}).appendTo("body");

				tooltip.css({
					left : x - tooltip.width() / 2
				}).fadeIn(200);
			}

			var previousPoint = null;
			chart
					.bind(
							"plothover",
							function(event, pos, item) {
								if (item) {
									if (previousPoint != item.dataIndex) {
										previousPoint = item.dataIndex;

										$("#tooltip").remove();
										var x = item.datapoint[0].toFixed(0), y = item.datapoint[1]
												.toFixed(0);

										var month = item.series.xaxis.ticks[item.dataIndex].label;

										showTooltip(item.pageX, item.pageY,
												item.series.data[0][0] + " : "
														+ y);
									}
								} else {
									$("#tooltip").remove();
									previousPoint = null;
								}
							});
		});
	</script>
	<script>
		/*
		 * Revenue Line Chart
		 */
		(function() {
			var chart = $("#LRline");
			var dataPhones = {
				data : [ [ 1, 1396.49 ], [ 2, 1223.26 ], [ 3, 1185.82 ],
						[ 4, 1203.58 ], [ 5, 1028.26 ], [ 6, 1260.74 ],
						[ 7, 1169.33 ], [ 8, 1068.55 ], [ 9, 1267.51 ],
						[ 10, 1331.9 ], [ 11, 1065.97 ], [ 12, 1162.62 ] ],
				idx : 0,
				label : "Total"
			};
			var dataTablets = {
				data : [ [ 1, 1042.49 ], [ 2, 1096.24 ], [ 3, 868.09 ],
						[ 4, 848.95 ], [ 5, 1153.2 ], [ 6, 822.75 ],
						[ 7, 857.52 ], [ 8, 755.9 ], [ 9, 993.13 ],
						[ 10, 1193.1 ], [ 11, 790.67 ], [ 12, 937.19 ] ],
				idx : 1,
				label : "Clicked"
			};
			var dataWatches = {
				data : [ [ 1, 631.99 ], [ 2, 585.23 ], [ 3, 731.48 ],
						[ 4, 450.13 ], [ 5, 592.13 ], [ 6, 743.91 ],
						[ 7, 616.52 ], [ 8, 570.09 ], [ 9, 722.23 ],
						[ 10, 525.69 ], [ 11, 563.85 ], [ 12, 519.79 ] ],
				idx : 2,
				label : "Pending"
			};
			var dataTVs = {
				data : [ [ 1, 1131.78 ], [ 2, 1305.13 ], [ 3, 1392.68 ],
						[ 4, 1055.79 ], [ 5, 1432.01 ], [ 6, 1098.6 ],
						[ 7, 1280.68 ], [ 8, 1010.23 ], [ 9, 1267.37 ],
						[ 10, 1447.23 ], [ 11, 1447.43 ], [ 12, 1073.42 ] ],
				idx : 3,
				label : "Rejected"
			};
			var dataAccept = {
				data : [ [ 1, 1131.78 ], [ 2, 1230.13 ], [ 3, 1890.68 ],
						[ 4, 1055.79 ], [ 5, 1032.01 ], [ 6, 1908.6 ],
						[ 7, 1802.68 ], [ 8, 1210.23 ], [ 9, 1279.37 ],
						[ 10, 1207.23 ], [ 11, 1337.43 ], [ 12, 1573.42 ] ],
				idx : 4,
				label : "Accepted"
			};
			var options = {
				series : {
					lines : {
						show : true,
						lineWidth : 1,
						fill : false
					},
					points : {
						show : true,
						lineWidth : 2,
						radius : 3
					},
					shadowSize : 0,
					stack : true
				},
				grid : {
					hoverable : true,
					clickable : true,
					tickColor : "#f9f9f9",
					borderWidth : 0
				},
				legend : {
					// show: false
					backgroundOpacity : 0,
					labelBoxBorderColor : "#fff",
					labelFormatter : function(label, series) {
						return '<a href="#" onClick="togglePlot(' + series.idx
								+ '); return false;" style="color: inherit">'
								+ label + '</a>';
					}
				},
				colors : [ "#ab47bc", "#5c6bc0", "#26a69a", "#ef5350",
						"#8EF79C" ],
				xaxis : {
					ticks : [ [ 1, "Jan" ], [ 2, "Feb" ], [ 3, "Mar" ],
							[ 4, "Apr" ], [ 5, "May" ], [ 6, "Jun" ],
							[ 7, "Jul" ], [ 8, "Aug" ], [ 9, "Sep" ],
							[ 10, "Oct" ], [ 11, "Nov" ], [ 12, "Dec" ] ],
					font : {
						family : "Papyrus,chant,alpha,Flamenco,Dosis,Lato,Arial,sans-serif,Roboto,sans-serif",
						color : "#A5A5A5"
					}
				},
				yaxis : {
					ticks : 7,
					font : {
						color : "#A5A5A5"
					}
				}
			};

			var plot;
			function initFlot() {
				plot = $.plot(chart, [ dataPhones, dataTablets, dataWatches,
						dataTVs, dataAccept ], options);
				chart.css({
					marginTop : 25
				}).find('.legend table').css({
					marginTop : -35,
					width : 'auto'
				}).find('td').css({
					padding : 5
				})
				chart.find('tr').css({
					display : 'block',
					'float' : 'left'
				});
			}
			initFlot();
			$(window).on('resize', initFlot);

			window.togglePlot = function(seriesIdx) {
				var someData = plot.getData();
				someData[seriesIdx].lines.show = !someData[seriesIdx].lines.show;
				someData[seriesIdx].points.show = !someData[seriesIdx].points.show;
				plot.setData(someData);
				plot.draw();
			}

			function showTooltip(x, y, contents) {
				var tooltip = $('<div id="tooltip">' + contents + '</div>')
						.css({
							position : 'absolute',
							display : 'none',
							top : y - 60,
							color : "#fff",
							padding : '5px 10px',
							marginLeft : '-10px',
							'border-radius' : '3px',
							'background-color' : 'rgba(0,0,0,0.6)'
						}).appendTo("body");

				tooltip.css({
					left : x - tooltip.width() / 2
				}).fadeIn(200);
			}

			var previousPoint = null;
			chart
					.bind(
							"plothover",
							function(event, pos, item) {
								if (item) {
									if (previousPoint != item.dataIndex) {
										previousPoint = item.dataIndex;

										$("#tooltip").remove();
										var x = item.datapoint[0].toFixed(0), y = item.datapoint[1]
												.toFixed(0);

										var month = item.series.xaxis.ticks[item.dataIndex].label;

										showTooltip(item.pageX, item.pageY,
												month + "<br>"
														+ item.series.label
														+ " : " + y);
									}
								} else {
									$("#tooltip").remove();
									previousPoint = null;
								}
							});
		}());

		/*
		 * Revenue Bar Chart
		 */
		$(function() {
			var chart = $("#LRbar");
			var data = [ {
				data : [ [ "Total", 100 ] ],
				color : "#ab47bc"
			}, {
				data : [ [ "Clicked", 67 ] ],
				color : "#5c6bc0"
			}, {
				data : [ [ "Pending", 30 ] ],
				color : "#26a69a"
			}, {
				data : [ [ "Rejected", 3 ] ],
				color : "#ef5350"
			}, {
				data : [ [ "Accepted", 47 ] ],
				color : "#8EF79C"
			} ];
			var options = {
				series : {
					bars : {
						show : true,
						barWidth : 0.5,
						lineWidth : 0,
						align : "center",
						fill : 1
					}
				},
				grid : {
					hoverable : true,
					tickColor : "#f9f9f9",
					borderWidth : 0
				},
				xaxis : {
					mode : "categories",
					font : {
						family : "Papyrus,Roboto,sans-serif",
						color : "#A5A5A5"
					}
				},
				yaxis : {
					ticks : 7,
					font : {
						family : "Papyrus,Roboto,sans-serif",
						color : "#A5A5A5"
					}
				}
			};

			var plot;
			function initFlot() {
				plot = $.plot(chart, data, options);
				chart.css({
					marginTop : 25
				});
			}
			initFlot();
			$(window).on('resize', initFlot);

			function showTooltip(x, y, contents) {
				var tooltip = $('<div id="tooltip">' + contents + '</div>')
						.css({
							position : 'absolute',
							display : 'none',
							top : y - 40,
							color : "#fff",
							padding : '5px 10px',
							marginLeft : '-10px',
							'border-radius' : '3px',
							'background-color' : 'rgba(0,0,0,0.6)'
						}).appendTo("body");

				tooltip.css({
					left : x - tooltip.width() / 2
				}).fadeIn(200);
			}

			var previousPoint = null;
			chart
					.bind(
							"plothover",
							function(event, pos, item) {
								if (item) {
									if (previousPoint != item.dataIndex) {
										previousPoint = item.dataIndex;

										$("#tooltip").remove();
										var x = item.datapoint[0].toFixed(0), y = item.datapoint[1]
												.toFixed(0);

										var month = item.series.xaxis.ticks[item.dataIndex].label;

										showTooltip(item.pageX, item.pageY,
												item.series.data[0][0] + " : "
														+ y);
									}
								} else {
									$("#tooltip").remove();
									previousPoint = null;
								}
							});
		});
	</script>
	<script>
		// Pie Chart
		(function() {
			var chart = $("#luv");
			var data = [ {
				label : "Healthy",
				data : 68.5,
				color : "#95F68A"
			}, {
				label : "Moderate",
				data : 12.5,
				color : "#EFF68A"
			}, {
				label : "Week",
				data : 9,
				color : "#F7C16D"
			}, {
				label : "Danger",
				data : 11,
				color : "#F76D6D"
			} ];
			var options = {
				series : {
					pie : {
						innerRadius : 0.5,
						show : true
					}
				},
				grid : {
					hoverable : true
				},
				legend : {
					backgroundOpacity : 0,
					labelBoxBorderColor : "none"
				},
				tooltip : true,
				tooltipOpts : {
					content : "%p.0%, %s", // show percentages, rounding to 2 decimal places
					shifts : {
						x : 20,
						y : 0
					},
					defaultTheme : false
				}
			};

			function initFlot() {
				$.plot(chart, data, options);
				chart.find('.legend table').css('width', 'auto').find('td')
						.css('padding', 5);
			}
			initFlot();
			$(window).on('resize', initFlot);

		}());
		// Pie Chart
		(function() {
			var chart = $("#complaint");
			var data = [ {
				label : "Accepted",
				data : 68.5,
				color : "#95F68A"
			}, {
				label : "Pending",
				data : 12.5,
				color : "#EFF68A"
			}, {
				label : "Rejected",
				data : 11,
				color : "#F76D6D"
			} ];
			var options = {
				series : {
					pie : {
						innerRadius : 0.5,
						show : true
					}
				},
				grid : {
					hoverable : true
				},
				legend : {
					backgroundOpacity : 0,
					labelBoxBorderColor : "none"
				},
				tooltip : true,
				tooltipOpts : {
					content : "%p.0%, %s", // show percentages, rounding to 2 decimal places
					shifts : {
						x : 20,
						y : 0
					},
					defaultTheme : false
				}
			};

			function initFlot() {
				$.plot(chart, data, options);
				chart.find('.legend table').css('width', 'auto').find('td')
						.css('padding', 5);
			}
			initFlot();
			$(window).on('resize', initFlot);

		}());
	</script>
	<script>
		$(window).load(function() {
			$('code.language-javascript').mCustomScrollbar();
		});
		var nt_title = $('#nt-title').newsTicker({
			row_height : 40,
			max_rows : 1,
			duration : 3000,
			pauseOnHover : 1
		});
		setTimeout(function() {
			toast('Welcome to ProMaGizmo | PMG!', 1000, '#F3F68D');
		}, 1000);
	</script>

</body>

</html>