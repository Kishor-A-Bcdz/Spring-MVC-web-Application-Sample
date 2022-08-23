<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body style="background-color: black;">
	<div class="container-fluid">
		<header>
			<div class="row bg-dark">
				<div class="col-3">
					<h3 class="text-light">
						<b>CamSpace</b>
					</h3>
				</div>
				<div class="col-3"></div>
				<div class="col-2" style="margin: 1%">
					
					<a href="contactus" class="btn btn-success">contact us</a>
				</div>
			</div>
		</header>
	</div>
		<div class="container" style="width: 100%; height: 100%;">
			<h3 class="display-3 text-light">Login Here</h3>
			<div class="row justify-content-center">
				<div class="col-2">
					<a class="btn btn-success" href="#adminlogin">Admin login here</a>
				</div>
				<div class="col-2">
					<a class="btn btn-success" href="#userlogin">User login here</a>
				</div>

			</div>
		</div>
		<div>



			<div class="container bg-secondary " id="adminlogin"
				style="margin-top: 20%; margin-bottom: 5%;">
				<h3 class="text-light">admin Login</h3>
				<form class="text-light " action="/adminLogDetails" method="post">
					<div class="form-group">
						<label>Email</label> <input type="email"
							placeholder="enter your email Here" name="adminemail"
							class="form-control">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							placeholder="enter your password Here" name="adminpassword"
							class="form-control">
					</div>
					<input style="margin-left: 90%; margin-bottom: 2%;" type="submit"
						class="btn btn-danger">
				</form>

			</div>
			<br> <br>



			<div class="container bg-secondary " id="userlogin"
				style="margin-top: 20%; margin-bottom: 5%;">
				<h3 class="text-light">User Login</h3>
				<form class="text-light " action="/userLogDetails" method="post">
					<div class="form-group">
						<label>Email</label> <input type="email"
							placeholder="enter your email Here" name="uemail"
							class="form-control">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							placeholder="enter your password Here" name="upassword"
							class="form-control">
					</div>
					<input style="margin-left: 90%; margin-bottom: 2%;" type="submit"
						class="btn btn-danger">
				</form>

			</div>

		</div>
</body>
</html>