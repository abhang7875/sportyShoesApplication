<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Sporty Shoes - Register</title>
<style>
#registerMenu{
	width:40%;
	margin: 10% auto;
}
</style>
</head>x
<body class="d-flex flex-column min-vh-100">
	<nav class="navbar navbar-dark navbar-expand-sm bg-dark fixed-top">
		<jsp:include page="/WEB-INF/view/components/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/components/topbar.jsp"></jsp:include>
	</nav>
		
	<div class="container" id="registerMenu">
		<h1 style="text-align:center">Register</h1>
		<div id="error">${error}</div>
		<form method="post" action="signupaction" id="loginForm"
			name="frmReg">
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fa fa-user"></i></span>
				</div>
				<input id="email" type="email" class="form-control" name="email_id"
					placeholder="Email id*" maxlength=50>
			</div>

			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fa fa-key"></i></span>
				</div>
				<input id="password" type="password" class="form-control"
					name="pwd" placeholder="Password" maxlength=10>
			</div>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fa fa-key"></i></span>
				</div>
				<input id="confirmpassword" type="password" class="form-control"
					name="pwd2" placeholder="Confirm Password" maxlength=10>
			</div>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fa fa-user"></i></span>
				</div>
				<input id="fname" type="text" class="form-control" name="fname"
					placeholder="First Name*" maxlength=25>
			</div>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fa fa-user"></i></span>
				</div>
				<input id="lname" type="text" class="form-control" name="lname"
					placeholder="Last Name*" maxlength=25>
			</div>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fa fa-user"></i></span>
				</div>
				<input id="age" type="number" class="form-control" name="age"
					placeholder="Age*" maxlength=3>
			</div>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text"><i class="fa fa-user"></i></span>
				</div>
				<input id="address" type="text" class="form-control" name="address"
					placeholder="Address*" maxlength=100>
			</div>
			
			<button type="submit" class="btn btn-info">
				<i class="fa fa-sign-in fa-fw"></i> Register
			</button>
		</form>
		<a class="btn" href="login">Already a member? Login</a>
	</div>
	<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</body>
</html>