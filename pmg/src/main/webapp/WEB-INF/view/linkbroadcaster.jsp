
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie ie6 lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="ie ie7 lt-ie9 lt-ie8"        lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="ie ie8 lt-ie9"               lang="en"> <![endif]-->
<!--[if IE 9]>    <html class="ie ie9"                      lang="en"> <![endif]-->
<!--[if !IE]><!-->


<html lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ProMaGizmo | PMG</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--font-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/fonts/Chant/chant.css" />

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

<!-- Main -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/pmg/css/pmg.css" />
<!-- endbuild -->


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
		<div class="page-title z-depth-1">
			<div id="nt-title-container">
				<ul id="nt-title">
					<li>A powerful, flexible and animated vertical news ticker
						plugin.</li>
					<li>Provides hight flexibility thanks to numerous callbacks &
						methods.</li>
					<li>Fully customizable to every kind of vertical scrolling
						need.</li>
					<li>Light-weight and optimized JQuery plugin.</li>
				</ul>
			</div>
			<div class="col s12 m3 l2 right-align">
				<a
					class="mail-compose-btn btn-floating btn-extra waves-effect waves-light red z-depth-4-hover chat-toggle tooltipped"
					data-tooltip="Chat with US" data-position="left"> <i
					class="fa fa-comments"></i>
				</a>
			</div>
		</div>
		<!-- /Breadcrumb -->
		<div class="card z-depth-2 col s12">
			<div class="title blue white-text z-depth-1">
				<h5>
					<b> Master Link Submitter</b>
				</h5>
				<a class="minimize" href="#"> <i
					class="mdi-navigation-expand-less"></i>
				</a>
			</div>

			<div class="content">
				<p>
					<font color="black">Hi Player!! Welcome to PMG's Link
						Broadcaster. This is where all the action takes place. Submit your
						links, as many as you may like. Just keep PMG's RoE in mind.</font>
				</p>
				<form action="linkbroadcaster?generateLID=true" autocomplete="off"
					method="post">
					<div class="row">
						<div class="col s6 ">
							<select>
								<option value="" disabled selected>Choose Money Site</option>
								<option class="blue-text" value="1">
									<c:out value="${user.domain}" />
								</option>
							</select>
						</div>
					</div>
					<div class="input-field">
						<i class="mdi-communication-chat prefix"></i>
						<textarea rows="1" cols="5" id="textarea_icon"
							class="materialize-textarea" name="urls"></textarea>

						<label for="textarea_icon">Submit Your Ad Containing Links
							To Broadcast</label>
					</div>
					<div class="row">
						<div class="col s12 l12">
							<ul class="note">
								<li class="success right">
									<button class="btn waves-effect a1 waves-light tooltipped"
										data-position="left" data-delay="50"
										data-tooltip="Submit All The Links From the Selected Domain"
										type="submit" name="action">
										Submit To generate LID <i class="mdi-content-send right"></i>
									</button>
								</li>
							</ul>
						</div>
					</div>
				</form>
			</div>
		</div>

		<!--LB-->
		<form action="linkbroadcaster?generateLID=false" method="post">
			<div class="card z-depth-2 col l12 m8 s6">
				<div class="title blue white-text z-depth-1">
					<h5>
						<b>Master Link Broadcastor</b>
					</h5>
					<a class="minimize" href="#"> <i
						class="mdi-navigation-expand-less"></i>
					</a>
				</div>

				<div class="content col l12 m8 s6">
					<table class="table table-responsive table-bordered l12 m8 s6">
						<thead class="blue white-text">
							<tr>
								<th style="width: 3%" class="center tooltipped"
									data-position="top" data-delay="50" data-tooltip="S.No.">#</th>
								<th style="width: 10%" class="center tooltipped"
									data-position="top" data-delay="50"
									data-tooltip="Link Indentification No.">LID</th>
								<th class="center tooltipped" data-position="top"
									data-delay="50" data-tooltip="Your Selcted Link ">My URLs</th>
								<th class="center tooltipped" data-position="top"
									data-delay="50"
									data-tooltip="Keyword/key phrase for Organic Search in Google">Best
									Keyword</th>
								<th class="center tooltipped" data-position="top"
									data-delay="50" data-tooltip="Link Submitted On"
									style="width: 12%">Submision Date</th>
								<th style="width: 5%" class="center tooltipped"
									data-position="top" data-delay="50"
									data-tooltip="Select the Links to Broadcast">Check</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${linkLists}" var="link">
								<tr>
									<td class="center">1</td>
									<td class="center"><c:if test="${link.lid !=null }">
											<c:out value="${link.lid}" />
											<input type="hidden" value="${link.lid}" name="lid" />
										</c:if></td>
									<td class="center"><c:if test="${link.url !=null }">
											<c:out value="${link.url}" />
											<input type="hidden" value="${link.url}" name="domain" />
										</c:if></td>
									<td><div class="input-field">
											<input id="input_text" type="text" name="keyword"
												class="validate"> <label for="input_text">Relevant
												Keyword</label>
										</div></td>
									<td class="center"><c:if
											test="${link.creationTime !=null }">
											<c:out value="${link.creationTime}" />
											<input type="hidden" value="${link.creationTime}"
												name="ctime" />
										</c:if></td>
									<td class="center"><input class="check check-blue"
										type="checkbox" id="checkbox1" /> <label
										class="check check-blue" for="checkbox1"> </label></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<div class="row">
						<div class="col s6 l6">
							<!-- Dropdown Trigger -->
							<div class="div btn-group tooltipped" data-position="right"
								data-delay="50"
								data-tooltip="Edit / Delete the Selected Link Before Broadcasting">
								<a href="#!" class="waves-effect waves-light btn ">Save</a> <a
									href="#!" class="waves-effect waves-light btn dropdown-button"
									data-activates='dropdown2'><span
									class="mdi-navigation-expand-more"></span></a>
							</div>

							<!-- Dropdown Structure -->
							<ul id='dropdown2' class="dropdown-content">
								<li><a href="#!" class="waves-effect waves-blue">Edit</a></li>
								<li class="divider"></li>
								<li><a href="#!" class="waves-effect waves-red">Delete</a></li>
							</ul>
						</div>


						<div class="col s6 l6">
							<ul class="note">
								<li class="warning confirm right"><input type="submit"
									class="btn waves-effect lb waves-light tooltipped"
									data-position="left" data-delay="50"
									data-tooltip="Broadcast My Selected Link to Other Players"
									value="Begin Broadcaster" /> <!-- <button class="btn waves-effect lb waves-light tooltipped"
										data-position="left" data-delay="50"
										data-tooltip="Broadcast My Selected Link to Other Players"
										type="submit">
										Begin Broadcasting <i class="fa fa-bullhorn right"></i>
									</button> --></li>
							</ul>
						</div>
					</div>
					<div class="progress orange lighten-4">
						<div class="active striped orange" style="width: 10%">10%</div>
					</div>
				</div>
			</div>
			<!--/LB-->
		</form>



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

	<!-- jQuery -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jquery/jquery.min.js"></script>

	<!-- jQuery RAF (improved animation performance) -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jqueryRAF/jquery.requestAnimationFrame.min.js"></script>

	<!-- nanoScroller -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/nanoScroller/jquery.nanoscroller.min.js"></script>


	<!--News-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>

	<!-- Materialize -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/materialize/js/materialize.min.js"></script>

	<!--Alert-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>

	<!--On top-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>

	<!-- Main -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pmg/js/pmg.min.js"></script>
	<!-- endbuild -->

	<script>
            // elevator.
            var elementButton = document.querySelector('footer');
            var elevator = new Elevator({
                element: elementButton,
                mainAudio: '${pageContext.request.contextPath}/static/./music/elevator-music.mp3', // Music from http://www.bensound.com/
                endAudio:  '${pageContext.request.contextPath}/static/./music/ding.mp3'
            });

			// Link Submitter
			document.querySelector('ul.note li.success button.a1').onclick = function(){
		swal({ 
		title:  "Well Done Username",
		text: "Links are Submitted Successfully !!!",
		timer: 3000,
		type: "success",
		showConfirmButton: false
		
	});
};

// Link Broadcastor
document.querySelector('ul.note li.warning.confirm button.lb').onclick = function(){
	swal({
		title: "Are you sure Username?",
		text: "Cancel & Recheck If Not Sure!",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: 'Yes, Do IT!',
		closeOnConfirm: false
	},
	function(){
		swal("Sarting...!", "Link Broadcasting Begins NOW!", "success");
	});
};
			
  </script>
	<script>
    		
    		$(window).load(function(){
	            $('code.language-javascript').mCustomScrollbar();
	        });
            var nt_title = $('#nt-title').newsTicker({
                row_height: 40,
                max_rows: 1,
                duration: 3000,
                pauseOnHover: 1
            });
        </script>

</body>

</html>