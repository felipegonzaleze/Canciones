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
		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<thead class="table-dark">
					<tr>
						<th>Título</th>
						<th>Artista</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cancion" items="${listaCanciones}">
						<tr>
							<td>${cancion.titulo}</td>
							<td>${cancion.artista}</td>
							<td>
								<a href="/canciones/detalle/${cancion.id}" class="btn btn-primary btn-sm">Detalle</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<a href="/canciones/formulario/agregar" class="btn btn-success">Agregar canción</a>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>