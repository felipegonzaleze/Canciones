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
	</head>
	<body>
		<h1>Lista de Canciones</h1>
		<c:forEach var="cancion" items="${listaCanciones}">
			<p>${cancion.titulo}</p>
			<p>${cancion.artista}</p>
			<p><a href="/canciones/detalle/${cancion.id}">Detalle</a></p>
			<hr>
		</c:forEach>
		<p><a href="/canciones/formulario/agregar">Agregar canción</a></p>
	</body>
</html>