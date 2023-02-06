
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String nombre = request.getParameter("name");
String apellidos =request.getParameter("lastName");
String usuario = request.getParameter("User");
String password = request.getParameter("Password");
String pais = request.getParameter("Country");
String tecno = request.getParameter("tecnologies");
String url = "jdbc:oracle:thin:@//localhost:1521/XEPDB1";

String user ="HR";
String pass ="hr";
String query = "INSERT INTO USUARIOS(NOMBRE,APELLIDO,USUARIO,PASS,PAIS,TECNOLOGIA)VALUES('"+nombre+"','"+apellidos+"','"+usuario+"','"+password+"','"+pais+"','"+tecno+"')";

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conection = DriverManager.getConnection(url,user,pass);
	Statement st =conection.createStatement();
	st.executeUpdate(query);
	System.out.print(query);
	out.print("Usuario insertado correctamente ");
	
}catch(SQLException e){
	e.printStackTrace();
	out.print("Problemas en la inseción del usuario");
}


%>

</body>
</html>