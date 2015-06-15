<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<sf:form id="createfaq"
		action="${pageContext.request.contextPath}/admin/createfaq"
		method="post" commandName="faq">
		<sf:textarea path="question" rows="2" cols="30" />
		<sf:textarea path="answer" rows="5" cols="30" />
		<sf:checkbox path="active" checked="" />
		<input id="media" type="file" onchange="setPicName();readURL(this);">
		<img src="" id="dp" width="250" height="350">
		<sf:input path="mediaPath" id="mediaPath" type="hidden" />
		<input type="submit">
	</sf:form>
	<script
		src="${pageContext.request.contextPath}/static/vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#dp').attr('src', e.target.result).width(150)
							.height(200);
				};

				reader.readAsDataURL(input.files[0]);
			}
		}
		function setPicName() {
			$("input[name='media']").each(
					function() {
						var fileName = $(this).val().split('/').pop().split(
								'\\').pop();
						alert(fileName);
						$("#mediaPath").val(fileName);
					});
		}
		function uploadPic() {
			var fd = new FormData();
			if (jQuery("#media").get(0) != null) {
				fd.append('media', jQuery("#media").get(0).files[0]);
			}
			$.ajax({
				url : 'savemedia',
				data : fd,
				processData : false,
				contentType : false,
				type : 'POST',
				success : function(data) {
					alert(data);
				}
			});
		}
	</script>
</body>

</html>