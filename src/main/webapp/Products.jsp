<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.ConnectionDB"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script></head>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light text-dark" style="background-color:#fff3cd">
	 <div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav me-auto mb-2 mb-lg-0">
	<li class="nav-item"><a href="AdminPanel.jsp" class="nav-link"><i class="fas fa-briefcase"></i> Add Product </a></li>
	<li class="nav-item"><a href="Products.jsp" class="nav-link"><i class="fa fa-search"></i> View Product </a></li>
	<li class="nav-item"><a href="Home.jsp" class="nav-link"><i class="fas fa-user"></i> User </a></li>
	</ul>
	<ul class="navbar-nav  mb-2 mb-lg-0">
    <li class="nav-item"><i class="fas fa-user-shield "></i> &nbsp; Hello,Admin&nbsp;&nbsp;</li>
	</ul>
</div>
</nav><br><br>
<div class="container-fluid">
    <div class="row justify-content-around">
        <div class="col-sm-12 col-md-6 col-lg-9" style="overflow-x: auto;">
            <table class="table table-bordered text-center">
                <thead class="bg-danger text-white">
                    <th>Serial No.</th>
                    <th>Product Image</th>
                    <th>Product Name</th>
                    <th>Product Price</th>
                    <th>Delete</th>
                </thead>
                <tbody class="text-center">
    			<%
    			ConnectionDB cd=new ConnectionDB();
    			Statement stmt=cd.getDBConn().createStatement();
    			ResultSet rs=stmt.executeQuery("select * from products");
    			int i=1;
    			while(rs.next()){%>
    			<tr>
    			<td><%= i %></td>
    			<td><img src="Images/<%=rs.getString(4)%>" height='50px' width='80px'></td>
        		<td><%=rs.getString(2)%></td>
        		<td><i class='fas fa-rupee-sign'></i><%=rs.getInt(3)%></td>
        		<td><a href='Delete?id=<%=rs.getString(1)%>' class='btn btn-danger'>Delete</a></td>
        		</tr>
        		<%i++; }%>
     			</tbody>
            </table>
 		</div>
 	</div>
 </div>

</body>
</html>