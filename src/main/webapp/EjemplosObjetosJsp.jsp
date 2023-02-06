<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<h2> Ejemplos objetos JSP</h2>
		<br>
		
		<h1> Petición de datos al navegador<%= request.getHeader("User-Agent")  %> </h1>
		<br>
		<br>
		<h1> Peticion de idioma utilizado <%=request.getLocale() %>
		 </h1>
	</body>
</html>