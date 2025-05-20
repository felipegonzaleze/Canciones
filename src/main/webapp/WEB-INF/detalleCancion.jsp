<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>Canción: ${cancion.titulo}</h3>
		<h3>Artista: ${cancion.artista}</h3>
		<h3>Albúm: ${cancion.album}</h3>
		<h3>Género: ${cancion.genero}</h3>
		<h3>Idioma: ${cancion.idioma}</h3>
		<p><a href="/canciones">Volver a lista de canciones</a></p>
		<form method="GET" action="/canciones/formulario/editar/${cancion.id}">
			<button>Editar canción</button>
		</form>
		<form method="POST" action="/canciones/eliminar/${cancion.id}">
			<input type="hidden" name="_method" value="DELETE">
			<button>Eliminar canción</button>
		</form>
	</body>
</html>