<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	Access denied to this Page
	<br> Contact Admin to grant access.
	<button onclick="goBack()">Go Back</button>

	<p>Notice that clicking on the Back button here will not result in
		any action, because there is no previous URL in the history list.</p>

	<script>
	alert('Hello');
    $(window).load(function() {
        document.location='/login';
    });
</script>

</body>
</html>