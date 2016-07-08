<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ProMaGizmo | PMG</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/assets/buynow/css/checkout-sidebar.css" />

</head>
<body class="color-1">
	<div class="container">

		<div class="grid">
			<div class="grid__item color-3">
				<a class="link link--nukun" href="login"><span>P</span>ro<span>M</span>a<span>G</span>izmo</a>
			</div>
		</div>
		<section class="content">
			<article class="content__item">
				<h1 class="title title--full">Welcome Aboard Player!!</h1>
				<div class="meta meta--full"></div>


				<p>
					An email verification link has been sent to your email id "
					<c:out value="${email}" />
					". Kindly click on the link and verify your account.
				</p>

				<hr>
				<article class="content__item color-2 mid">
					<p>
						<font color="turquoise">Money won't create success, the
							freedom to make it will</font>
					</p>
				</article>



			</article>
		</section>

	</div>
	<!-- /container -->
	<footer>
		&copy; 2016 <strong>ProMaGizmo | PMG</strong>. All rights reserved.
	</footer>

</body>
</html>





