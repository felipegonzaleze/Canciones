<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de Canciones</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body class="container mt-4">
		<h1 class="mb-4">Lista de Canciones</h1>
		<div class="row">
			<c:forEach var="cancion" items="${listaCanciones}">
				<div class="col-md-4 mb-4">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">${cancion.titulo}</h5>
							<p class="card-text">${cancion.artista}</p>
							<a href="/canciones/detalle/${cancion.id}" class="btn btn-primary">Detalle</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<a href="/canciones/formulario/agregar" class="btn btn-success">Agregar canción</a>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>