<%@page import="java.nio.file.ReadOnlyFileSystemException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>    	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String usuario = request.getParameter("User");
String password = request.getParameter("Password");

String url = "jdbc:oracle:thin:@//localhost:1521/XEPDB1";

String user ="HR";
String pass ="hr";
String query = "SELECT * FROM usuarios WHERE usuario=? AND pass =?";



try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conection = DriverManager.getConnection(url,user,pass);
	//Statement st =conection.createStatement();
	PreparedStatement Pstatement = conection.prepareStatement(query);
	Pstatement.setString(1, usuario);
	Pstatement.setString(2, password);
	System.out.print(query);
	ResultSet result = Pstatement.executeQuery();
	
	
	if(null!= result){
		while(result.next()){
			String loginUser = result.getString("USUARIO");
			out.print("el Usuario "+loginUser+" esta autorizado");	
		}
	}else{
		out.print("El usuario no existe");		
	}
	
	
	
}catch(SQLException e){
	e.printStackTrace();
	out.print("Problemas en el acceso al login , vuelva a intentarlo ");
}

%>


</body>
</html>