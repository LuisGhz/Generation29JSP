<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.exercise29jsp.model.Users" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP</title>
	<link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>Practica 2 JSPs</h2>
	<%! byte i = 12; %>
	<p>
		<%-- Este es un comentario no visible en la pagina ni en el código fuente --%>
		El valor de i es: <%= i %>
	</p>
	
	<hr>
	<form action="TableResult.jsp" method="post" class="form-group">
		<% 
		Users myUser = new Users(); 
		myUser.setId(request.getParameter("txtId"));
		myUser.setName(request.getParameter("txtName"));
		%>
		<p>
			<label for="txtTable">Tabla:</label>
			<input type="text" id="txtTable" name="txtTable" class="form-control" value="<%= myUser.getId() %>" >
		</p>
		<p>
			<label for="txtRange">Rango:</label>
			<input type="text" id="txtRange" name="txtRange" class="form-control" value="<%= myUser.getName() %>" >
		</p>
		<p>
			<input type="submit" value="Mostrar tabla" class="btn btn-success">
		</p>
	</form>
	<hr>
	<form action="index.jsp" method="post">
		<p>
			<label for="txtId">Id</label>
			<input type="text" id="txtId" name="txtId" class="form-control" value="0">
		</p>
		<p>
			<label for="txtName">Name</label>
			<input type="text" id="txtName" name="txtName" class="form-control" value="">
		</p>
		<p>
			<input type="submit" value="Guardar Datos" class="btn btn-success">
		</p>
	</form>
</body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>
</html>