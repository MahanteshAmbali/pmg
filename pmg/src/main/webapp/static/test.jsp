<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>prop demo</title>
<style>
p {
	margin: 20px 0 0;
}

b {
	color: blue;
}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		alert('Hello');
		//$("#duration option[id='2']").attr("selected", "selected");
		//$('#mySelectList option:eq(')').prop('selected', true)
		$('#mySelectList :nth(4)').prop('selected', true );
	});
</script>
</head>
<body>


	<select id="mySelectList">
		<option id="one" description="Blue">Blue</option>
		<option id="2" description="Black">Black</option>
		<option id="three" description="Green">Green</option>
	</select>


</body>
</html>