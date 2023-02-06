<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="fecha.jsp"></jsp:include>
	<h2>Usuarios Registrados</h2>
	<br>
	<div>
		<label>Usuario confirmado :<%=request.getParameter("name") %></label>
	</div>
	<br>
	<div>
		<label> Apellidos Usuario confirmado :<%=request.getParameter("lastName") %></label>
	</div>
	<br>
	<div>
		<label>Dni Usuario confirmado :<%=request.getParameter("Id") %></label>
	</div>
</body>
</html>