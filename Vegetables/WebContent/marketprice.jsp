<!DOCTYPE html>
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
  <li><a href="Adminlogin.html">Admin Login</a></li>
   <li><a href="marketprice.jsp">Market Price</a></li>
</ul>
<div class="container">
  <h2>Vegetables</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
       
       <br> <br> <br>
       
       <center>
       <form action="Marckaction.jsp">
       Choose Date<input type="date"  name="date"><br><br>
       <input type="submit" value="GetPrice"><br><br>
       </form>
       </center>
       
       
       
      </div>


</body>
</html>
