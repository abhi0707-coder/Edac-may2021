<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
<body style="background-color: #3fefd6">
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Please Fill Your Note Details</h1>
		<br>

		<!-- This Is Add Form -->

		<form action="SaveNoteServlet" method="post" class="needs-validation" novalidate>
			<div class="form-group">
				<label for="exampleInputEmail1">Note Title</label> 
				<input 
				name="title"
				required 
				type="text" 
				class="form-control" id="title"
				aria-describedby="emailHelp" 
				placeholder="Enter here" />
				<div class="invalid-feedback">
       Please enter the Note Title!!!
      </div>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea 
				name="content"
				required 
				id="content" 
				placeholder="Enter your content here"
				class="form-control" 
				style="height: 280px;"></textarea>
				<div class="invalid-feedback">
       Please enter the Note Content!!!
      </div>
			</div>
            <div class="container text-center">
			<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
</body>
</html>