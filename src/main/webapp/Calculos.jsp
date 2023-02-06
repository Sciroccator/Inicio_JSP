<%@page import="Negocio.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! Operaciones op = new Operaciones(); %>
<h1>
La suma de 5 y 7 es <%=op.metodoSuma(5, 7) %>
</h1>
<br>
<h1>
la resta de 8 y 3 es <%=Operaciones.metodoResta(8, 3) %>
</h1>
<br>
<h1>
la multiplicación de 8 x 5 es <%= Operaciones.metodoMultiplica(8, 5) %>
</h1>
</body>
</html>