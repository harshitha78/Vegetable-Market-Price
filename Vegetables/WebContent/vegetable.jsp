<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("select * from vegetableinfo");
		    int i=ps.executeUpdate();
		    if(i>0){
		    	response.sendRedirect("veg.html");
		    }
		    else{
		    	response.sendRedirect("register.html");
		    }
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		
	}
	%>
</body>
</html>