<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<li class="nav-item"><a href="Products.jsp" class="nav-link"><i class="fas fa-search"></i> View Product </a></li>
	<li class="nav-item"><a href="Home.jsp" class="nav-link"><i class="fas fa-user"></i> User </a></li>
	</ul>
	<ul class="navbar-nav  mb-2 mb-lg-0">
    <li class="nav-item"><i class="fas fa-user-shield "></i> &nbsp; Hello,Admin&nbsp;&nbsp;</li>
	</ul>
</div>
</nav>
<br>
<br>
<div class="container my-3">
      <div class="row">
        <div class="  col-md-6 m-auto border border-primary ">    
    <form action="AddProduct" method="post" enctype="multipart/form-data">
    <div class="mb-3">
    <p class="text-center font-weight-bold font-size-3 text-warning">Product Details:</p>
  </div>
  <div class="form-group mb-3">
    <label>Product Name:</label>
    <input type="text" name="Pname" class="form-control" placeholder="Enter product name" required>
  </div>
  <div class="form-group mb-3">
    <label>Product Price:</label>
    <input type="number" name="Pprice" class="form-control" placeholder="Enter product price" required>
  </div>
   <div class="form-group mb-3">
    <label>Add Product Image:</label>
    <input type="file" name="Pimage" class="form-control" required>
  </div>
  <br>
   <button name="submit" class="bg-danger font-weight-bold my-3 form-control text-white">Upload</button>
    </form>
        </div>
        
    </div>
</div>

</body>
</html>