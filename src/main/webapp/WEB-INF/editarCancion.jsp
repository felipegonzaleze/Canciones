<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Editar canción</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body class="container mt-4">
		<h1 class="mb-4">Editar canción</h1>
		<div class="card">
			<div class="card-body">
				<form:form method="POST" action="/canciones/procesa/editar/${cancion.id}" modelAttribute="cancion">
					<input type="hidden" name="_method" value="PUT">
					<div class="mb-3">
						<form:label path="titulo" class="form-label">Título:</form:label>
						<form:input path="titulo" class="form-control"/>
						<form:errors path="titulo" class="text-danger"/>
					</div>
					<div class="mb-3">
						<form:label path="artista" class="form-label">Artista:</form:label>
						<form:input path="artista" class="form-control"/>
						<form:errors path="artista" class="text-danger"/>
					</div>
					<div class="mb-3">
						<form:label path="album" class="form-label">Albúm:</form:label>
						<form:input path="album" class="form-control"/>
						<form:errors path="album" class="text-danger"/>
					</div>
					<div class="mb-3">
						<form:label path="genero" class="form-label">Género:</form:label>
						<form:input path="genero" class="form-control"/>
						<form:errors path="genero" class="text-danger"/>
					</div>
					<div class="mb-3">
						<form:label path="idioma" class="form-label">Idioma:</form:label>
						<form:input path="idioma" class="form-control"/>
						<form:errors path="idioma" class="text-danger"/>
					</div>
					<button class="btn btn-primary">Actualizar</button>
				</form:form>
			</div>
		</div>
		<a href="/canciones" class="btn btn-secondary mt-3">Volver a lista de canciones</a>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>