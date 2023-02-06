<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%String originCity = "Madrid";
	String destCity = "Nueva York";
	
	Cookie[] cookiesList = request.getCookies();
	if(null!= cookiesList && cookiesList.length >0){
		for(Cookie cookie :cookiesList){
			if("oriCityCookie".toUpperCase().equals(cookie.getName().toUpperCase())){
				originCity = cookie.getValue();			
			}
			if("destCityCookie".toUpperCase().equals(cookie.getName().toUpperCase())){
				destCity= cookie.getValue();
			}
			
		}
		
	}
%>
<h2 style="text-align: center;"> Agencia de Viajes</h2>
</br></br></br></br>
<h3>Vuelos a <%=destCity %> desde <%=originCity %></h3>
<p> texto de prueba </p>
<p> texto de prueba </p>
<p> texto de prueba </p>
<p> texto de prueba </p>

<h3>Hoteles en  <%=destCity %></h3>
<p> texto de prueba </p>
<p> texto de prueba </p>
<p> texto de prueba </p>

<h3>Restaurantes en <%=destCity %></h3>
<p> texto de prueba </p>
<p> texto de prueba </p>
<p> texto de prueba </p>



</body>
</html>