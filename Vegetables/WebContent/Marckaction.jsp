<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
<head>
<style>
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 24px;
}
div.ab{
text-align:center;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color:#40ff00;
}

li {
  float: right;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 24px 36px;
  text-decoration: none;
}

li a:hover {
  background-color: #333	;
}
</style>
 </head>
<body>
<div class = "ab"><h1>VEGETABLE MARKET</h1></div><ul>
	<div class = "gallery"></div>
	
	    <img src="veg1.png" alt="Cinque Terre" width="120" height="80">
  <li><a class="active" href="#home">About Us</a></li>
  <li><a href="#news">Admin Login</a></li>
   <li><a href="marketprice.jsp">Market Price</a></li>
</ul>
       
      <center>
      <%
      
      String date=request.getParameter("date");
    		
    		Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vegetables","root","");
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("Select * from vegetables where date='"+date+"'");
		 ResultSet rs=ps.executeQuery();
		 
		 if(rs.next()){
			 
			 %>
			 
<img src="Carrot.jpg">Carrot:<%=rs.getString(2) %><br><br>
<img src="Potato.jpg">Potato:<%=rs.getString(3) %><br><br>
<img src="Tomato.jpg">Tomato:<%=rs.getString(4) %><br><br>
<img src="Onion.jpg">Onion:<%=rs.getString(5) %><br><br>
<img src="beetroot.jpg">Beetroot:<%=rs.getString(6) %><br><br>
<img src="brinjal.jpg">Brinjal:<%=rs.getString(7) %><br><br>
<img src="Cucumber.jpg">Cucumber:<%=rs.getString(8) %><br><br>
<img src="Cauliflower.jpg">Cauliflower:<%=rs.getString(9) %><br><br>
<img src="coriander.jpg">Coriander:<%=rs.getString(10) %><br><br>
<img src="drum.jpg">Drumstick:<%=rs.getString(11) %><br><br>
<img src="cabbage.jpg">Cabbage:<%=rs.getString(12) %><br><br>
<img src="chilli.jpg">Chilli:<%=rs.getString(13) %><br><br>
<img src="bitter.jpg">Bitter Guard:<%=rs.getString(14) %><br><br>
<img src="Pumpkin.jpg">Pumpkin:<%=rs.getString(15) %><br><br>
<img src="bottle.jpg">Bottle Gaurd:<%=rs.getString(16) %><br><br>
<img src="snake.jpg">Snake Gaurd:<%=rs.getString(17) %><br><br>
<img src="spinach.jpg">Spinach:<%=rs.getString(18) %><br><br>
<img src="ginger.jpg">Ginger:<%=rs.getString(19) %><br><br>
<img src="Mushroom.jpg">Mushroom:<%=rs.getString(20) %><br><br>
			 
			 </center>
			 <%
			
		 }
		
      %>
       
       
       
      


</body>
</html>
