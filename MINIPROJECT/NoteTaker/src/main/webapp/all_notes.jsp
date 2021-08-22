<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta http-equiv="refresh" content="5"> -->
<meta charset="ISO-8859-1">
<title>All notes : NoteDeck</title>
<%@include file="all_js_css.jsp"%>
</head>
<body style="background-color: #3fefd6">

<%

response.setHeader("Cache-Control", "no-cache, no-store, must-validate");
response.setHeader("Pragma", "no-cache");

/* String title = null;

Cookie[] cookies = request.getCookies();
if(cookies!=null){
	for(Cookie c:cookies){
		if(c.getName().equals("title")){
			title= c.getValue();
			
			
		}
		
	}
}
if(title==null){
	response.sendRedirect("add_notes.jsp");
	
	
}else{
	out.print("<h4>"+title+"</h4>");
	out.print("<h3><a href='index.jsp' class="btn btn-danger">Logout</a></h3>");
}
 */

%>


	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All notes :</h1>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card mt-3">
					<img class="card-img-top m-4 mx-auto" style="max-width:100px;" src="img/agenda.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text">
						<%=note.getContent() %>
						</p>
						<p><b class ="bg-warning"><%=note.getAddedDate() %></b></p>
						<div class ="container text-center mt-3">
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>
				<%
				}
				s.close();
				%>

</div>

		</div>

	</div>
</body>
</html>