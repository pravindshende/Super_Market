<%@page import="com.ConnectionDB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
  .slide{
    display: flex;
    align-items: center;
    justify-content: space-around;
    width: 100%;
}
</style>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script></head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light text-dark" style="background-color:#fff3cd">
	 <div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav me-auto mb-2 mb-lg-0">
	<li class="nav-item"><a href="Home.jsp" class="nav-link"><i class="fas fa-home"></i> Home </a></li>
	<li class="nav-item"><a href="Cart.jsp" class="nav-link"><i class="fas fa-shopping-cart"></i> Cart </a></li>
	<li class="nav-item"><a href="AdminPanel.jsp" class="nav-link"><i class="fas fa-user"></i> Admin </a></li>
	</ul>
	
	<i class="fas fa-user-shield "></i> &nbsp; Hello,
    <ul class="navbar-nav  mb-2 mb-lg-0">
    <li class="nav-item">
    <% 
    if(session.getAttribute("name")!=null)
	{
    	try{
    		String uname=session.getAttribute("name").toString();  
			out.print(uname);
			}
    	catch(Exception e)
    	{e.printStackTrace();
    	} 
    } 
	%>
 	</li>
    </ul>
	<ul class="navbar-nav  mb-2 mb-lg-0">
	 <% 
    if(session.getAttribute("name")!=null){%>
    	<li class="nav-item"><a href="Logout" class="nav-link active"><i class='fas fa-sign-in-alt'></i> Logout &nbsp;&nbsp;</a></li>
    <%}else{%>
    	<li class="nav-item"><a href="Login.jsp" class="nav-link active"><i class='fas fa-sign-in-alt'></i> Login &nbsp;&nbsp;</a></li>
    <%}
	%>
</ul>
</div>
</nav>
<br>
<div class="slide">
    <img src="Images/Slide2.jpg" style="border: 3px outset red; height: 300px;" width=95%>
</div>
<br>
 <div class="container-fluid">        
    <div class="col-md-12">
    <div class="row">
	<%
	ConnectionDB cd=new ConnectionDB();
	Statement stmt=cd.getDBConn().createStatement();
	ResultSet rs=stmt.executeQuery("select * from products");
	while(rs.next()){%>
	<div class="col-md-6 col-lg-3 col-sm-6  mb-4 margin-auto">
  	<form action="Add_Cart" method='post'>
  	<div class="card m-auto" style="width: 18rem;">
    <img src="Images/<%=rs.getString(4)%>" class="card-img-top m-auto" style="width: 220px; height: 220px;" >
 	<div class="card-body text-center">
    <h5 class="card-title text-danger font-size-4 font-weight-bold"><%=rs.getString(2)%></h5>
    <p class="card-text text-warning font-size-4 font-weight-bold"><i class="fas fa-rupee-sign"></i> <%=rs.getInt(3)%>.00</p>
    <input type="hidden" name="PImage" value="<%=rs.getString(4)%>">
    <input type="hidden" name="PPrice" value="<%=rs.getInt(3)%>">
    <input type="number" name="PQuantity" value='min="1" max="10"  placeholder="Quantity..." style='width: 100px;'><br><br>
   	<input type="submit" value="Add to cart" class="btn-warning font-weight-bold my-2 form-control text-white">
   </form>
   </div>
</div>

</div>
	<%}%>
	</div></div></div>
</body>
</html>