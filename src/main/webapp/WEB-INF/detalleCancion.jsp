<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Detalle de Canción</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body class="container mt-4">
		<div class="card">
			<div class="card-body">
				<h3 class="card-title mb-3">Canción: ${cancion.titulo}</h3>
				<h4 class="card-subtitle mb-2 text-muted">Artista: ${cancion.artista}</h4>
				<p class="card-text">Albúm: ${cancion.album}</p>
				<p class="card-text">Género: ${cancion.genero}</p>
				<p class="card-text">Idioma: ${cancion.idioma}</p>
				
				<div class="mt-4">
					<a href="/canciones" class="btn btn-secondary">Volver a lista de canciones</a>
					<form method="GET" action="/canciones/formulario/editar/${cancion.id}" class="d-inline">
						<button class="btn btn-primary">Editar canción</button>
					</form>
					<form method="POST" action="/canciones/eliminar/${cancion.id}" class="d-inline">
						<input type="hidden" name="_method" value="DELETE">
						<button class="btn btn-danger">Eliminar canción</button>
					</form>
				</div>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>