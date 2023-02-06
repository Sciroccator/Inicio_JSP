<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center">
	ejemplo declaraciones
	
</h1>
<%!
	private int result ;
	private int metodoSuma(int a, int b){
		int result = a+b;
		return result;
	}
	private int metodoResta(int a, int b){
		int result = a-b;
		return result;
	}
	private int metodoMultiplica(int a, int b){
		int result = a*b;
		return result;
	}
	private int metodoDivide(int a, int b){
		int result = a/b;
		return result;
	}
%>
<h1>
 2 + 4 es igual a <%= metodoSuma(2,4) %>
<br>
4 / 2  es igual a <%= metodoDivide(4,2) %>
<br>
2 * 4 es igual a <%= metodoMultiplica(2,4) %>
<br>
 
</h1>
<%  %>
</body>
</html>