<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String destCity = request.getParameter("ciudadDestino");
	String originCity = request.getParameter("ciudadOrigen");
	
	Cookie oriCityCookie = new Cookie("oriCityCookie",originCity);
	oriCityCookie.setMaxAge(365*24*60*60);
	Cookie destCityCookie = new Cookie("destCityCookie",destCity);
	destCityCookie.setMaxAge(365*24*60*60);
	response.addCookie(oriCityCookie);
	response.addCookie(destCityCookie);
	
	
%>
<h1>Gracias porr enviar sus destinos de preferencia </h1>
<a href="AgenciaViajes.jsp"> Ir a la Agencia de Viajes </a>

	
</body>
</html>