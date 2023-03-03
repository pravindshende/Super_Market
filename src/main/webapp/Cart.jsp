<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.ConnectionDB"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script></head>
</head>
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


	<div class="container">
        <div class="row">
            <div class="col-lg-12 text-center bg=light mb-5 rounded">
                <h1 class="text-warning">My Cart</h1>
            </div>
        </div>
    </div>
 
 <div class="container-fluid">
    <div class="row justify-content-around">
        <div class="col-sm-12 col-md-6 col-lg-9" style="overflow-x: auto;">
            <table class="table table-bordered text-center">
                <thead class="bg-danger text-white">
                    <th>Serial No.</th>
                    <th>Product Image</th>
                    <th>Product Name</th>
                    <th>Product Price</th>
                    <th>Product Quantity</th>
                    <th>Total Price</th>
                </thead>
                <tbody class="text-center">
                <form action='Pay' method='POST'>
    			<%
    			if(session.getAttribute("name")!=null){
    			ConnectionDB cd=new ConnectionDB();
    			Statement stmt=cd.getDBConn().createStatement();
    			String name=session.getAttribute("name").toString();  
    			ResultSet rs=stmt.executeQuery("select * from cart where name='"+name+"'");
    			int i=1;
    			while(rs.next()){%>
    			 <input type="hidden" name="Uname" value="<%=rs.getString(2)%>">
    			<tr>
    			<td><%= i %></td>
    			<td><img src="Images/<%=rs.getString(6)%>" height='50px' width='80px'></td>
        		<td><%=rs.getString(3)%></td>
        		<td><i class='fas fa-rupee-sign'></i><%=rs.getInt(4)%></td>
        		<td><%=rs.getInt(5)%></td>
        		<td><i class='fas fa-rupee-sign'></i><%=rs.getInt(4)*rs.getInt(5)%></td>
        		</tr>
        		<%i++;} }%>
     			</tbody>
            </table>
 		</div>
 		<div class="col-lg-3 text-center">
        <h3>TOTAL</h3>
        <%
    	if(session.getAttribute("name")!=null){%>
    			<h1 class="bg-danger text-white"><i class='fas fa-rupee-sign'></i> 
    			<%
    			ConnectionDB cd=new ConnectionDB();
    			Statement stmt=cd.getDBConn().createStatement();
    			String name=session.getAttribute("name").toString();  
    			ResultSet rs=stmt.executeQuery("select * from cart where name='"+name+"'");
    			int total=0;
    			while(rs.next()){
    				total=total+rs.getInt(4)*rs.getInt(5);
    			}
    			%><%= total%></h1>
    			<input type="submit" class="btn btn-warning text-white" value="Buy Now">
   		<%} %>
   		</form>
        </div>
 		
 	</div>
 </div>
</body>
</html>