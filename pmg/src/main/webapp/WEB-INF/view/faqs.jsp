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
</head>

<body>
	<!-- START Main wrapper-->
	<section class="wrapper">
		<jsp:include page="headersandsidebars.jsp">
			<jsp:param name="user" value="${user}"></jsp:param>
		</jsp:include>
		<!-- START Main section-->
		<section>
			<!-- START Page content-->
			<section class="main-content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>Frequently Asked Questions</b>
					</div>
					<div class="panel-body">
						<div id="accordion" class="panel-group">
							<!-- START panel-->
							<c:forEach var="faq" items="${faqList}">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne" class="collapsed"><c:out
													value="${faq.question}" /></a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse"
										style="height: 0px;">
										<div class="panel-body">
											<c:out value="${faq.answer}" />
										</div>
									</div>
								</div>
							</c:forEach>

						</div>
						<!-- END panel-->

					</div>
				</div>




			</section>
			<!-- END Page content-->
		</section>
		<!-- END Main section-->
	</section>
	<!-- END Main wrapper-->
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
	<!-- END Page Custom Script-->
	<!-- App Main-->
	<script src="${pageContext.request.contextPath}/static/app/js/app.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/app/js/userajax.js"></script>
	<script type="type/javascript">
		getTopUsers();
		getNoOfNotification();
		getLinkStatus();
</script>
	<!-- END Scripts-->
</body>

</html>