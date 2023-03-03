<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script></head>

</head>
<body>
<br>
<div class="container">
 <div class="row">
     <div class="col-md-6  mt-3 bg-white m-auto border border-info">

            <p class="text-warning text-center fs-3 font-weight-bold my-3">User Login</p>
            <form action="Login" method="post">
            <div class="mb-3">
                <label>UserName:</label>
                <input type="text" name="name" placeholder="Enter UserName" class="form-control" required>
            </div>
            <div class="mb-3">
                <label>Password:</label>
                <input type="password" name="password" placeholder="Enter Your password" class="form-control" required>
            </div>
            <div class="mb-3">
            <button name="submit" class="w-100 btn btn-danger fs-4 text-white">Login</button>
            </div>
            </form>
             <div class="mb-3" style="display: flex; justify-content: right;">
            <span class="text-decoration-none">Don't have an account?  <a href="Register.jsp" style="text-decoration:none;">Click Here</a></span>
            </div>
    </div>
</div>
</div>
</body>
</html>