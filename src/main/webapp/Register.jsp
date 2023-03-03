<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script></head>

</head>
<body>
<br>
<div class="container">
 <div class="row">
     <div class="col-md-6  mt-3 bg-white m-auto border border-info">

            <p class="text-warning text-center fs-3 font-weight-bold my-3">User Register</p>
            <form action="Register" method="post">
           <div class="mb-3">
                <label for="">Username:</label>
                <input type="text" name="name" placeholder="Enter Username" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="">User Email Id:</label>
                <input type="email" name="email" placeholder="Enter Your Email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="">Mobile:</label>
                <input type="number" name="mobile" placeholder="Enter Your Number" class="form-control" maxlength="10" required>
            </div>
            <div class="mb-3">
                <label for="">Password:</label>
                <input type="password" name="pass" placeholder="Enter Your Password" class="form-control" required>
            </div>
            <div class="mb-3">
            <button name="submit" class="w-100 btn btn-danger fs-4 text-white">Register</button>
            </div>
            </form>
             <div class="mb-3" style="display: flex; justify-content: right;">
            <span class="text-decoration-none">Already Registered?  <a href="Login.jsp" style="text-decoration:none;">Click Here</a></span>
            </div>
    </div>
    </div>
</div>
</body>
</html>