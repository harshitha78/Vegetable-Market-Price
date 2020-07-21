<%@page import="java.sql.*"%>
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
		String dt =request.getParameter("date");
		String a=request.getParameter("a");
		String b=request.getParameter("b");
		String c=request.getParameter("c");
		String d=request.getParameter("d");
		String e=request.getParameter("e");
		String f=request.getParameter("f");
		String g=request.getParameter("g");
		String h=request.getParameter("h");
		String i=request.getParameter("i");
		String j=request.getParameter("j");
		String k=request.getParameter("k");
		String l=request.getParameter("l");
		String m=request.getParameter("m");
		String n=request.getParameter("n");
		String o=request.getParameter("o");
		String p=request.getParameter("p");
		String q=request.getParameter("q");
		String r=request.getParameter("r");
		String s=request.getParameter("s");
	
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vegetables","root","");
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into vegetables values('"+dt+"','"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+o+"','"+p+"','"+q+"','"+r+"','"+s+"')");
		    int ij=ps.executeUpdate();
		    if(ij>0){
		    	response.sendRedirect("adminhome.jsp?msg=successfully added");
		    }
		    else{
		    	response.sendRedirect("adminhome.jsp?msg=Not successfully added");
		    }
		} catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}
		%>
	
</body>
</html>