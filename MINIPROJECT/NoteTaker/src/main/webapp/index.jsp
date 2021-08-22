<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>

<title>Note Deck : Home Page</title>
<%@include file="all_js_css.jsp"%>

<body style="background-color: #3fefd6">
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<div class="card py-5">
			<img alt="" class="img-fluid mx-auto" style="max-width: 400px;"
				src="img/agenda.png">
			<h1 class="text-primary text-uppercase text-center mt-4">Start
				Surfing Your Notes</h1>
			<div class="container text-center">
				<button class="btn btn-outline-danger  text-center">
					<a style="text-decoration: none" href="add_notes.jsp">Start Here</a>
				</button>
			</div>
		</div>

	</div>

</body>
</html>