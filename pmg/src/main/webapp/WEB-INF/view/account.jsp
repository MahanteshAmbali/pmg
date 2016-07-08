<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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

<!-- Clock -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/jquery-clockpicker/jquery-clockpicker.min.css">

<!-- Main -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/core/pmg/css/pmg.css" />
<!-- endbuild -->


<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {

		/*********************BEst time**********************/
		var bestimevar = [];
		<c:forEach items="${account.bestTime}" var="besttime">
			bestimevar.push('${besttime}');
		</c:forEach>
		//start time
		//var start_time = $("#start_time").val();
		

		var startDate = bestimevar[0];
		var endDate = bestimevar[1];
		

		//end time
		//var end_time = $("#end_time").val();
		/*********************BEst time**********************/

		/////////////////////////////////////DURATION////////////////////////////
		var durationvar = [];
		<c:forEach items="${account.duration}" var="duration">
			durationvar.push('${duration}');
		</c:forEach>

		$.each(durationvar, function(index, duration) {
			if (duration == 7) {
				$("#dura option[value='7'").prop('selected', true);
			}
			if (duration == 14) {
				$("#dura option[value='14'").prop('selected', true);
			}
			if (duration == 21) {
				$("#dura option[value='21'").prop('selected', true);
			}
			if (duration == 28) {
				$("#dura option[value='28'").prop('selected', true);
			}
			if (duration == 30) {
				$("#dura option[value='30'").prop('selected', true);
			}
		});

		var daysvar = [];
		
		<c:forEach items="${account.days}" var="days">
			daysvar.push('${days}');
		</c:forEach>
		
		$.each(daysvar, function(index, day) {
			if (day.toLowerCase().indexOf("monday") >= 0) {
				$('#mon').prop('checked', true);
			}
			if (day.toLowerCase().indexOf("tuesday") >= 0) {
				$('#tues').prop('checked', true);
			}
			if (day.toLowerCase().indexOf("wednesday") >= 0) {
				$('#wed').prop('checked', true);
			}
			if (day.toLowerCase().indexOf("thursday") >= 0) {
				$('#thu').prop('checked', true);
			}
			if (day.toLowerCase().indexOf("friday") >= 0) {
				$('#fri').prop('checked', true);
			}
			if (day.toLowerCase().indexOf("saturday") >= 0) {
				$('#sat').prop('checked', true);
			}
			if (day.toLowerCase().indexOf("sunday") >= 0) {
				$('#sun').prop('checked', true);
			}
		});
	});
</script>


</head>


<body class="aside-toggled">
<c:out value="${user.firstname} + KULKARNI"/>
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

		<!-- /Breadcrumb -->
		<sf:form action="accountsetup" method="post" modelAttribute="account"
			autocomplete="false">
			<div class="card z-depth-2 col s12">
				<div class="title blue white-text z-depth-1">
					<h5>
						<b> Account Setup</b>
					</h5>
					<a class="minimize" href="#"> <i
						class="mdi-navigation-expand-less"></i>
					</a>
				</div>

				<div class="content blue-text">
					<p>
					<h4 class="txt-weight">This is where you can let PMG know more
						about you. Take time to understand this page and fill in the
						details carefully.</h4>
					</p>
					<br></br>

					<!-- Domain Name -->
					<div class="row no-margin-top">
						<div class="col s12 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text txt-weight"> Domain Name
							</label>
						</div>

						<div class="col s12 l3">
							<div class="input-field">
								<input readonly="readonly" id="domain" name="domain" type="text"
									class="validate" value="${user.domain}" /> <label
									class="txt-weight" for="abc.coms"> </label>
							</div>
						</div>

						<!-- /Domain Name -->

						<div class="col s12 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text txt-weight"> Links
								Submitted </label>
						</div>
						<div class="col s12 l3">

							<div class="input-field">
								<input id="linksSubmitted" readonly="readonly"
									name="linksSubmitted" type="number" class="validate" 
									<c:if test="${account.linksSubmitted eq null}">
										value="0"/>
									</c:if>
									<c:if test="${account.linksSubmitted ne null}">
										value="${account.linksSubmitted}" />
									</c:if>
							</div>

						</div>
					</div>

					<!-- /Links Submitted -->

					<div class="row">
						<div class="col s12 l12">
							<li class="divider line"></li>
						</div>
					</div>

					<!--   Time -->
					<div class="row no-margin-top txt-weight">
						<div class="col s3 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text"> Best Time (to Send n
								Receive) </label>
						</div>
						<div class="input-field col s3 l3">
							<c:if test="${account.bestTime ==null}">
								<input id="bestTime" name="bestTime" type="text"
									class="clockpicker" data-donetext="OK" />
							</c:if>
							<c:forEach var="bt" items="${account.bestTime}" end="0">
								<input id="bestTime" name="bestTime" type="text" value="${bt}"
									class="clockpicker" data-donetext="OK" />
							</c:forEach>
						</div>

						<div class="input-field col s3 l3">
							<c:if test="${account.bestTime ==null}">
								<input id="bestTime" name="bestTime" type="text"
									class="clockpicker" data-donetext="OK" />
							</c:if>
							<c:forEach var="bt" items="${account.bestTime}" begin="1">
								<input id="bestTime" name="bestTime" type="text" value="${bt}"
									class="clockpicker" data-donetext="OK" />
							</c:forEach>
						</div>


						<!-- End of Best Time -->

						<!-- Plus icon and delete  to add another Best Time -->
						<div class="col s3 l3 center"></div>
					</div>
					<!--End of Plus and delete icon to add another Best Time -->

					<!-- Select Days -->
					<div class="row">
						<div class="col s12 l3">
							<label class="setting-title blue-text"> <b>Select
									Days</b>
							</label>
						</div>

						<div class="col s12 l9">
							<div class="col s2 l2">
								<input type="checkbox" id="mon" name="days" value="Monday" /> <label
									class="blue-text" for="mon">Monday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="tues" name="days" value="Tuesday" />
								<label class="blue-text" for="tues">Tuesday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="wed" name="days" value="Wednesday" />
								<label class="blue-text" for="wed">Wednesday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="thu" name="days" value="Thursday" />
								<label class="blue-text" for="thu">Thursday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="fri" name="days" value="Friday" /> <label
									class="blue-text" for="fri">Friday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="sat" name="days" value="Saturday" />
								<label class="orange-text" for="sat">Saturday</label>
							</div>
							<div class="col s2 l2">
								<input type="checkbox" id="sun" name="days" value="Sunday" /> <label
									class="orange-text" for="sun">Sunday</label>
							</div>


						</div>

					</div>
					<!--END  Select Days -->


					<!-- Duration -->
					<div class="row">
						<div class="col s3 l3">
							<h5>
								<b>Duration</b>
							</h5>
						</div>
						<div class="col s8 l8 order-status-select">
							<select id="dura" name="duration">
								<option value="no">None</option>
								<option value="7">One Week</option>
								<option value="14">Two Weeks</option>
								<option value="14">Two Weeks</option>
								<option value="21">Three Weeks</option>
								<option value="28">Four Weeks</option>
								<option value="30">One Month</option>
							</select>
						</div>
					</div>
					<!-- End of Duration -->


					<div class="row">
						<div class="col s12 l12">
							<li class="divider line"></li>
						</div>
					</div>

					<!-- LB rate -->
					<div class="row no-margin-top txt-weight">
						<div class="col s12 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text"> Select Daily Link
								Broadcasting Rate </label>
						</div>
						<div class="col s12 l9 txt-weight">

							<p class="range-field tooltipped" data-position="buttom"
								data-delay="50"
								data-tooltip=" Drag to Select. It is Recommended that you should broadcast 10% of your traffic">
								<input type="range" min="0" max="100"
									value="<c:out value="${account.dailyBroadcastingRate}"/>"
									name="dailyBroadcastingRate" />
							</p>
						</div>
					</div>
					<!-- /LB Rate -->

					<div class="row">
						<div class="col s12 l12">
							<li class="divider line"></li>
						</div>
					</div>

					<!--   Vacation -->
					<div class="row no-margin-top txt-weight">
						<div class="col s12 l3">
							<label for="ecommerce-product-name"
								class="setting-title blue-text"> Vacation (Don't Send n
								Recieve) </label>
						</div>

						<div class="col s12 l3">
							<div class="input-field">
								<c:if test="${account.vacation == null}">
									<input class="datepicker" id="vacation" type="date"
										name="vacation" />
								</c:if>
								<c:forEach var="vc" items="${account.vacation}" end="0">
									<input class="datepicker" id="vacation" type="date"
										name="vacation" value="${vc}" />
								</c:forEach>
							</div>
						</div>

						<div class="col s12 l3">
							<div class="input-field">
								<c:if test="${account.vacation == null}">
									<input class="datepicker" id="vacation" type="date"
										name="vacation" />
								</c:if>
								<c:forEach var="vc" items="${account.vacation}" begin="1">
									<input class="datepicker" id="vacation" type="date"
										name="vacation" value="${vc}" />
								</c:forEach>
							</div>
						</div>

						<div class="col s12 l3 center"></div>
						<!-- /  Vacation -->


						<div class="row">
							<div class="col s12 l12">
								<li class="divider line"></li>
							</div>
						</div>


						<!-- earnings  -->
						<div class="row no-margin-top">
							<div class="col s12 l4">
								<label for="ecommerce-product-name"
									class="setting-title blue-text txt-weight"> Est.
									Earnings Per Click </label>
							</div>
							<div class="col s12 l5">
								<div class="input-field">
									<input id="est" type="text" class="validate" name="earnings"
										value="<c:out value="${account.earnings}"/>" /> <label
										class="txt-weight" for="est">Enter the Amount</label>
								</div>
							</div>

							<!-- earnings END -->

							<div class="col s12 l3 center">
								<div class="btn-group">
									<ul class="note">
										<a
											class="success epc waves-effect  green-text waves-light tooltipped"
											data-position="top" data-delay="50"
											data-tooltip="Add Est. Earnings Per Click"><i
											class="fa fa-dollar msize"></i></a>
									</ul>
								</div>
							</div>
						</div>
						<!-- /Domain Name -->
						<hr class="line">
						<!-- Domain Name -->
						<div class="row no-margin-top">
							<div class="col s12 l3">
								<label for="ecommerce-product-name"
									class="setting-title blue-text txt-weight"> Earnings
									Target </label>
							</div>
							<div class="col s12 l3">
								<div class="input-field">
									<input name="weektarget" id="weektarget" type="number"
										class="validate"
										value="<c:out value="${account.weektarget}"/>"> <label
										class="blue-text txt-weight" for="week">Weekly Target</label>
								</div>
							</div>

							<!-- Monthly Targer -->
							<div class="col s12 l3">
								<div class="input-field">
									<input id="monthtarget" name="monthtarget" type="number"
										class="validate"
										value="<c:out value="${account.monthtarget}"/>" /> <label
										class="blue-text txt-weight" for="month">Monthly
										Target</label>
								</div>
							</div>
							<!-- End of MOnthly Target -->

							<!-- /Domain Name -->
						</div>
					</div>
				</div>
				<input type="submit" value="Setup">
		</sf:form>

	</section>
	<!-- /Main Content -->



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

	<!-- Clock -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/jquery-clockpicker/jquery-clockpicker.min.js"></script>

	<!-- Materialize -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/materialize/js/materialize.min.js"></script>

	<!-- Main -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/pmg/js/pmg.min.js"></script>

	<!--Alert-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/alert/sweetalert.min.js"></script>

	<!--On top-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/core/elevator/elevator.js"></script>


	<!--News-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/assets/news/jquery.newsTicker.js"></script>


</body>

</html>