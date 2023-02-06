<%@page import="java.util.*"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h1 style="text-align:center;">Mercado</h1>
	<form action="Mercado.jsp" style="background-color: white;">
		<table style="background-color: orange; margin-left:7% ">
			<tr>
				<td width="13"><label for="nombre">Agua</label></td>
				<td width="87"><input type="checkbox" name ="articulos" value = "agua"></td>
			</tr>
			<tr>
				<td width="13"><label for="nombre">Pan</label></td>
				<td width="87"><input type="checkbox" name ="articulos" value = "pan"></td>
			</tr>
			<tr>
				<td width="13"><label for="nombre">Leche</label></td>
				<td width="87"><input type="checkbox" name ="articulos" value = "leche"></td>
			</tr>
			<tr>
				<td width="13"><label for="nombre">Manzana</label></td>
				<td width="87"><input type="checkbox" name ="articulos" value = "manzanas"></td>
			</tr>
			<tr>
				<td width="13"><label for="nombre">Carne</label></td>
				<td width="87"><input type="checkbox" name ="articulos" value = "carne"></td>
			</tr>
			<tr>
				<td width="13"><label for="nombre">Pescado</label></td>
				<td width="87"><input type="checkbox" name ="articulos" value = "pescado"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="botonEnviar" id ="sendButton" value="Enviar">
				</td>			
			</tr>
			
		</table>
	</form>
	<h2>Carro de la compra </h2>
	
	<% 
		String[]values = request.getParameterValues("articulos");
		 List<String> carroList = (List<String>)session.getAttribute("carro");
		if ( null== carroList){
			carroList = new ArrayList<String>();
			session.setAttribute("carro", carroList);
		}
		if(null!=values){
			for(String value :values){				
				carroList.add(value);
			}
		}
		if(null!=carroList&& !carroList.isEmpty()){
			for(String product :carroList){
				out.print("<input type='text' name =\"productos\" value =\""+product+"\"><br>" );		
			}
			
		}
	%>
</body>
</html>